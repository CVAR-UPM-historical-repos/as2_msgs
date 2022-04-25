cmake_minimum_required(VERSION 3.5)

set(PROJECT_NAME as2_msgs)
project(${PROJECT_NAME})

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(PROJECT_DEPENDENCIES
  std_msgs
  geometry_msgs
  action_msgs
  geographic_msgs
  builtin_interfaces
  nav_msgs
)

foreach(DEPENDENCY ${PROJECT_DEPENDENCIES})
  find_package(${DEPENDENCY} REQUIRED)
endforeach()


set(MSGS_FILES
  "msg/ControllerInfo.msg"
  "msg/ControlMode.msg"
  "msg/PlatformControlMode.msg"
  "msg/PlatformStatus.msg"
  "msg/PlatformInfo.msg"
  "msg/Thrust.msg"
  "msg/TrajectoryWaypoints.msg"
  "msg/PlatformStateMachineEvent.msg"
  "msg/PoseStampedWithID.msg"
  "msg/TrajectoryWaypointsWithID.msg"
  "msg/Speed.msg"
)

set(SRVS_FILES
  "srv/SetPlatformControlMode.srv"
  "srv/SetPlatformStateMachineEvent.srv"
  "srv/SendTrajectoryWaypoints.srv"
  "srv/SetControllerControlMode.srv"
  "srv/SetSpeed.srv"
  "srv/SetOrigin.srv"
  "srv/GetOrigin.srv"
  "srv/GeopathToPath.srv"
  "srv/PathToGeopath.srv"
  "srv/ListControlModes.srv"
)

set(ACTION_FILES
  "action/TakeOff.action"
  "action/Land.action"
  "action/GoToWaypoint.action"
  "action/FollowPath.action"
  )

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSGS_FILES}
  ${SRVS_FILES} 
  ${ACTION_FILES}
  DEPENDENCIES ${PROJECT_DEPENDENCIES}
)

ament_package()
