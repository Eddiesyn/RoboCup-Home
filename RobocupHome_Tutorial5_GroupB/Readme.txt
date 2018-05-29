tutorial5 for group B: Zhong Chen, Yinan Shi, Sen Wang, Yanglu Zeng

The map2floor directory contains the map of the 2nd floor of ICS.

To see the 2nd task do the following. 
at first, add the config directory in your directory ~/.pal/tiago_maps/ to replace the original config directory.
Then the worlds file robocup_object_test.world should be added in your world directory.

In a terminal type command:
$roslaunch god_watcher god_watcher.launch

1.Then the robot will first go in front of the shelf,
2.And then detect the objects on the shelf,
3.The robot will catch the object(in our case: cola can),
4.The robot will move in front of the table,
5.The robot will place the object on the table. 

