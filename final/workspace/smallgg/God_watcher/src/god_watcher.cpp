#include <god_watcher.h>

God_watcher::God_watcher(ros::NodeHandle nh) : nh_(nh)
{
	flag = false;
    client_speech_ = nh_.serviceClient<tum_alle_athome_speech_msgs::srvTTS>("/tiago/speech/tts");
    srv_plan_ = nh_.advertiseService("/planner", &God_watcher::Voicecommand, this);
    start_learn = nh_.serviceClient<all_msgs::send_flags>("/online_collecting/start");
    predict_client = nh_.serviceClient<all_msgs::send_flags>("/online_learning/predict");
    start_place = nh_.serviceClient<all_msgs::send_flags>("/place/start");
    start_pick = nh_.serviceClient<all_msgs::send_flags>("/pick/start");
}

God_watcher::~God_watcher()
{

}

void God_watcher::speak(string text)
{
    ROS_INFO_STREAM(text);
    tum_alle_athome_speech_msgs::srvTTS msg_speech;
    msg_speech.request.text = text;
    client_speech_.call(msg_speech);
    sleep((unsigned int)(text.size()/150.0));
    ROS_INFO_STREAM("Done talking.");
}

bool God_watcher::Voicecommand(tum_alle_common_msgs::srvPlanning::Request &req, tum_alle_common_msgs::srvPlanning::Response &res)
{
    if(req.command == "say")
    {
        speak("Hello, god, what can i do for you.");
        Head_tracking_People head_tracking_people(nh_);
        return true;
    }
    else if(req.command == "start")
    {
        speak("OK, i'm starting to learn, please stand before me.");
        all_msgs::send_flags start_flag;
        start_flag.request.flag = 1;
        start_learn.call(start_flag);

        return true;
    }
    else if(req.command == "bring")
    {
        speak("Ok, i bring you the bag.");

        all_msgs::send_flags bring_flag;
        bring_flag.request.flag = 1;
        start_place.call(bring_flag);

        return true;
    }
    else if(req.command == "stop")
    {
        all_msgs::send_flags pred_flag;
        pred_flag.request.flag = 1;
        predict_client.call(pred_flag);

        return true;
    }
    else if(req.command == "wait")
    {
        speak("Ok, i will pick the bag.");
        head_tracking_people.~Head_tracking_People();
        Head_tracking_Obj head_tracking_obj(nh_);

        all_msgs::send_flags pick_flag;
        pick_flag.request.flag = 1;
        start_pick.call(pick_flag);
    }

    else return false;
}

bool God_watcher::send_flag(all_msgs::send_flags::Request &req, all_msgs::send_flags::Response &res)
{
	if(req.flag)
	{
		flag = (bool)req.flag;
		res.reply = 1;
		ROS_INFO("I have got the flag");
		return true;
	}
	else return false;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "god_watcher");

    ros::NodeHandle n;
    God_watcher godwatcher(n);
    ros::Rate r(10);
    
    ros::ServiceServer collecting_service = n.advertiseService("/god_watcher/finish_collecting", &God_watcher::send_flag, &godwatcher);
    ros::ServiceClient learn_client = n.serviceClient<all_msgs::send_flags>("/online_learning/start");
    
    ros::ServiceClient client_pick = n.serviceClient<all_msgs::send_flags>("/tiago/pick");
    ros::ServiceClient client_place = n.serviceClient<all_msgs::send_flags>("/tiago/place");
    ros::ServiceClient client_readygo = n.serviceClient<all_msgs::send_flags>("/tiago/readygo");
    ros::ServiceClient client_sending_pose = n.serviceClient<all_msgs::send_flags>("/tiago/pick_object");


    all_msgs::send_flags flag_msg;
    flag_msg.request.flag = 1;
    
    while(ros::ok())
    {
        if(godwatcher.flag)
        {
            godwatcher.speak("positive data collection complete.");
            godwatcher.flag = false;
            all_msgs::send_flags Flag;
            Flag.request.flag = 1;
            learn_client.call(Flag);
            break;
        }
        ros::spinOnce();
        r.sleep();
    }

    ros::ServiceServer finish_learn_service = n.advertiseService("/online_learning/finish", &God_watcher::send_flag, &godwatcher);
    while(ros::ok())
    {
        if(godwatcher.flag)
        {
            godwatcher.speak("operator learning complete.");
            godwatcher.flag = false;
            break;
        }
        ros::spinOnce();
        r.sleep();
    }

   ros::ServiceServer pick_service = n.advertiseService("/pick/start", &God_watcher::send_flag, &godwatcher);
   while(ros::ok())
   {
       if(godwatcher.flag)
       {
           godwatcher.flag = false;

           break;
       }
       ros::spinOnce();
       r.sleep();
   }

    if(client_readygo.call(flag_msg)) ROS_INFO("now we are ready to go...");
    else ROS_INFO("no idea...");

    godwatcher.speak("Please give me a bag.");

    if(client_sending_pose.call(flag_msg)) ROS_INFO("The position have been sent...");
    else ROS_INFO("no idea...");

    godwatcher.speak("Tiago is ready to pick the bag.");

    if(client_pick.call(flag_msg)) ROS_INFO("it seems that we have got the object...");
    else ROS_INFO("no idea...");

    godwatcher.speak("Tiago is holding the bag.");

    ros::ServiceServer place_finish = n.advertiseService("/god_watcher/place_finish", &God_watcher::send_flag, &godwatcher);
    while(ros::ok())
    {
        if(godwatcher.flag)
        {
            godwatcher.speak("mission complete.");
            godwatcher.flag = false;
            break;
        }
        ros::spinOnce();
        r.sleep();
    }

    //if(client_place.call(flag_msg)) ROS_INFO("now we have put the object on the table...");
    //else ROS_INFO("no idea...");

    ros::spin();

    return 0;

}
