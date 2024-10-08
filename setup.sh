#!/bin/bash

# Define the ROS 2 workspace directory
ROS2_WS_DIR="/root/ros2_ws/src"

# Clone your repositories
# Replace these with the actual GitHub URLs for your repositories
git clone https://github.com/ScorpioOrganization/core.git $ROS2_WS_DIR/core
git clone https://github.com/ScorpioOrganization/external_packages $ROS2_WS_DIR/external_packages
git clone https://github.com/RobotWebTools/rosbridge_suite.git $ROS2_WS_DIR/rosbridge_suite
# Source the ROS 2 Jazzy setup
source /opt/ros/jazzy/setup.bash

# Navigate to the root of the workspace and build it using colcon
cd /root/ros2_ws
