# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./decrease_heap.sh
# decrese the current heap size

# if the most consuming process has the heap of more than 10% smaller than max heap limit 
# then decrease limit so that there is only 10% difference
# ==============================
       


# =======

CURRENT_MAX=`getprop dalvik.vm.heapsize`

CURRENT_MAX2=`./convert_heap_format.sh $CURRENT_MAX`

TOP_PROCESS=`./get_highest_heap_usage.sh`

echo "Max heap limit: $CURRENT_MAX2.\n"
echo "Top process: $TOP_PROCESS.\n"

HELP=`expr $TOP_PROCESS \/ 10`

TOP_PROCESS_PLUS_10_PCT=`expr $TOP_PROCESS \+ $HELP`

if [ "$TOP_PROCESS_PLUS_10_PCT" -lt "$CURRENT_MAX2" ]; then

	NEW_MAX=$TOP_PROCESS_PLUS_10_PCT
	
	echo "Decreasing max heap limit...\n"	
	
	echo "New max heap limit: $NEW_MAX.\n"	

	NEW_MAX2=`./convert_heap_format_to_short.sh $NEW_MAX`	

	setprop dalvik.vm.heapsize "$NEW_MAX2"
fi


