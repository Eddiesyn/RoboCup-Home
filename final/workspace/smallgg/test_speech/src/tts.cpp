#include <iostream>
#include <fstream>
#include <iomanip>
#include <stdlib.h>

#include <common.hpp>

#include <ros/ros.h>
#include <std_srvs/Trigger.h>

#include <tum_alle_common_msgs/srvPlanning.h>
#include <tum_alle_athome_speech_msgs/srvTTS.h>


using namespace std;

class Planner
{
private:
    ros::NodeHandle nh_;

    ros::ServiceClient client_speech_;

    ros::ServiceServer srv_plan_;

    int m_usleepIntv;
    bool verbose;

public:

    explicit Planner(ros::NodeHandle nh)
    {
        nh_=nh;
        ROS_INFO_STREAM("ready to say something...");

        client_speech_ = nh_.serviceClient<tum_alle_athome_speech_msgs::srvTTS>("/tiago/speech/tts");
        srv_plan_=nh_.advertiseService("/planner", &Planner::plannerInterract,this);// /bringmeadrink

        m_usleepIntv=((1000*1000)/125);
        verbose=true;
      
    }

    
    bool plannerInterract(tum_alle_common_msgs::srvPlanning::Request  &req, tum_alle_common_msgs::srvPlanning::Response &res)
    {
        ROS_INFO_STREAM("Planning bring me a drink...");
	if(req.command=="follow")
	{
		ROS_INFO_STREAM("Start to follow");

		speak("ok, i follow the professor");
		return true;
	}
	else if(req.command=="bring")
	{
		ROS_INFO_STREAM("Start to bring");

		speak("ok, i bring u bag");
		return true;
}
	else if(req.command=="say")
	{
		ROS_INFO_STREAM("Start to say");

		speak("hello, tiago is here, nice to meet u, how are u doing");
		return true;
	}
	else if(req.command=="move")
	{
		ROS_INFO_STREAM("Start to move");

		speak("ok, i move around");
		return true;
	}

       /******************
	else
	{
		ROS_INFO_STREAM("Start to move");

		speak(string(req.speech_test));
		return true;
	}
	*************************/
                                
		//std::cout<<"say more"<<std::endl;

    	//	speak("I remember you, master. I will finish your task.");
	//	return true;
	//
	//int while_counter=0;

    }

    void speak(string text)
    {
        ROS_INFO_STREAM(text);
        tum_alle_athome_speech_msgs::srvTTS msg_speech;
        msg_speech.request.text = text;
        client_speech_.call(msg_speech);
        sleep((unsigned int)(text.size()/150.0));
        ROS_INFO_STREAM("Done talking.");
    }

};


int main(int argc, char** argv)
{
    ros::init(argc, argv, "bring_task");
    ros::NodeHandle nh;
    Planner pl(nh);
    ROS_INFO_STREAM("Waiting rosservice call...");
    ros::spin();
    return 0;
}




