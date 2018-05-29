#include <opencv2/opencv.hpp>
#include <iostream>

#include <cv_bridge/cv_bridge.h>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include <perception_msgs/Box.h>
#include <perception_msgs/send_flags.h>

// int flag = 0;

class Draw_boundingbox
{
private:
	ros::NodeHandle nh_;
	ros::NodeHandle priv_nh_;

	image_transport::Subscriber sub_;
	image_transport::Publisher image_pub_;
  ros::Publisher box_pub_;

	// cv::RNG rng(12345);

	void imageCallback(const sensor_msgs::ImageConstPtr& img);


public:
	Draw_boundingbox(ros::NodeHandle nh) : nh_(nh), priv_nh_("~")
	{
		image_transport::ImageTransport it(nh_);
		sub_ = it.subscribe("/xtion/rgb/image_rect_color", 1, &Draw_boundingbox::imageCallback, this);
		image_pub_ = it.advertise("/Perception/detection_outcome", 1);
    box_pub_ = nh_.advertise<perception_msgs::Box>("/Perception/bounding_box", 1);
    ROS_INFO("draw_boundingbox initialized...");
	}

	~Draw_boundingbox() {}
};

void Draw_boundingbox::imageCallback(const sensor_msgs::ImageConstPtr& img)
{
	cv::Mat src_rgb = cv_bridge::toCvShare(img, "bgr8")->image;
	cv::Mat src_hsv;
    cv::cvtColor(src_rgb, src_hsv, cv::COLOR_BGR2HSV);

    cv::Mat mask1, mask2;
    cv::inRange(src_hsv, cv::Scalar(0, 70, 50), cv::Scalar(10, 255, 255), mask1);
    cv::inRange(src_hsv, cv::Scalar(170, 70, 50), cv::Scalar(180, 255, 255), mask2);

    cv::Mat mask = mask1 | mask2;
    cv::blur(mask, mask, cv::Size(3,3));

    std::vector<std::vector<cv::Point> > contours;
    std::vector<cv::Vec4i> hierarchy;

    cv::findContours(mask, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE, cv::Point(0, 0));
    std::vector<std::vector<cv::Point> > contours_poly( contours.size() );
  	std::vector<cv::Rect> boundRect;

    cv::Rect rect;

  	for( size_t i = 0; i < contours.size(); i++ )
  	{
    	cv::approxPolyDP( cv::Mat(contours[i]), contours_poly[i], 10, true );
      rect = cv::boundingRect( cv::Mat(contours_poly[i]) );
      if(rect.width > 40 && rect.height > 40)
      {
        boundRect.push_back(rect);
      }
  	}

  	for(size_t i = 0; i < boundRect.size(); i++)
  	{
  		cv::Scalar color = cv::Scalar(50, 50, 50);
  		// tl: left upper point, br: right lower point
  		cv::rectangle(src_rgb, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0);
  	}

  	cv::imshow("Segmented", src_rgb);
    cv::waitKey(30);

    sensor_msgs::ImagePtr image_msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", src_rgb).toImageMsg();
    image_pub_.publish(image_msg);

    cv::Rect box;
    int size = 0;

    if(boundRect.size() == 0)
      ROS_INFO("Nothing found...");
    else
    {
      ROS_INFO("%ld red Objects found...", boundRect.size());
      for( size_t i = 0; i < boundRect.size(); i++ )
      {
        if(boundRect[i].height * boundRect[i].width > size)
        {
          size = boundRect[i].height * boundRect[i].width;
          box = boundRect[i];
        }
      }
      perception_msgs::Box box_msg;
      box_msg.xmin = (int)box.tl().x;
      box_msg.xmax = (int)box.br().x;
      box_msg.ymin = (int)box.tl().y;
      box_msg.ymax = (int)box.br().y;
      box_pub_.publish(box_msg);      
    }
}

// bool getOrder(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res)
// {
//   if(req.flag)
//   {
//     flag = req.flag;

//     res.reply = 1;

//     return true;
//   }
// }

int main(int argc, char *argv[])
{
	ros::init(argc, argv, "draw_boundingbox");
	ros::NodeHandle nh;
  // ros::Rate r(10);
	// ros::ServiceServer service = nh.advertiseService("/tiago/draw_boundingbox", getOrder);

  ROS_INFO("Ready to draw the bounding box....");

  // while(ros::ok())
  // {
  //   if(flag)
  //     break;
  //   ros::spinOnce();
  //   r.sleep();
  // }

  Draw_boundingbox node(nh);

	ros::spin();
	
	return 0;
}
