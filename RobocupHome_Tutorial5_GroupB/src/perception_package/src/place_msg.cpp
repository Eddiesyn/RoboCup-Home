#include <ros/ros.h>
#include <geometry_msgs/Point.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <sensor_msgs/PointCloud2.h>
#include <perception_msgs/Box.h>
#include <perception_msgs/send_flags.h>

#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <std_msgs/Header.h>
#include <geometry_msgs/PoseStamped.h>
#include <string>

bool getTransform(const std::string& refFrame, const std::string& childFrame, tf::StampedTransform& transform, tf::TransformListener& _tfListener);
bool getOrder(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res);
int flag = 0;

int main(int argc, char** argv)
{
    ros::init(argc, argv, "place_msg");
    ros::NodeHandle nh;
    ros::Rate r(10);

    ros::ServiceServer service = nh.advertiseService("/tiago/send_place_msg", getOrder);
    ROS_INFO("ready to send the place message....");

    while(ros::ok())
    {
      if(flag)
        break;
      ros::spinOnce();
      r.sleep();
    }


    ros::Publisher pub = nh.advertise<geometry_msgs::PoseStamped>("/Perception/Place_Pose", 100);
    tf::Transform transform;
    tf::TransformBroadcaster br;
    tf::StampedTransform place_Transform;
    tf::TransformListener tfListener;
    ros::Time time_stamp;

    std::string place_frame = "place_frame";
    std::string camera_frame = "xtion_rgb_optical_frame";
    std::string reference_frame = "/base_footprint";

    while(ros::ok())
    {
        time_stamp = ros::Time::now();
        transform.setOrigin(tf::Vector3(0, 0, 0));
        transform.setRotation(tf::Quaternion().getIdentity());
        br.sendTransform(tf::StampedTransform(transform, time_stamp, camera_frame, place_frame));

        getTransform(reference_frame, place_frame, place_Transform, tfListener);
        tf::Transform new_transform = static_cast<tf::Transform>(place_Transform);
        geometry_msgs::PoseStamped place_pose;
        tf::poseTFToMsg(new_transform, place_pose.pose);
        place_pose.header.frame_id = reference_frame;
        place_pose.header.stamp = time_stamp;
        pub.publish(place_pose);

        ros::spinOnce();
        r.sleep();
    }

    return 0;
}

bool getTransform(const std::string& refFrame, const std::string& childFrame, tf::StampedTransform& transform, tf::TransformListener& _tfListener)
{
  std::string errMsg;

  if ( !_tfListener.waitForTransform(refFrame,childFrame,ros::Time(0),ros::Duration(0.5),ros::Duration(0.01),&errMsg) )
  {
    ROS_ERROR_STREAM("Unable to get pose from TF: " << errMsg);
    return false;
  }
  else
  {
    try
    {
      _tfListener.lookupTransform( refFrame, childFrame,
                                     ros::Time(0),                  //get latest available
                                     transform);
    }
    catch ( const tf::TransformException& e)
    {
      ROS_ERROR_STREAM("Error in lookupTransform of " << childFrame << " in " << refFrame);
      return false;
    }

  }
  return true;
}

bool getOrder(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res)
{
  if(req.flag)
  {
    flag = req.flag;

    res.reply = 1;

    return true;
  }
}
