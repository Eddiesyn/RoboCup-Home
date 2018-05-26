#ifndef SIMPLE_PLAN_NAVI
#define SIMPLE_PLAN_NAVI

#include <ros/ros.h>
// #include <std_srvs/Empty.h>
#include <geometry_msgs/Twist.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <string>
#include <vector>
#include <map>

namespace SimplePlanNavi
{
	const std::string FRAME_ID = "map";
	const char NAME[3] = {'A', 'B', 'C'};
	double px[3] = {-2.5, -3.75, -0.5};
	double py[3] = {-2.4, -6.4, -12.1};
	double oz[3] = {0.0, 0.9, 0.1};
	double ow[3] = {1, 0.0, 0.99};

  void rotate()
  {
  	ros::NodeHandle nh;
  	ros::Rate r(10);
  	ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/mobile_base_controller/cmd_vel", 100);
  	geometry_msgs::Twist msg;

  	msg.linear.x = 0.3;
  	msg.angular.z = 2;

  	int c = 0;
  	while(ros::ok())
  	{
  		c++;
  		if(c > 110) break;
  		pub.publish(msg);
  		ros::spinOnce();
  		r.sleep();
  	}
  }

  void movearm( std::map<std::string, double> target_position )
  {
    ros::NodeHandle nh;
  	ros::AsyncSpinner spinner(1);
  	spinner.start();
  	std::vector<std::string> torso_arm_joint_names;
  	//select group of joints
  	moveit::planning_interface::MoveGroupInterface group_arm_torso("arm_torso");
  	//choose your preferred planner
  	group_arm_torso.setPlannerId("SBLkConfigDefault");
		torso_arm_joint_names = group_arm_torso.getJoints();

  	group_arm_torso.setStartStateToCurrentState();
  	group_arm_torso.setMaxVelocityScalingFactor(1.0);

  	for (unsigned int i = 0; i < torso_arm_joint_names.size(); ++i)
    	if ( target_position.count(torso_arm_joint_names[i]) > 0 )
    	{
      		ROS_INFO_STREAM("\t" << torso_arm_joint_names[i] << " goal position: " << target_position[torso_arm_joint_names[i]]);
      		group_arm_torso.setJointValueTarget(torso_arm_joint_names[i], target_position[torso_arm_joint_names[i]]);
    	}

  	moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  	group_arm_torso.setPlanningTime(5.0);
  	bool success = bool(group_arm_torso.plan(my_plan));

  	if ( !success )
    	throw std::runtime_error("No plan found");

  	ROS_INFO_STREAM("Plan found in " << my_plan.planning_time_ << " seconds");

  	// Execute the plan
  	ros::Time start = ros::Time::now();

  	group_arm_torso.move();

  	ROS_INFO_STREAM("Motion duration: " << (ros::Time::now() - start).toSec());

  	spinner.stop();

  	// return EXIT_SUCCESS;
  }

}

#endif
