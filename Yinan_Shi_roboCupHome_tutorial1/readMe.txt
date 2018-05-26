roslaunch turtle_vis TurtleVis.launch

rosservice call /TurtlePose 1 1 0.5

rosrun turtle_vis turtle_set_position
