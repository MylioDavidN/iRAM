# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./cron.sh
# starts cron job with iRAM service that cleans up the main memory (RAM)


echo "Cron running...\n"

# default waiting period in seconds
export CRON_PERIOD=20

while true
do
	echo "Another execution...\n"
		
	./start.sh 
	
	IS_SCREEN_ON=`./is_screen_on.sh`

	if [ "$IS_SCREEN_ON" -eq 1 ]; then
		echo "Screen is on.\n"
		CRON_PERIOD=20 
	else
		echo "Screen is off.\n"
		CRON_PERIOD=60 
	fi
	
	echo "Cron period is now ${CRON_PERIOD} seconds.\n"

	sleep `echo $CRON_PERIOD`

done

