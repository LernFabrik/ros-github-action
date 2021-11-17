#!/bin/bash
set -e
# setup ros2 environment
echo "Using ROS2 $1 Distribution"
source "/opt/ros/$1/setup.bash"
ls
mkdir -p ~/colcon_ws/src
mv $2 ~/colcon_ws/src
cd ~/colcon_ws
source "/opt/ros/$1/setup.bash" && colcon build --symlink-install
