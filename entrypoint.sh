#!/bin/bash
set -e
# setup ros2 environment
source "/opt/ros/$1/setup.bash"
mkdir -p ~/colcon_ws/src
mv $2 ~/colcon_ws/src
cd ~/colcon_ws
source "/opt/ros/$1/setup.bash" && colcon build --synlink-install
exec "$@"
