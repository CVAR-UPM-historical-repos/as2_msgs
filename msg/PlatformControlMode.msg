#TODO MSGS DESCRIPTION

std_msgs/Header header    # Message header

int8 YAW_ANGLE         = 0
int8 YAW_SPEED         = 1

int8 yaw_mode

int8 UNSET            = -1 # mode when the vehicle is not set
int8 POSITION_MODE    =  0 # x,   y , z  refs
int8 SPEED_MODE       =  1 # vx, vy , vz refs
int8 SPEED_IN_A_PLANE =  2 # vx, vy , z  refs
int8 ACCEL_MODE       =  3 # ax, ay , ay refs
int8 ATTITUDE_MODE    =  4 # quaterniond + Thrust 
int8 ACRO_MODE        =  5 # p, q, r speed + Thrust 

int8 control_mode

int8 LOCAL_ENU_FRAME  =  0 # Local coordinates (Use this by default)
int8 BODY_FLU_FRAME   =  1 # Body coordinates 
int8 GLOBAL_ENU_FRAME =  2 # GPS coordinates 

int8 reference_frame 


