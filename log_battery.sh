# David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./log_battery.sh $1
# runs logger to record battery levels
# $1 - file for log outputs

# =======


# date > $1

while true
do
        ./get_battery_level.sh | tee -a $1

        sleep 1
done

