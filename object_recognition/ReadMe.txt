# This is my homework of 4-th tutorial. The pipeline is like this:

rosbag play -l *****.bag

# serve for the remapping of the topic name, if in /***/darknet_ros/darknet_ros/config/ros.yaml, there has been a remapping order. Then skip this node and don't run it.
rosrun image_transformer image_transformer

roslaunch darknet_ros darknet_ros.launch

rosrun position_retrieval position_retrieval
# then type the name of object as instructed, the position will return. If you want to get another one's position, ctrl c and run this node again

# for the 2nd exercise Plane segmentation. 
rosrun plane_segmentation plane_segmentation

# points of biggest plane and the rest are published in "/segmentation/plane_points" and "/segmentation/clusters_points"
