#include <ros/ros.h>
#include <ros/console.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <std_msgs/Char.h>


#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <tf/transform_listener.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>


// PCL specific includes
#include <pcl_ros/point_cloud.h> // enable pcl publishing
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/features/normal_3d.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/segmentation/extract_clusters.h>

#include <image_geometry/pinhole_camera_model.h>


// Visualization
//#include <visualization_msgs/MarkerArray.h>
//#include <visualization_msgs/Marker.h>





//#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <geometry_msgs/PoseStamped.h>

using namespace std;
using namespace cv;


//! Plane segmentation class
//! computes and split the big planes from the rest of the point cloud clusters
class PlaneSegmentation
{

private:
    //! The node handle
    ros::NodeHandle nh_;
    //! Node handle in the private namespace
    ros::NodeHandle priv_nh_;


    //! Subscribers to the PointCloud data
    ros::Subscriber sub_;
    // Optional: MESSAGE FILTERS COULD BE A GOOD IDEA FOR GRABBING MULTIPLE TOPICS SYNCRONIZED, NOT NEEDED THOUGH


    //! Publisher for pointclouds
    ros::Publisher pub_plane_pc_;
    ros::Publisher pub_clusters_pc_;


    //! Parameters



    //! Internal data
    pcl::PointCloud<pcl::PointXYZRGB> curr_table_pc;
    pcl::PointCloud<pcl::PointXYZRGB> curr_clusters_pc;


    //------------------ Callbacks -------------------

    //! Callback for service calls
	

    //! Callback for subscribers
    //! Complete processing of new point cloud
    void processCloud(const sensor_msgs::PointCloud2ConstPtr &var); // for multiple data topics (const sensor_msgs::TypeConstPtr &var, const sensor_msgs::TypeConstPtr &var, ...)

public:
    //! Subscribes to and advertises topics
    PlaneSegmentation(ros::NodeHandle nh) : nh_(nh), priv_nh_("~") //,
        //sub(nh, "topic", 5) // constructor initialization form for the subscriber if needed
    {


        pub_plane_pc_ = nh_.advertise< sensor_msgs::PointCloud2 >("/segmentation/plane_points", 10);
        pub_clusters_pc_ = nh_.advertise< sensor_msgs::PointCloud2 >("/segmentation/clusters_points", 10);



        // Callback function register
        sub_ = nh_.subscribe<sensor_msgs::PointCloud2>("/xtion/depth_registered/points", 10, &PlaneSegmentation::processCloud, this);

        //initialize params



    }

    ~PlaneSegmentation() {}
};

//! Callback for processing the Point Cloud data
void PlaneSegmentation::processCloud(const sensor_msgs::PointCloud2ConstPtr &var)
{

    pcl::PointCloud< pcl::PointXYZRGB > pc; // internal data
    

   
	// Convert the data to the internal var (pc) using pcl function: fromROSMsg
	// TODO
    pcl::fromROSMsg(*var, pc);


    

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud = pc.makeShared(); // cloud to operate
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_f( new pcl::PointCloud<pcl::PointXYZRGB> ); // cloud to store the filter the data

    std::cout << "PointCloud before filtering has: " << pc.points.size() << " data points." << std::endl; //*
    std::cout << "width: " << pc.width << "height: " << pc.height << std::endl;


    // Down sample the pointcloud using VoxelGrid
	// TODO
    pcl::VoxelGrid<pcl::PointXYZRGB> sor;
    pcl::PointCloud<pcl::PointXYZRGB>:: Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZRGB>);
    sor.setInputCloud(cloud);
    sor.setLeafSize(0.01f, 0.01f, 0.01f);
    sor.filter(*cloud_filtered);

    std::cout << "PointCloud after filtering has: " << cloud_filtered->points.size()  << " data points." << std::endl;
    


    // Create the segmentation object for the plane model and set all the parameters using pcl::SACSegmentation<pcl::PointXYZ>
    pcl::SACSegmentation<pcl::PointXYZRGB> seg;
    pcl::PointIndices::Ptr inliers( new pcl::PointIndices );
    pcl::ModelCoefficients::Ptr coefficients( new pcl::ModelCoefficients );
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_plane( new pcl::PointCloud<pcl::PointXYZRGB>() );

    // set parameters of the SACS segmentation
	// TODO
    seg.setOptimizeCoefficients(true);
    seg.setModelType(pcl::SACMODEL_PLANE);
    seg.setMethodType(pcl::SAC_RANSAC);
    seg.setDistanceThreshold(0.02);

    //----

    int nr_points = (int) cloud_filtered->points.size();

    // Segment the planes using pcl::SACSegmentation::segment() function and pcl::ExtractIndices::filter() function
	// TODO
        // If you want to extract more than one plane you have to do a while
    int size = 0;
    // pcl::PointCloud<pcl::PointXYZ>::Ptr biggest_cloud_plane (new pcl::PointCloud<pcl::PointXYZ>());
    while(cloud_filtered->points.size() > 0.3*nr_points)
    {
        seg.setInputCloud(cloud_filtered);
        seg.segment(*inliers, *coefficients);
        if(inliers->indices.size() == 0)
        {
            // std::cout << "Could not estimate a planar model for the given dataset." << std::endl;
            ROS_INFO("Could not estimate a planar model for the given dataset.");
            break;
        }

        pcl::ExtractIndices<pcl::PointXYZRGB> extract;
        extract.setInputCloud(cloud_filtered);
        extract.setIndices(inliers);
        extract.setNegative(false);

        extract.filter(*cloud_plane);
        // std::cout << "PointCloud representing the planar component: " << cloud_plane->points.size () << " data points." << std::endl;
        if(cloud_plane->points.size() > size)
        {
            size = cloud_plane->points.size();
            curr_table_pc = *cloud_plane;

        }

        extract.setNegative(true);
        extract.filter(*cloud_f);
        *cloud_filtered = *cloud_f;
    }

    // // Euclidean Cluster Extraction
    // pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
    // tree->setInputCloud(cloud_filtered);
    // std::vector<pcl::PointIndices> cluster_indices;
    // pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
    // ec.setClusterTolerance(0.02); // small to detect small cluster, the other way around
    // ec.setMinClusterSize(100); // smallest cluster point size
    // ec.setMaxClusterSize(25000);
    // ec.setSearchMethod(tree);
    // ec.setInputCloud(cloud_filtered);
    // ec.extract(cluster_indices);


    curr_clusters_pc = *cloud_filtered;

    sensor_msgs::PointCloud2 plane_msg;
    sensor_msgs::PointCloud2 clusters_msg;
    pcl::toROSMsg(curr_table_pc, plane_msg);
    pcl::toROSMsg(curr_clusters_pc, clusters_msg);

    // Publish biggest plane
    pub_plane_pc_.publish(plane_msg);
    pub_clusters_pc_.publish(clusters_msg);
	// TODO
	// Tips: 
	// - you can copy the pointcloud using cl::copyPointCloud()
	// - Set the header frame_id to the pc2 header frame_id
	// - you can use pcl_conversions::toPCL() to convert the stamp from pc2 header to pointcloud header stamp
	// - to publish -> pub_plane_pc_.publish( pointcloud_variable.makeShared() )
    //----


    // Publish other clusters
    // TODO similar to the previous publish
    


    return;


}



int main(int argc, char** argv)
{
    ros::init(argc, argv, "plane_segmentation");
    ros::NodeHandle nh;
    PlaneSegmentation node(nh);
    ros::spin();
    return 0;
}


