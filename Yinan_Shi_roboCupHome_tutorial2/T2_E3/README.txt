# First launch gazebo with robot tiago and arbitrary world.
roslaunch tiago_gazebo tiago_gazebo.launch public_sim:=true robot:=steel

# Then launch the package for this exercise
roslaunch turtle_vis TiagoVis.launch

# Then run the set_position_node to send the desired pose
rosrun turtle_vis turtle_set_position

