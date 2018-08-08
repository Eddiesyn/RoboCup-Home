#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/CameraInfo.h>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <geometry_msgs/PointStamped.h>

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>

#include <all_msgs/Boxes.h>

using namespace cv;
using namespace std;

class DepthProcessing
{
private:
    ros::NodeHandle nh_;
    ros::NodeHandle priv_nh_;

    ros::Subscriber sub_camInfo;
    ros::Publisher pub_obj;

    message_filters::Subscriber<sensor_msgs::Image> raw_image_sub;
    message_filters::Subscriber<sensor_msgs::Image> rect_image_sub;
    message_filters::Subscriber<all_msgs::Boxes> boxes_sub;

    Ptr<SVM> svm;

    bool pcok;



    Vec3f getDepth(const Mat& depthImage, int x, int y, float cx, float cy, float fx, float fy);

    void depthCameraInfo(const sensor_msgs::CameraInfoConstPtr& _info);
    void BigCallback(const sensor_msgs::ImageConstPtr& img1, const sensor_msgs::ImageConstPtr& img2, const all_msgs::BoxesConstPtr& bx);
	Mat box_regression(Mat& img);
	vector<float> getCM(Mat& img);
	float getSkewness(Mat& img, Scalar& mean, Scalar& std);
	float predict(Mat& img);


public:
	DepthProcessing(ros::NodeHandle nh) : nh_(nh), priv_nh_("~"), it(nh),
	raw_image_sub(it, "/xtion/depth_registered/image_raw", 1), rect_image_sub(it, "/xtion/rgb/image_rect_color", 1), boxes_sub(nh, "/God_watcher/Boxes", 1)
	{
		pcok = false;

		sub_camInfo = nh_.subscribe("/xtion/rgb/camera_info", 10, &DepthProcessing::depthCameraInfo, this);
		TimeSynchronizer<sensor_msgs::Image, ,sensor_msgs::Image, all_msgs::Boxes> sync(raw_image_sub, rect_image_sub, boxes_sub, 10);
		sync.registerCallback(&DepthProcessing::BigCallback, this);

		pub_obj = priv_nh_.advertise<all_msgs::ObjectArray>("ObjectArray", 10);

		svm.load("svm_trained.xml");

		ROS_INFO("DepthProcessing begins....");
	}

	~DepthProcessing();
	
};

float DepthProcessing::predict( Mat& img )
{
    Mat response, hsv;
    cvtColor(box_regression(img), hsv, CV_BGR2HSV);
    Mat FeatureMat(getCM(hsv), true);
    FeatureMat = FeatureMat.reshape(0,1);
    svm->predict(FeatureMat, response);

    return response.at<float>(0,0);
}

Mat DepthProcessing::box_regression(Mat& img)
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

vector<float> DepthProcessing::getCM(Mat& img)
{
	vector<Mat> HSV(3);
	vector<float> CM;
	split(img, HSV);
	Scalar h_mean, h_std, s_mean, s_std, v_mean, v_std;
	meanStdDev(HSV[0], h_mean, h_std);
	meanStdDev(HSV[1], s_mean, s_std);
	meanStdDev(HSV[2], v_mean, v_std);
	CM.push_back(h_mean.val[0]);
	CM.push_back(s_mean.val[0]);
	CM.push_back(v_mean.val[0]);
	CM.push_back(h_std.val[0]);
	CM.push_back(s_std.val[0]);
	CM.push_back(v_std.val[0]);

	float h_skew, s_skew, v_skew;
	h_skew = getSkewness(HSV[0], h_mean, h_std);
	s_skew = getSkewness(HSV[1], s_mean, s_std);
	v_skew = getSkewness(HSV[2], v_mean, v_std);

	CM.push_back(h_skew);
	CM.push_back(s_skew);
	CM.push_back(v_skew);

	return CM;

}

float DepthProcessing::getSkewness(Mat& img, Scalar& mean, Scalar& std)
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

void DepthProcessing::CameraInfo(const sensor_msgs::CameraInfoConstPtr& info)
{
    fx = _info->K.at(0);
    fy = _info->K.at(4);
    cx = _info->K.at(2);
    cy = _info->K.at(5);
    pcok = true;	
}

cv::Vec3f Yolo_roi::getDepth(const cv::Mat & depthImage, int x, int y, float cx, float cy, float fx, float fy)
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

void DepthProcessing::BigCallback(const sensor_msgs::ImageConstPtr& img1, const sensor_msgs::ImageConstPtr& img2, const all_msgs::BoxesConstPtr& bx)
{
	cv_bridge::CvImagePtr img1_Ptr = cv_bridge::toCvCopy(img1, sensor_msgs::image_encodings::TYPE_32FC1);
	cv_bridge::CvImagePtr img2_Ptr = cv_bridge::toCvCopy(img2, sensor_msgs::image_encodings::TYPE_32FC1);

	// mask = Mat::zeros(img1_Ptr->image.size(), CV_8UC1);
	// mask = Mat::zeros(img2_Ptr->image.size(), CV_8UC1);

	if(pcok)
	{
		Vec3f point3D;
		geometry_msgs::PointStamped point;
	    all_msgs::Object obj;
    	all_msgs::ObjectArray obj_arr;
    	Mat dst;

		for(int i = 0; i < bx->Boxes.size(); i++)
		{
			mask = Mat::zeros(img1_Ptr->image.size(), CV_8UC1);
			int x = Boxes[i].x + Boxes[i].width / 2;
			int y = Boxes[i].y + Boxes[i].height / 2;
	        for(uint j = Boxes[i].x; j < Boxes[i].x + Boxes[i].width; j++)
	        {
	            for(uint i = Boxes[i].y; i < Boxes[i].y + Boxes[i].height; i++)
	            {
	                point3D = getDepth(in_imgPtr->image, j, i , cx, cy, fx, fy);
	                if(j == x && i == y)
	                {
						obj.cam_pose.point.x = point3D[0];
						obj.cam_pose.point.y = point3D[1];
						obj.cam_pose.point.z = point3D[2];
	                }
	                if(point3D[2] < dd)
	                    mask.at<uint8_t>(i, j) = 1;
	            }
	        }
			point3D = getDepth(in_imgPtr->image, x, y , cx, cy, fx, fy);
			obj.id = i;
			obj.cam_pose.header = img1->header;
			obj.width = Boxes[i].width;
			obj.height = Boxes[i].height;
			obj.semantic_confidence = Boxes[i].probability;
			obj.semantic_id = 11;
			img2_Ptr->image.copyTo(dst, mask);

			obj.is_track = (bool) (int) predict(dst);
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
            obj_arr.list.push_back(obj);
		}
		pub_obj.publish(obj_arr);
	}
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "depthprocessing");
	ros::NodeHandle nh;

	DepthProcessing depthprocessing(nh);

	ros::spin();
	return 0;
}