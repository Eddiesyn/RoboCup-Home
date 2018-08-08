#include <darknet_ros_msgs/BoundingBoxes.h>
#include <ros/ros.h>
#include <all_msgs/Object.h>
#include <all_msgs/ObjectArray.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <tf/transform_listener.h>
#include <std_srvs/Empty.h>

using namespace cv;
using namespace std;
using namespace cv::ml;

class Object_sending
{
private:
	ros::NodeHandle nh_;
	ros::NodeHandle priv_nh_;

	image_transport::ImageTransport it_;
	image_transport::Subscriber sub_img;

	ros::Subscriber sub_camInfo, sub_box;
	ros::Publisher pub_obj;
        tf::TransformListener listener_;

	float fx, fy, cx, cy;
	bool pcok, bxok;

	Ptr<SVM> svm;

	Vec3f NAN_pt = Vec3f(std::numeric_limits<float>::quiet_NaN (),
                    std::numeric_limits<float>::quiet_NaN (),
                    std::numeric_limits<float>::quiet_NaN ());

	darknet_ros_msgs::BoundingBoxes Boxes;

	void BoxesCallback(const darknet_ros_msgs::BoundingBoxesConstPtr& bx);
	void depthCameraInfo(const sensor_msgs::CameraInfoConstPtr& _info);
	void processDepth(const sensor_msgs::ImageConstPtr& _img);

	Vec3f getDepth(const Mat& depthImage, int x, int y, float cx, float cy, float fx, float fy);
	float predict(Mat& img);
	Mat box_regression(Mat& img);
	vector<float> getCM(Mat& img);
	float getSkewness(Mat& img, Scalar& mean, Scalar& std);

	pthread_mutex_t count_mutex;

public:
	Object_sending(ros::NodeHandle nh) : nh_(nh), priv_nh_("~"), it_(priv_nh_)
	{
		pcok = false;
		bxok = false;

		count_mutex = PTHREAD_MUTEX_INITIALIZER;

		sub_camInfo = nh_.subscribe("/xtion/rgb/camera_info", 10, &Object_sending::depthCameraInfo, this);
		sub_box = nh_.subscribe("/darknet_ros/bounding_boxes", 10, &Object_sending::BoxesCallback, this);

		sub_img = it_.subscribe("/xtion/depth_registered/image_raw", 10, &Object_sending::processDepth, this);

		pub_obj = priv_nh_.advertise<all_msgs::ObjectArray>("ObjectArray", 10);

		svm = SVM::load("svm_trained.xml");

		ROS_INFO("Object sending...");
	}
	~Object_sending() {};
		bool test(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);

};

Mat box_regression(Mat& img)
{
	Mat gray;
	cvtColor(img, gray, cv::COLOR_BGR2GRAY);
    vector<std::vector<cv::Point> > contours;
    vector<cv::Vec4i> hierarchy;

    findContours(gray, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE, cv::Point(0, 0));
    vector<vector<Point> > contours_poly( contours.size() );
  	vector<Rect> boundRect( contours.size() );

  	for( uint i = 0; i < contours.size(); i++ )
  	{
    	approxPolyDP( Mat(contours[i]), contours_poly[i], 20, true );
    	boundRect[i] = boundingRect( Mat(contours_poly[i]) );
  	}

  	Rect box;
    int size = 0;

	for( uint i = 0; i < boundRect.size(); i++ )
	{
		if(boundRect[i].height * boundRect[i].width > size)
		{
	  	size = boundRect[i].height * boundRect[i].width;
	  	box = boundRect[i];
		}
	}
      
    Mat dst;
    dst = img(box);

    return dst;
}

float getSkewness(Mat& img, Scalar& mean, Scalar& std)
{
	float skew;
	float sum = 0.0;
	for(uint i = 0; i < img.rows; i++)
	{
		for(uint j = 0; j < img.cols; j++)
		{
			sum += pow(img.at<uint8_t>(i,j) - mean.val[0], 3);
		}
	}
	skew = sum/(img.rows * img.cols)/pow(std.val[0], 3);

	return skew;
}

cv::Vec3f Object_sending::getDepth(const cv::Mat & depthImage, int x, int y, float cx, float cy, float fx, float fy)
{
    if(!(x >=0 && x<depthImage.cols && y >=0 && y<depthImage.rows))
    {
        ROS_WARN("Point must be inside the image (x=%d, y=%d), image size=(%d,%d)", x, y, depthImage.cols, depthImage.rows);
        return cv::Vec3f(
                    std::numeric_limits<float>::quiet_NaN (),
                    std::numeric_limits<float>::quiet_NaN (),
                    std::numeric_limits<float>::quiet_NaN ());
    }

    cv::Vec3f pt;

    // Use correct principal point from calibration
    float center_x = cx; //cameraInfo.K.at(2)
    float center_y = cy; //cameraInfo.K.at(5)

    bool isInMM = depthImage.type() == CV_16UC1; // is in mm?

    // Combine unit conversion (if necessary) with scaling by focal length for computing (X,Y)
    float unit_scaling = isInMM?0.001f:1.0f;
    float constant_x = unit_scaling / fx; //cameraInfo.K.at(0)
    float constant_y = unit_scaling / fy; //cameraInfo.K.at(4)
    float bad_point = std::numeric_limits<float>::quiet_NaN ();

    float depth;
    bool isValid;
    if(isInMM)
    {
        depth = (float)depthImage.at<uint16_t>(y,x);
        isValid = depth != 0.0f;
    }
    else
    {
        depth = depthImage.at<float>(y,x);
        isValid = std::isfinite(depth);
    }

    // Check for invalid measurements
    if (!isValid)
    {
        pt[0] = pt[1] = pt[2] = bad_point;
    }
    else
    {
        // Fill in XYZ
        pt[0] = (float(x) - center_x) * depth * constant_x;
        pt[1] = (float(y) - center_y) * depth * constant_y;
        pt[2] = depth*unit_scaling;

    }
    return pt;
}

void Object_sending::depthCameraInfo(const sensor_msgs::CameraInfoConstPtr& _info)
{
    fx = _info->K.at(0);
    fy = _info->K.at(4);
    cx = _info->K.at(2);
    cy = _info->K.at(5);
    pcok = true;
}

void Object_sending::BoxesCallback(const darknet_ros_msgs::BoundingBoxesConstPtr& bx)
{
	Boxes = *bx;
	bxok = true;
}

void Object_sending::processDepth(const sensor_msgs::ImageConstPtr& _img)
{
	pthread_mutex_lock( &this->count_mutex );
	cv_bridge::CvImagePtr in_imgPtr = cv_bridge::toCvCopy(_img, sensor_msgs::image_encodings::TYPE_32FC1);
	if(pcok && bxok)
	{
		Vec3f point3D;
		// geometry_msgs::PointStamped point;
		all_msgs::ObjectArray obj_arr;
		obj_arr.header = _img->header;
		all_msgs::Object obj;

		for(uint i = 0; i < Boxes.bounding_boxes.size(); i++)
		{
			if(Boxes.bounding_boxes[i].probability >= 0.6)
			{			
				int x_m = (Boxes.bounding_boxes[i].xmin + Boxes.bounding_boxes[i].xmax) / 2;
				int y_m = (Boxes.bounding_boxes[i].ymin + Boxes.bounding_boxes[i].ymax) / 2;

				point3D = getDepth(in_imgPtr->image, x_m, y_m, cx, cy, fx, fy);

				if(point3D != NAN_pt)
				{
					obj.id = i;
					obj.cam_pose.point.x = point3D[0];
					obj.cam_pose.point.y = point3D[1];
					obj.cam_pose.point.z = point3D[2];
					obj.cam_pose.header = _img->header;
					obj.width = Boxes.bounding_boxes[i].xmax - Boxes.bounding_boxes[i].xmin;
					obj.length = Boxes.bounding_boxes[i].ymax - Boxes.bounding_boxes[i].ymin;
					obj.semantic_confidence = Boxes.bounding_boxes[i].probability;
					obj.semantic_id = 11;
					obj.is_track = (bool) svm.
					if(i == 0) obj.is_target = true;
					else obj.is_target = false;
					ros::Time now = ros::Time::now();
    				ros::Time past = now - ros::Duration(508.0);
                    try{
                        listener_.transformPoint("map", past,
                                                 obj.cam_pose,"xtion_rgb_optical_frame",
                                                 obj.world_pose);

                    }catch(tf::TransformException& ex)
                    {
                        ROS_ERROR("Received an exception trying to transform a point from "
                                  "\"camero link\" to \"base_link\": %s",ex.what());
                    }

                    // try{
                    //     listener_.transformPoint("base_link", past,
                    //                              obj.cam_pose,"xtion_rgb_optical_frame",
                    //                              obj.cam_pose);

                    // }catch(tf::TransformException& ex)
                    // {
                    //     ROS_ERROR("Received an exception trying to transform a point from "
                    //               "\"camero link\" to \"base_link\": %s",ex.what());
                    // }

					obj_arr.list.push_back(obj);
				}else{
					ROS_INFO_STREAM("No point was detected, because: \nx: "<<point3D[0]<<"y: "<<point3D[1]<<"z: "<<point3D[2]);
				}
			}
		}

		pub_obj.publish(obj_arr);
	}
	pthread_mutex_unlock( &this->count_mutex );
}

bool Object_sending::test(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
	ros::Rate r(10);
	int c = 0;
	while(ros::ok())
	{
		ROS_INFO("spin_test");
		c++;
		if (c>50) break;
	}
	return true;
}


int main(int argc, char** argv)
{
	ros::init(argc, argv, "object_sending");

	ros::NodeHandle nh;
	Object_sending object_sending(nh);

	ros::ServiceServer service_test = nh.advertiseService("/test/test", &Object_sending::test, &object_sending);

	ros::spin();

	return 0;
}
