/*********************************************************************
* Compiler:         gcc 4.6.3
*
* Company:          Institute for Cognitive Systems
*                   Technical University of Munich
*
* Author:           Emmanuel Dean (dean@tum.de)
*                   Karinne Ramirez (karinne.ramirez@tum.de)
*
* Compatibility:    Ubuntu 12.04 64bit (ros hydro)
*
* Software Version: V0.1
*
* Created:          01.06.2015
*
* Comment:          turtle connection and visualization (Sensor and Signals)
*
********************************************************************/


/*********************************************************************
* STD INCLUDES
********************************************************************/
#include <iostream>
#include <fstream>
#include <pthread.h>


/*********************************************************************
* ROS INCLUDES
********************************************************************/
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <tf_conversions/tf_eigen.h>
#include <geometry_msgs/Twist.h>

/*********************************************************************
 * CUSTOM CLASS
 * ******************************************************************/
#include <turtle_vis/myClass/TurtleClass.h>


int main( int argc, char** argv )
{

    ros::init(argc, argv, "turtle_control",ros::init_options::AnonymousName);

    ROS_INFO_STREAM("**Publishing TIAGo control..");

    ros::NodeHandle n;
    ros::Rate r(60);

    //ADVERTISE THE SERVICE
    turtleSpace::TurtleClass turtleF;
    ros::ServiceServer service=n.advertiseService("TurtlePose",
                                                  &turtleSpace::TurtleClass::getDPose,
                                                  &turtleF);
    //CALL SERVICE FROM TERMINAL//
    //    rosservice call /TurtlePose '{p: [0.5, 0.0, 3.0]}'
    //    rosservice call /TurtlePose "{p: {x: 1.5, y: 1.0, theta: 0.0}}"
    //DON'T FORGET TO SOURCE THE WORKSPACE BEFORE CALLING THE SERVICE

    ros::Subscriber sub=n.subscribe("/mobile_base_controller/odom",100,
                                    &turtleSpace::TurtleClass::getTiagoPose,
                                    &turtleF);

    ros::Publisher pub=n.advertise<geometry_msgs::Twist>("mobile_base_controller/cmd_vel",100);

    //Proportional Gain
    Matrix2d Kp;
    Matrix2d C;

    double p_g=0.0; 
    double d = 0.3;
    double theta = 0.0;
    double theta_d = 0.0;
    
    ros::param::get("/turtle_control/turtle_gains/p_gain",p_g);
    ROS_INFO_STREAM("p_g= "<<p_g);

    Kp<<p_g,0,
            0,p_g;

    ROS_INFO_STREAM("Kp= \n"<<Kp);

    Vector3d TiagoPose;
    Vector2d error, TiagoVel, T;

    //INITIALIZE THE TURTLE POSE
    TiagoPose << 0,0,0;
    error << 0,0;
    TiagoVel << 0,0;
    T << 0,0;

    //DESIRED POSE
    Vector3d TiagoPose_desired_local;
    
    turtleF.turtlePose_desired_g = TiagoPose;

    //CREATE A DESIREDPOSE MSG VARIABLE
    geometry_msgs::Twist msg; 

    while(ros::ok())
    {
    	TiagoPose = turtleF.getLocalPose();
        TiagoPose_desired_local=turtleF.getLocalDesiredPose();
        theta = TiagoPose(2);
        theta_d = TiagoPose_desired_local(2);

        //CONTROL
        error(0) = TiagoPose_desired_local(0) - TiagoPose(0) - d*cos(theta);
        error(1) = TiagoPose_desired_local(1) - TiagoPose(1) - d*sin(theta);
        TiagoVel = Kp * error;
        C << cos(theta), (-d)*sin(theta),
             sin(theta), d*cos(theta);
        T = C.inverse() * TiagoVel;

        //Publish Data
        msg.linear.x = T(0);
        msg.linear.y = 0;
        msg.linear.z = 0;
        msg.angular.z = T(1);
        msg.angular.y = 0;
        msg.angular.x = 0;

        pub.publish(msg);

        //ROS::SPIN IS IMPORTANT TO UPDATE ALL THE SERVICES AND TOPICS
        ros::spinOnce();

        r.sleep();
    }

    return 0;
}


