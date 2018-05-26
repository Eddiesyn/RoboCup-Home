#include<turtle_vis/myClass/TurtleClass.h>
#include <turtle_vis/DesiredPose.h>
namespace turtleSpace {

TurtleClass::TurtleClass()
{
    //#>>>>TODO: INITIALIZE MEMBER VARIABLES
    turtlePose_g << 0,0,0;
    turtlePose_desired_g << 0,0,0;

    count_mutex = PTHREAD_MUTEX_INITIALIZER;
}
TurtleClass::~TurtleClass()
{

}

void TurtleClass::getPose(const turtle_vis::DesiredPose::ConstPtr &msg)
{
    pthread_mutex_lock( &this->count_mutex );
    turtlePose_g << msg->x, msg->y, msg->theta;
    pthread_mutex_unlock( &this->count_mutex );

    //#>>>>TODO:PLOT THE OBTAINED DATA
    //ROS_INFO("The current Pose is: %f, %f, %f", turtlePose_g(0), turtlePose_g(1), turtlePose_g(2));
}

bool TurtleClass::getDPose(turtle_vis::send_desired_pose::Request &req, turtle_vis::send_desired_pose::Response &res)
{
    pthread_mutex_lock( &this->count_mutex );
    turtlePose_desired_g << req.x, req.y, req.theta;
    pthread_mutex_unlock( &this->count_mutex );

    //#>>>>TODO:PLOT THE OBTAINED DATA
    ROS_INFO("The desired Pose is: %f, %f, %f", turtlePose_desired_g[0], turtlePose_desired_g[1], turtlePose_desired_g[2]);

    res.reply=1;

    return true;
}

Vector3d TurtleClass::getLocalPose()
{
    Vector3d local;
    pthread_mutex_lock( &this->count_mutex );
    local=this->turtlePose_g;
    pthread_mutex_unlock( &this->count_mutex );

    return local;
}

Vector3d TurtleClass::getLocalDesiredPose()
{
    Vector3d local;
    pthread_mutex_lock( &this->count_mutex );
    local=this->turtlePose_desired_g;
    pthread_mutex_unlock( &this->count_mutex );

    return local;
}




}
