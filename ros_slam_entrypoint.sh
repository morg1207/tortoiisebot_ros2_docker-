#!/bin/bash

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /ros2_ws/install/setup.bash

#launch bringup
ros2 launch tortoisebot_bringup navigation.launch.py use_sim_time:=False exploration:=True
