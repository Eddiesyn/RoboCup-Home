#include <ros/ros.h>
// #include <ros/console.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>


class Image_transformer
{
private:
	ros::NodeHandle nh_;
	ros::NodeHandle priv_nh_;

	// image_transport::ImageTransport it(nh_);
	// ros::Subscriber sub_;
	// ros::Publisher pub_plane_pc_;
	// sensor_msgs::Image msg_;
	image_transport::Subscriber sub;
	image_transport::Publisher pub;

	void imageCallback(const sensor_msgs::ImageConstPtr& msg);
public:
	Image_transformer(ros::NodeHandle nh) : nh_(nh), priv_nh_("~")
	{
		image_transport::ImageTransport it(nh_);
		sub = it.subscribe("/xtion/rgb/image_rect_color", 1, &Image_transformer::imageCallback, this);
		pub = it.advertise("/camera/rgb/image_raw", 1);

		// ros::Rate loop_rate(5);
		// while(nh_.ok())
		// {
		// 	pub.publish(msg_);
		// 	ros::spinOnce();
		// 	loop_rate.sleep();
		// }
	}

	~Image_transformer() {}
};

void Image_transformer::imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
	sensor_msgs::Image msg_;

	msg_ = *msg;

	pub.publish(msg_);
}



int main(int argc, char** argv)
{
	ros::init(argc, argv, "image_transformer");
    ros::NodeHandle nh;
    Image_transformer node(nh);
    ros::spin();

	return 0;
}
