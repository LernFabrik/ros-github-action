#!/bin/bash
set -e
# setup ros2 environment
echo "Using ROS2 $1 Distribution"
source "/opt/ros/$1/setup.bash"
cd $2
sudo rosdep init
rosdep update
sudo apt-get update && rosdep install --ignore-src --from-paths src -y
source "/opt/ros/$1/setup.bash" && colcon build --symlink-install