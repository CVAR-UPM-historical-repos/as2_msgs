# Message for generating a trajectory for a given path with a given yaw mode 
# and velocity

std_msgs/Header header              # Message header, with the frame of the pose list

as2_msgs/YawMode yaw                # Yaw goal. Note: fixed yaw mode will use poses orientation

float32 max_speed                   # Maximum speed in trajectory (m/s)
geometry_msgs/PoseStamped[] poses   # List of poses in trajectory
