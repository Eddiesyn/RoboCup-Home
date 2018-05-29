#ifndef GOD_WATCHER_H
#define GOD_WATCHER_H

/*********************************************************************
* ROS INCLUDES
********************************************************************/
#include <ros/ros.h>

#include <std_msgs/String.h>
#include <perception_msgs/send_flags.h>
#include <std_srvs/Empty.h>


class God_watcher{
private:
    //int FLAG_local;

//    bool FLAG_nav_c;

//    bool FLAG_percrption;

//    bool FLAG_manipulation;

    //ros::NodeHandle nh_;
    //ros::NodeHandle priv_nh_;



public:
    God_watcher();
    ~God_watcher();
    bool FLAG_nav_catch;
    bool FLAG_nav_put;
    bool FLAG_manipulation_pick;
    bool set_flag_catch(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res);
    bool set_flag_put(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res);
//    bool get_FLAG_nav_catch();
//    bool get_FLAG_nav_put();
};


#endif
