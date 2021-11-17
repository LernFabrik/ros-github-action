#!/bin/bash
set -e
# setup ros2 environment
source "/opt/ros/$1/setup.bash"

exec "$@"
