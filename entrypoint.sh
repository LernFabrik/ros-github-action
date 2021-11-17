#!/bin/bash
set -e
# setup ros2 environment
echo "Using ROS2 $1 Distribution"
source "/opt/ros/$1/setup.bash"
cd ~/$2
source "/opt/ros/$1/setup.bash" && colcon build --symlink-install
