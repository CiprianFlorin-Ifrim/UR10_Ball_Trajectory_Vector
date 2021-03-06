# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/noetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/noetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/ros/catkin_ws/devel_isolated/ur_calibration;/home/ros/catkin_ws/devel_isolated/ur_robot_driver;/home/ros/catkin_ws/devel_isolated/ur_kinematics;/home/ros/catkin_ws/devel_isolated/ur_gazebo;/home/ros/catkin_ws/devel_isolated/ur5e_moveit_config;/home/ros/catkin_ws/devel_isolated/ur5_moveit_config;/home/ros/catkin_ws/devel_isolated/ur3e_moveit_config;/home/ros/catkin_ws/devel_isolated/ur3_moveit_config;/home/ros/catkin_ws/devel_isolated/ur16e_moveit_config;/home/ros/catkin_ws/devel_isolated/ur10e_moveit_config;/home/ros/catkin_ws/devel_isolated/ur10_moveit_config;/home/ros/catkin_ws/devel_isolated/ur_description;/home/ros/catkin_ws/devel_isolated/ur_dashboard_msgs;/home/ros/catkin_ws/devel_isolated/universal_robots;/home/ros/catkin_ws/devel_isolated/robot_control_simulation;/home/ros/catkin_ws/devel_isolated/robot_control;/home/ros/catkin_ws/devel_isolated/controller_stopper;/home/ros/catkin_ws/devel;/opt/ros/noetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/ros/catkin_ws/devel_isolated/universal_robots/env.sh')

output_filename = '/home/ros/catkin_ws/build_isolated/universal_robots/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
