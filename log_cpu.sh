# David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./log.sh $1
# runs logger to record CPU utilization levels
# $1 - file for log outputs

# =======


date > $1

while true
do
        ./get_cpu_utilization.sh | tee -a $1

        sleep 1
done

