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


int flag = 0;

class From2Dto3D
{

    private:
      //! The node handle
      ros::NodeHandle nh_;
      //! Node handle in the private namespace
      ros::NodeHandle priv_nh_;

      //! Define publishers and subscribers
      ros::Publisher pub_;

      ros::Subscriber sub1_;
      ros::Subscriber sub2_;

      ros::ServiceServer service;


      int box_x = 0;
      int box_y = 0;

      std::string reference_frame;
      std::string camera_frame;
//      std::string point_frame;

      //! A tf transform listener if needed
      tf::TransformListener _tfListener;
//      tf::TransformBroadcaster br;

      //------------------ Callbacks -------------------

      void processCloud(const sensor_msgs::PointCloud2ConstPtr& pc);

      void processBoxes(const perception_msgs::BoxConstPtr& bx);

      bool is_nan(float d);

//      bool getTransform(const std::string& refFrame, const std::string& childFrame, tf::StampedTransform& transform);


    public:
      //! Subscribes to and advertises topics
      From2Dto3D(ros::NodeHandle nh) : nh_(nh), priv_nh_("~"), reference_frame("/base_footprint"), camera_frame("xtion_rgb_optical_frame")
      {

        sub1_ = nh_.subscribe<perception_msgs::Box>("/Perception/bounding_box", 1, &From2Dto3D::processBoxes, this);

        sub2_ = nh_.subscribe<sensor_msgs::PointCloud2>("/xtion/depth_registered/points", 1, &From2Dto3D::processCloud, this);

        pub_ = nh_.advertise<geometry_msgs::PoseStamped>("/Perception/Pick_Pose", 1);

        ROS_INFO("from2Dto3D initialized ...");

      }

      ~From2Dto3D() {}
};

//bool From2Dto3D::getTransform(const std::string& refFrame, const std::string& childFrame, tf::StampedTransform& transform)
//{
//  std::string errMsg;

////  ROS_WARN_STREAM(__LINE__);

//  if ( !_tfListener.waitForTransform(refFrame,childFrame, ros::Time::now(),ros::Duration(5),ros::Duration(0.01),&errMsg) )
//  {
//    ROS_ERROR_STREAM("Unable to get pose from TF: " << errMsg);
//    return false;
//  }
//  else
//  {
//    try
//    {
//       //   ROS_WARN_STREAM(__LINE__);
//      _tfListener.lookupTransform( refFrame, childFrame,
//                                     ros::Time::now(),                  //get latest available
//                                     transform);
//    }
//    catch ( const tf::TransformException& e)
//    {
//      ROS_ERROR_STREAM("Error in lookupTransform of " << childFrame << " in " << refFrame);
//      return false;
//    }

//  }
//  return true;
//}

bool From2Dto3D::is_nan(float d)
{
  if(d == d)
    return false;

  return true;
}


void From2Dto3D::processCloud(const sensor_msgs::PointCloud2ConstPtr& pc)
{    
    // store local data copy or shared, depending on the message
  if( (pc->width * pc->height) == 0 )
    return;

  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_ (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::fromROSMsg( *pc, *cloud_ );

  int position = box_y*cloud_->width + box_x;

  float x = cloud_->points[ position ].x;
  float y = cloud_->points[ position ].y - 0.02;
  float z = cloud_->points[ position ].z + 0.03;

//  _tfListener(pc->header.stamp);

  if(is_nan(x) || is_nan(y) || is_nan(z))
  {
    ROS_INFO("Cannot find pcl in center,,,,");
  }
  else
  {
//    tf::StampedTransform stTransform;
//    getTransform(reference_frame, camera_frame, stTransform);

//    tf::Transform final_transform = static_cast<tf::Transform>(stTransform);

    geometry_msgs::PoseStamped poseMsg;
//    tf::poseTFToMsg(final_transform, poseMsg.pose);

      geometry_msgs::PointStamped Point_in, Point_out;
      Point_in.point.x = x;
      Point_in.point.y = y;
      Point_in.point.z = z;
      //Point_in.header = pc->header;
      Point_in.header.frame_id = camera_frame;
      Point_in.header.stamp = ros::Time(0);//pc->header.stamp;
      _tfListener.transformPoint(reference_frame, Point_in, Point_out);

      ROS_INFO("tf information found.");
      poseMsg.pose.position = Point_out.point;
      poseMsg.pose.orientation.x = 0;
      poseMsg.pose.orientation.y = 0;
      poseMsg.pose.orientation.z = 0;
      poseMsg.pose.orientation.w = 1;
      poseMsg.header = Point_out.header;
      poseMsg.header.stamp = ros::Time(pc->header.stamp);

      pub_.publish(poseMsg);
  }
    
}

void From2Dto3D::processBoxes(const perception_msgs::BoxConstPtr& bx)
{
  box_x = (bx->xmin + bx->xmax) / 2;
  box_y = (bx->ymin + bx->ymax) / 2;

}

bool getOrder(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res)
{
//    ROS_WARN_STREAM("Service is on .."<<__LINE__);

  if(req.flag)
  {
//      ROS_WARN_STREAM("service works" <<__LINE__);

    flag = req.flag;

    res.reply = 1;

    return true;
  }
}



int main(int argc, char** argv)
{
    ros::init(argc, argv, "from2dto3d");
    ros::NodeHandle nh;
    ros::Rate r(10);
    ros::ServiceServer service = nh.advertiseService("/tiago/from_2d_to_3d", getOrder);

    ROS_INFO("Ready to start transition from 2d to 3d.....");

    while(ros::ok())
    {
//        ROS_WARN_STREAM(__LINE__);

      if(flag) break;
//      ROS_WARN_STREAM(__LINE__);
      ros::spinOnce();
//      ROS_WARN_STREAM(__LINE__);
      r.sleep();
//      ROS_WARN_STREAM(__LINE__);
    }

    From2Dto3D node(nh);
    ros::spin();
    return 0;
}

