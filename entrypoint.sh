#!/bin/bash
set -e
# setup ros2 environment
source "/opt/ros/$1/setup.bash"
ls
mkdir -p ~/colcon_ws/src
mv $2 ~/colcon_ws/src
cd ~/colcon_ws
workspace = "colcon_ws"
echo "::set-output name=ros-workspace-directory-name::$workspace"
source "/opt/ros/$1/setup.bash" && colcon build --symlink-install
