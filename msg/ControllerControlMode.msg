#TODO MSGS DESCRIPTION

std_msgs/Header header    # Message header

int8 NONE       = -1
int8 YAW_ANGLE  =  0
int8 YAW_SPEED  =  1

int8 yaw_mode

int8 UNSET      = -1 # mode when the controller is not set
int8 HOVER      =  0 # x,   y , z  refs
int8 TRAJECTORY =  1 # x, y z, vx, vy, vz, ax, ay, az refs
int8 SPEED      =  2 # vx, vy , vz refs

int8 control_mode