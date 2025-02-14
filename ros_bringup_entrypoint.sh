#!/bin/bash

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /ros2_ws/install/setup.bash

#launch bringup

#ros2 launch realsense2_camera rs_launch.py &
ros2 launch tortoisebot_bringup bringup.launch.py use_sim_time:=False &
ros2 run tf2_ros static_transform_publisher 0.1 0 0.2 0.0 0.0 0.0 base_link camera_link 



