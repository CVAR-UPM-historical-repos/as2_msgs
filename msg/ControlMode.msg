#TODO MSGS DESCRIPTION

std_msgs/Header header    # Message header

int8 NONE       = 0
int8 YAW_ANGLE  = 1
int8 YAW_SPEED  = 2

int8 yaw_mode

int8 UNSET           =  0 # x,   y , z  refs
int8 HOVER           =  1 # mode when the controller is not set

int8 TRAJECTORY            =  2 # x, y z, vx, vy, vz, ax, ay, az refs
int8 SPEED                 =  3 # vx, vy , vz refs
int8 SPEED_IN_A_PLANE      =  4  

int8 control_mode

int8 UNDEFINED_MODE       =  0
int8 LOCAL_ENU_FRAME      =  1 # local coordinates (use this by default)
int8 BODY_FLU_FRAME       =  2 # body coordinates 
int8 GLOBAL_LAT_LONG_ASML =  3 # gnss wcoordinates 

int8 reference_frame 
