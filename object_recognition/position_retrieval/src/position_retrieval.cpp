#include <ros/ros.h>
#include <ros/console.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <geometry_msgs/Point.h>
#include <std_msgs/Char.h>

#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <tf/transform_listener.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

// PCL specific includes
#include <pcl_ros/point_cloud.h> // enable pcl publishing
#include <sensor_msgs/PointCloud2.h>

#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl_ros/point_cloud.h>

#include <darknet_ros_msgs/BoundingBoxes.h>
#include <vector>
#include <string>
#include <iostream>


class Position_retrieval
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

      int box_x = 0;
      int box_y = 0;
      int x_min = 0;
      int y_min = 0;

      std::string id;

      //! A tf transform listener if needed
//      tf::TransformListener listener_;


      //------------------ Callbacks -------------------

      void processCloud(const sensor_msgs::PointCloud2ConstPtr& pc);

      void processBoxes(const darknet_ros_msgs::BoundingBoxesConstPtr& bx);

      bool is_nan(float d);


    public:
      //! Subscribes to and advertises topics
      Position_retrieval(ros::NodeHandle nh) : nh_(nh), priv_nh_("~")
      {

        sub1_ = nh_.subscribe<darknet_ros_msgs::BoundingBoxes>("/darknet_ros/bounding_boxes", 1, &Position_retrieval::processBoxes, this);

        sub2_ = nh_.subscribe<sensor_msgs::PointCloud2>("/xtion/depth_registered/points", 1, &Position_retrieval::processCloud, this);

        pub_ = nh_.advertise<geometry_msgs::Point>("/My3dPosition", 1);

        ROS_INFO("from2Dto3D initialized ...");

        std::cout << "Type the object you want to find...[bottle, cup or cokecan]" << std::endl;
        std::cin >> id;

      }

      ~Position_retrieval() {}
};

bool Position_retrieval::is_nan(float d)
{
  if(d == d)
    return false;

  return true;
}


void Position_retrieval::processCloud(const sensor_msgs::PointCloud2ConstPtr& pc)
{    
    // store local data copy or shared, depending on the message
  if( (pc->width * pc->height) == 0 )
    return;

  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_ (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::fromROSMsg( *pc, *cloud_ );

//  pcl::PointXYZ pt = cloud_.at(box_y, box_x);

  int position = box_y*cloud_->width + box_x;
  geometry_msgs::Point msg;

  float x = cloud_->points[ position ].x;
  float y = cloud_->points[ position ].y;
  float z = cloud_->points[ position ].z;


  if(is_nan(x) || is_nan(y) || is_nan(z))
  {
    ROS_INFO("Cannot find pcl in center, publish the point at upper left");

    position = y_min*cloud_->width + x_min;
    x = cloud_->points[position].x;
    y = cloud_->points[position].y;
    z = cloud_->points[position].z;
  }

  msg.x = x;
  msg.y = y;
  msg.z = z;

  ROS_INFO("The position is: %lf, %lf, %lf", msg.x, msg.y, msg.z);


  pub_.publish(msg);
    
}

void Position_retrieval::processBoxes(const darknet_ros_msgs::BoundingBoxesConstPtr& bx)
{
  for(int i=0; i<bx->bounding_boxes.size(); i++)
  {
    if(bx->bounding_boxes[i].Class == id && bx->bounding_boxes[i].probability > 0.5)
    {
      x_min = bx->bounding_boxes[i].xmin;
      y_min = bx->bounding_boxes[i].ymin;
      box_x = (bx->bounding_boxes[i].xmax + bx->bounding_boxes[i].xmin) / 2;
      box_y = (bx->bounding_boxes[i].ymax + bx->bounding_boxes[i].ymin) / 2;

      break;
    }
    else
    {
      if(i == bx->bounding_boxes.size()-1)
      {
          ROS_INFO("Can't find the object you specify...");
          ros::shutdown();
      }
      continue;
    }
  }
}



int main(int argc, char** argv)
{
    ros::init(argc, argv, "position_retrieval");
    ros::NodeHandle nh;
    Position_retrieval node(nh);
    ros::spin();
    return 0;
}


