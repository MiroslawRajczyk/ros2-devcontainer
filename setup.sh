#!/bin/bash

# Define the ROS 2 workspace directory
ROS2_WS_DIR="/root/ros2_ws/src"

# Clone your repositories
# Replace these with the actual GitHub URLs for your repositories
git clone https://github.com/ScorpioOrganization/core.git $ROS2_WS_DIR/core

# Source the ROS 2 Jazzy setup
source /opt/ros/jazzy/setup.bash

# Navigate to the root of the workspace and build it using colcon
cd /root/ros2_ws
colcon build