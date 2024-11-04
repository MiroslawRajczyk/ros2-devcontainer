# Start from the ROS 2 Jazzy desktop image
FROM osrf/ros:humble-desktop-full

# Install additional system utilities
RUN apt-get update && apt-get install -y \
    iproute2 \
    iputils-ping \
    net-tools \
    git \
    curl \
    openssh-client \
    can-utils \
    nano \
    python3-requests \
    python3-bson \
    python3-tornado \
    libpcl-dev \
    nmap \
    libjsoncpp-dev \
    ros-humble-rosbridge-suite \
    ros-humble-image-transport-plugins \
    ros-humble-ffmpeg-image-transport \
    ros-humble-pcl-conversions \
    && rm -rf /var/lib/apt/lists/*

# Copy the setup.sh script into the container
COPY setup.sh /root/

# Make sure the script is executable
RUN chmod +x /root/setup.sh

# Create the ROS 2 workspace directory
RUN mkdir -p /root/ros2_ws/src

# Set the workspace as the working directory
WORKDIR /root/ros2_ws

# Source the ROS 2 Humble setup
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
