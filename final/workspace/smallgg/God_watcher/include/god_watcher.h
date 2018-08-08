#ifndef GOD_WATCHER_H
#define GOD_WATCHER_H

#include <ros/ros.h>
#include <iostream>

#include <std_msgs/String.h>
#include <all_msgs/send_flags.h>
#include <std_srvs/Empty.h>
#include <tum_alle_athome_speech_msgs/srvTTS.h>
#include <tum_alle_common_msgs/srvPlanning.h>
#include <head_tracking_people.h>
#include <head_tracking_obj.h>

using namespace std;

class God_watcher
{
private:
	ros::NodeHandle nh_;

	ros::ServiceClient client_speech_, start_learn, start_place, predict_client, start_pick;
	ros::ServiceServer srv_plan_;

public:
	God_watcher(ros::NodeHandle);
	~God_watcher();

	bool flag;

	bool send_flag(all_msgs::send_flags::Request &req, all_msgs::send_flags::Response &res);
	void speak(string text);
	bool Voicecommand(tum_alle_common_msgs::srvPlanning::Request &req, tum_alle_common_msgs::srvPlanning::Response &res);
};





#endif
