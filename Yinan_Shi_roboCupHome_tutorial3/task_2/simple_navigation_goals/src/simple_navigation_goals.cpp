#include <simple_navigation_goals/simple_plan_navi.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <std_srvs/Empty.h>
#include <ros/ros.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv)
{
	ros::init(argc, argv, "simple_navigation_goals");
	ros::NodeHandle n;
	ros::Rate r(60);

	ros::ServiceClient client1 = n.serviceClient<std_srvs::Empty>("/global_localization");
  	ros::ServiceClient client2 = n.serviceClient<std_srvs::Empty>("/move_base/clear_costmaps");

  	std_srvs::Empty srv;
        std::cout << "Waiting to beginn..." << std::endl;

        ros::Duration(15).sleep();
  	std::cout << "Start amcl..." << std::endl;
  	client1.call(srv);

  	ros::Duration(1.5).sleep();
  	std::cout << "Start move to localize..." << std::endl;
  	SimplePlanNavi::rotate();

  	ros::Duration(1.5).sleep();
  	std::cout << "Clear the costmaps..." << std::endl;
  	client2.call(srv);

  	std::map<std::string, double> target_position1;
	target_position1["torso_lift_joint"] = 0.0;
	target_position1["arm_1_joint"] = 2.7;
  	target_position1["arm_2_joint"] = 0.2;
  	target_position1["arm_3_joint"] = -2.1;
  	target_position1["arm_4_joint"] = 2.0;
  	target_position1["arm_5_joint"] = 1.0;
  	target_position1["arm_6_joint"] = -0.8;
  	target_position1["arm_7_joint"] = 0.0;

  	std::map<std::string, double> target_position2;
  	target_position2["torso_lift_joint"] = 0.0;
        target_position2["arm_1_joint"] = 0.5;
        target_position2["arm_2_joint"] = -1.5;
        target_position2["arm_3_joint"] = -0.5;
        target_position2["arm_4_joint"] = 2;
        target_position2["arm_5_joint"] = 1;
        target_position2["arm_6_joint"] = -1.4;
  	target_position2["arm_7_joint"] = 0.0;

  	std::cout << "Move arm to the first pose..." << std::endl;
  	SimplePlanNavi::movearm(target_position1);

  	std::cout << "Move arm to the second pose..." << std::endl;
  	SimplePlanNavi::movearm(target_position2);

  	ros::Duration(1.5).sleep();
  	std::cout << "Start the patrol..." << std::endl;

  	MoveBaseClient ac("move_base", true);
  	while(!ac.waitForServer(ros::Duration(5.0))){
    	ROS_INFO("Waiting for the move_base action server to come up");
  	}

  	move_base_msgs::MoveBaseGoal goal;
  	while(ros::ok())
  	{
    	for(int i=0; i<4; i++)
    	{
      		if(i == 3) i = 0;
      		goal.target_pose.header.frame_id = SimplePlanNavi::FRAME_ID;
      		goal.target_pose.header.stamp = ros::Time::now();

      		goal.target_pose.pose.position.x = SimplePlanNavi::px[i];
      		goal.target_pose.pose.position.y = SimplePlanNavi::py[i];
      		goal.target_pose.pose.orientation.z = SimplePlanNavi::oz[i];
      		goal.target_pose.pose.orientation.w = SimplePlanNavi::ow[i];

      		ROS_INFO("Sending goal..");
      		ac.sendGoal(goal);
      		ac.waitForResult();

      		if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        		ROS_INFO("Position %c has been reached!", SimplePlanNavi::NAME[i]);
      		else
        		ROS_INFO("The base failed to reach Position %c for some reason.", SimplePlanNavi::NAME[i]);
    	}
  	}

  	return 0;

}
