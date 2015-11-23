# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./is_screen_on
# returns 1 if on, 0 if off



dumpsys power | grep mScreenOn | grep -c true
