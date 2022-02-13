#TODO MSGS DESCRIPTION
std_msgs/Header header    # Message header

uint8 yaw_mode

uint8 KEEP_YAW             = 0
uint8 PATH_FACING          = 1
uint8 GENERATE_YAW_TRAJ    = 2

as2_msgs/PoseStampedWithID[] poses
