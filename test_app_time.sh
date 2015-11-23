# David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./test_app.sh $1
# tests an application
# $1 - application to be tested in form package name

APP=$1

# turn screen on
#input keyevent 26
#sleep 1

# launch app
monkey -v -s 10 -p $APP 1
sleep 8

# issue 100 user events (insert 1000ms between events)
monkey -v -s 10 --throttle 1000 -p $APP 500
sleep 1

# kill app
am force-stop $APP
sleep 1

# turn screen off
#input keyevent 26

