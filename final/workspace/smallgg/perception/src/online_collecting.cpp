#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <tum_alle_common_msgs/srvPlanning.h>
#include <all_msgs/send_flags.h>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sstream>

using namespace cv;
using namespace std;

bool start = false;

class Online_collecting
{
private:
	ros::NodeHandle nh_;
	ros::NodeHandle priv_nh_;

	ros::ServiceServer command_service;
	ros::ServiceClient finish_client, start_client;

	image_transport::ImageTransport it_;
	image_transport::Subscriber sub_img;

	int i;

        // ros::Rate sub_rate;

	// string positive_name = "mei";
	// string negative_name = "Zhong_Chen";
        // string positive_name = "Luo";
	// bool VoiceCallback(all_msgs::send_flags::Request &req, all_msgs::send_flags::Response &res);
	void ImageCallback(const sensor_msgs::ImageConstPtr& _img);
	string int2str(int i);
public:
        Online_collecting(ros::NodeHandle nh) : nh_(nh), priv_nh_("~"), it_(priv_nh_)
	{
		i = 0;

		// start_client = nh_.serviceClient<all_msgs::send_flags>("/god_watcher/start_collecting");
		finish_client = nh_.serviceClient<all_msgs::send_flags>("/god_watcher/finish_collecting");
		// command_service = nh_.advertiseService("/depth2pointcloud/start", &Online_collecting::VoiceCallback, this);
		sub_img = it_.subscribe("/depth2pointcloud/Segmented_Image", 10, &Online_collecting::ImageCallback, this);

		ROS_INFO("online_collecting ready!");
	}
	~Online_collecting()
	{
		ROS_INFO("collecting data completed!");
	}
	
};

string Online_collecting::int2str(int i)
{
	string s;
	stringstream ss(s);
	ss << i;
	return ss.str();
}

bool VoiceCallback(all_msgs::send_flags::Request &req, all_msgs::send_flags::Response &res)
{
	if(req.flag)
	{
		res.reply = 1;
		start = true;

		return true;
	}
}

void Online_collecting::ImageCallback(const sensor_msgs::ImageConstPtr& _img)
{
                if(i % 50 == 0)
		{
			ROS_INFO("Detecting..");
		}
		cv_bridge::CvImagePtr cv_ptr;
		cv_ptr = cv_bridge::toCvCopy(_img, sensor_msgs::image_encodings::BGR8);

                imwrite( string("/home/atHomeSS18/test_workspace/src/train_data/operator")+string("/img_") + int2str(i) + ".jpg", cv_ptr->image);
		i++;
                //sub_rate.sleep();
                if(i > 750)
		{
			all_msgs::send_flags finish_flag;
			finish_flag.request.flag = 1;
			finish_client.call(finish_flag);
			this->~Online_collecting();
		}
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "online_collecting");

	ros::ServiceServer start_service;

	ros::NodeHandle nh;

	ros::Rate r(10);

	start_service = nh.advertiseService("/online_collecting/start", VoiceCallback);

	while(ros::ok())
	{
		if(start)
		{
			break;
		}
		ros::spinOnce();
		r.sleep();
	}

	Online_collecting online_collecting(nh);
	ros::spin();

	return 0;
}

