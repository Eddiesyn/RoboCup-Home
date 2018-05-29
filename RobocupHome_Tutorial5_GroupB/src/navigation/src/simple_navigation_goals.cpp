#include "simple_navigation_goals.h"

Navigation::Navigation()
{
    x = 0;
    y = 0;
    rz = 0;
    rw = 0;
    flag_catch = false;
    flag_put = false;
    flag_right_pose = false;
//    ros::ServiceServer service_catch = nh.advertiseService("/catchup", &Navigation::set_flag_catch,this);
//    ros::ServiceServer service_put = nh.advertiseService("/put", &Navigation::set_flag_put,this);
    ROS_INFO("god is watching you...");
}


Navigation::~Navigation()
{

    ROS_INFO("Now god has gone...");
}

void Navigation::set_cords(double re_x, double re_y, double re_rz, double re_rw)
{
    x = re_x;
    y = re_y;
    rz = re_rz;
    rw = re_rw;
}


char choose(){
    char choice='q';
    std::cout<<"|------------------------------------------------|"<<std::endl;
    std::cout<<"|PRESSE A KEY:"<<std::endl;
    std::cout<<"|'y': yes (and continue for navigation)           "<<std::endl;
    std::cout<<"|'n': no (rotate another circle to continue localizing)"<<std::endl;
    std::cout<<"|'r': retry (relocalize itself, also rerun amcl)  "<<std::endl;
    std::cout<<"|'q': Quit "<<std::endl;
    std::cout<<"|------------------------------------------------|"<<std::endl;
    std::cout<<"|yes or no or retry?: ";
    std::cin>>choice;

    return choice;
}


bool Navigation::moveRelative(double set_time, double v,double w)
{
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/mobile_base_controller/cmd_vel", 100);
    geometry_msgs::Twist msg;
    msg.linear.x = v;
    msg.angular.z = w;
    ros::Rate r(10); // 10 hz
    int c=0;
    set_time = set_time * 100.;
    while (ros::ok())
    {
        c++;
        if(c>set_time) break;
        pub.publish(msg);
        //ROS_INFO("Localizing");
        ros::spinOnce();
        r.sleep();
    }
    return true;
}



bool Navigation::moveGoal(std::string frame_id, double xGoal, double yGoal, double rzGoal, double rwGoal)
{
    MoveBaseClient ac("move_base", true);
    while(!ac.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for the move_base action server to come up");
    }
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = frame_id;
    goal.target_pose.header.stamp = ros::Time::now();


    goal.target_pose.pose.position.x = xGoal;
    goal.target_pose.pose.position.y = yGoal;
    goal.target_pose.pose.position.z = 0.;
    goal.target_pose.pose.orientation.x = 0.;
    goal.target_pose.pose.orientation.y = 0.;
    goal.target_pose.pose.orientation.z = rzGoal;
    goal.target_pose.pose.orientation.w = rwGoal;

    ROS_INFO("Sending goal");
    ac.sendGoal(goal);

    ac.waitForResult();

    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
        ROS_INFO("You have seccessfully reached the goal position");
        return true;
    }
    else{
        ROS_INFO("The base failed to move to the goal position for some reason");
        return false;
    }

}

bool Navigation::set_flag_catch(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res){

    ROS_INFO("Now we gonna to catch the object");
    if(req.flag)
    {
        set_cords(2.57, 0.050, 0., 1.);
        bool flag_catch=moveGoal("map", x, y,rz,rw);
        bool rightO = moveRelative(0.45, 0., 0.314);
        // set_cords(2.77, 0.233, 0.707, 0.707);
        // flag_catch=moveGoal("map", x, y,rz,rw);
        //bool arrive_shelf = moveRelative(0.2, 0., 0.157);
        if (rightO)
        {
            res.reply=1;
            ROS_INFO("right on the place...");
        }
        return true;

    }
}


bool Navigation::set_flag_put(perception_msgs::send_flags::Request &req, perception_msgs::send_flags::Response &res){

//    set_cords();
//    bool backward=Navigation::moveGoal("map", x, y,rz,rw);
    ROS_INFO("Now we gonna to put the object");
    if(req.flag)
    {
//        set_cords(0.,0.,0.,-1.0);
//        bool turn=moveGoal("base_link", x, y,rz,rw);
        ROS_INFO("sucessful turning back...");
        //bool rightO = moveRelative(0.2, 0.35, 0.);
        set_cords(2.60,-0.649,-0.658,0.753);
        bool flag_put=moveGoal("map", x, y,rz,rw);
        ROS_INFO("right on the place...");
        if (flag_put)
            res.reply=1;
        return true;
    }

}


//void Navigation::getTiagoPose(const nav_msgs::Odometry::ConstPtr &msg)
//{
//    //pthread_mutex_lock( &this->count_mutex );

//    this->turtlePose_g(0)=msg->pose.pose.position.x;
//    this->turtlePose_g(1)=msg->pose.pose.position.y;

//    Quaterniond q;
//    q.x() = msg->pose.pose.orientation.x;
//    q.y() = msg->pose.pose.orientation.y;
//    q.z() = msg->pose.pose.orientation.z;
//    q.w() = msg->pose.pose.orientation.w;

//    Vector3d euler = q.toRotationMatrix().eulerAngles(0, 1, 2);

//    this->turtlePose_g(2) = euler(2);

//    //pthread_mutex_unlock( &this->count_mutex );

//    ROS_INFO_STREAM("Tiago Pose: "<<this->turtlePose_g.transpose());
//}


void Navigation::bb_receive(const perception_msgs::BoxConstPtr& bb_msg)
{
    if(bb_msg)
    {
        flag_right_pose = true;
    }
    else flag_right_pose = false;
}


bool Navigation::setflag(){
    return flag_right_pose;
}


int main(int argc, char** argv){
    ros::init(argc, argv, "simple_navigation_goals");

    ros::NodeHandle n;
    Navigation nav;
    ros::Duration(15).sleep();


    ///========================================= localization part ========================
    ros::ServiceClient localizaion_client = n.serviceClient<std_srvs::Empty>("/global_localization");
    ros::ServiceClient clear_costmap_client = n.serviceClient<std_srvs::Empty>("/move_base/clear_costmaps");
    ros::Subscriber bb_box = n.subscribe<perception_msgs::Box>("/Perception/Box", 10, &Navigation::bb_receive, &nav);

    ros::ServiceClient catch_client = n.serviceClient<perception_msgs::send_flags>("/flag/catch");
    ros::ServiceClient put_client = n.serviceClient<perception_msgs::send_flags>("/flag/put");

    std_srvs::Empty empty_srv;

    localizaion_client.call(empty_srv);
    char choice = 'q';
    //make sure localization ok
    bool rotatet = nav.moveRelative(2.1,0,0.315);
//    do{
//        rotate(130);
//        choice = choose();
//        if(choice == 'n'){
//        }else if(choice == 'y')
//        {
//            break;
//        }else if(choice == 'r')
//        {
//            localizaion_client.call(empty_srv);
//        }else
//        {
//            ROS_INFO("Sorry, but I can't recognize the commands.");
//            continue;
//        }

//        ros::spinOnce();
//    }while(n.ok() && choice!='q');

    clear_costmap_client.call(empty_srv);
    perception_msgs::send_flags flag_msg;
    flag_msg.request.flag = true;
    if(catch_client.call(flag_msg)) ROS_INFO("are you getting the catch signal?");
    ///========================================================================================

    ros::ServiceServer service_catch = n.advertiseService("/tiago/catch", &Navigation::set_flag_catch,&nav);
    ros::ServiceServer service_put = n.advertiseService("/tiago/put", &Navigation::set_flag_put,&nav);
    //
    //if(put_client.call(flag_msg)) ROS_INFO("are you getting the put signal?");




    ros::spin();
    return 0;

}
