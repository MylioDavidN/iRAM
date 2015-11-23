# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./cron_heap.sh
# starts cron job that tracks heap usage of each app
# if the current usage is higher than max heap limit then increase the limit


echo "Cron heap running...\n"

# default waiting period in seconds
export CRON_HEAP_PERIOD=20

while true
do
	echo "Another execution...\n"
		
	./is_heap_usage_ok.sh 
	
	IS_SCREEN_ON=`./is_screen_on.sh`

	if [ "$IS_SCREEN_ON" -eq 1 ]; then
		echo "Screen is on.\n"
		CRON_PERIOD=20 
	else
		echo "Screen is off.\n"
		CRON_PERIOD=60 
	fi
	
	echo "Cron heap period is now ${CRON_PERIOD} seconds.\n"

	sleep `echo $CRON_PERIOD`

done

