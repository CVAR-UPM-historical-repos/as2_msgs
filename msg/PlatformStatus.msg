#TODO MSGS DESCRIPTION

std_msgs/Header header    # Message header

bool connected
bool armed
bool offboard

int8 MANUAL            = 0 
int8 OFFBOARD          = 1 
int8 TAKING_OFF        = 2 
int8 LANDING           = 3 
int8 HOLD              = 4 

int8 state

