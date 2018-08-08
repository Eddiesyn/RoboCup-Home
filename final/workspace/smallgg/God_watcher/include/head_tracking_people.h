#ifndef HEAD_TRACKING_PEOPLE
#define HEAD_TRACKING_PEOPLE

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <sensor_msgs/CameraInfo.h>
#include <geometry_msgs/PointStamped.h>
#include <control_msgs/PointHeadAction.h>
#include <boost/shared_ptr.hpp>
#include <opencv2/opencv.hpp>
#include <cmath>
#include <all_msgs/send_flags.h>

typedef actionlib::SimpleActionClient<control_msgs::PointHeadAction> PointHeadClient;
typedef boost::shared_ptr<PointHeadClient> PointHeadClientPtr;
bool start = false;

class Head_tracking_People
{
private:
	ros::NodeHandle nh_;
	ros::NodeHandle priv_nh_;

	std::string camera_frame;
	std::string people_topic, object_topic;
	float fx,fy,cx,cy;
	bool pcok;

	cv::Vec3f Point;

	PointHeadClientPtr pointHeadClient;

	ros::Subscriber sub_people, sub_obj, sub_info;

	void CameraInfo(const sensor_msgs::CameraInfoConstPtr& _info);
	void createPointHeadClient(PointHeadClientPtr& actionClient);

    void HeadCallback(const geometry_msgs::PointStampedConstPtr& _pt);

public:
	Head_tracking_People(ros::NodeHandle nh) : nh_(nh), priv_nh_("~")
	{
		camera_frame = "/xtion_rgb_optical_frame";
		pcok = false;
		people_ok = false;
		object_ok = false;
		Point[0] = 0.0;
		Point[0] = 0.0;
		Point[0] = 0.0;
		sub_info = nh_.subscribe("/xtion/rgb/camera_info", 1, &Head_tracking::CameraInfo, this);
		sub_people = nh_.subscribe("/God_watcher/PersonPoint3D",1, &Head_tracking::HeadCallback, this);

		ROS_INFO("head tracking started..");
	}
	~Head_tracking_People() {};
};

void Head_tracking_People::CameraInfo(const sensor_msgs::CameraInfoConstPtr& _info)
{
	fx = _info->K.at(0);
	fy = _info->K.at(4);
	cx = _info->K.at(2);
	cy = _info->K.at(5);
	pcok = true;
}

void Head_tracking_People::HeadCallback(const geometry_msgs::PointStampedConstPtr& _pt)
{
	if( std::pow(_pt->point.x - Point[0], 2) + std::pow(_pt->point.y - Point[1], 2) > 0.0225 )
	{
		Point[0] = _pt->point.x;
		Point[1] = _pt->point.y;
		Point[2] = _pt->point.z;

		createPointHeadClient( pointHeadClient );
		control_msgs::PointHeadGoal goal;
		goal.target = *_pt;
		goal.pointing_frame = camera_frame;
		goal.pointing_axis.x = 0.0;
		goal.pointing_axis.y = 0.0;
		goal.pointing_axis.z = 1.0;
		goal.min_duration = ros::Duration(1.0);
		goal.max_velocity = 0.25;

		pointHeadClient->sendGoal(goal);

	}
}

void Head_tracking_People::createPointHeadClient(PointHeadClientPtr& actionClient)
{
	actionClient.reset( new PointHeadClient("/head_controller/point_head_action") );
	int iterations = 0, max_iterations = 3;
	// Wait for head controller action server to come up
	while( !actionClient->waitForServer(ros::Duration(2.0)) && ros::ok() && iterations < max_iterations )
	{
		ROS_DEBUG("Waiting for the point_head_action server to come up");
		++iterations;
	}

	if ( iterations == max_iterations )
		throw std::runtime_error("Error in createPointHeadClient: head controller action server not available");
}

#endif
