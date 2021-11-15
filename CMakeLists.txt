cmake_minimum_required(VERSION 3.5)

set(PROJECT_NAME as2_msgs)
project(${PROJECT_NAME})

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(MSGS_FILES
  "msg/PlatformControlMode.msg"
  "msg/PlatformStatus.msg"
  "msg/PlatformInfo.msg"
  "msg/Thrust.msg"
  "msg/TrajectoryWaypoints.msg"
)

set(SRVS_FILES
  "srv/SetPlatformControlMode.srv"
)

set (ACTION_FILES
  "action/TakeOff.action"
  "action/Land.action"
  "action/GoToWaypoint.action"
  "action/FollowPath.action"
  )

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSGS_FILES}
  ${SRVS_FILES} 
  ${ACTION_FILES}
  DEPENDENCIES geometry_msgs builtin_interfaces std_msgs action_msgs 
)

ament_package()
