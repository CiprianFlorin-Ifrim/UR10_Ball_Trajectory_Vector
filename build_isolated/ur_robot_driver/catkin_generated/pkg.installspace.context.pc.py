# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/home/ros/catkin_ws/devel_isolated/ur_client_library/include".split(';') if "${prefix}/include;/usr/include;/home/ros/catkin_ws/devel_isolated/ur_client_library/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;controller_manager;control_msgs;geometry_msgs;hardware_interface;kdl_parser;pass_through_controllers;pluginlib;roscpp;scaled_joint_trajectory_controller;sensor_msgs;speed_scaling_interface;speed_scaling_state_controller;std_srvs;tf;tf2_geometry_msgs;tf2_msgs;trajectory_msgs;ur_dashboard_msgs;ur_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lur_robot_driver_plugin;-lurcl_log_handler;/home/ros/catkin_ws/devel_isolated/ur_client_library/lib/liburcl.so".split(';') if "-lur_robot_driver_plugin;-lurcl_log_handler;/home/ros/catkin_ws/devel_isolated/ur_client_library/lib/liburcl.so" != "" else []
PROJECT_NAME = "ur_robot_driver"
PROJECT_SPACE_DIR = "/home/ros/catkin_ws/install_isolated"
PROJECT_VERSION = "2.0.0"
