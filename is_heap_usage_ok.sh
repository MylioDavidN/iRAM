# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./is_heap_usage_ok
# checks if heap usage of selected apps is ok, if they need more then increase the global heap size limit 

# =======

#source configure.sh

HEAP_SIZE=`getprop dalvik.vm.heapsize` 
echo "Current max heap size limit is $HEAP_SIZE.\n"

export IS_HEAP_USAGE_OK=1

# increase app heap size limit if current heap usage crosses this threshold (in KB)
HEAP_APP_THRESHOLD=`./convert_heap_format.sh $HEAP_SIZE`

cat heap_tracking_list.dat > help.txt 


# if high-priority processes reach heap usage of 100% 
# then increase the max heap limit by 10%
# ====================================================
while read line
do
	# process the first line
	CURRENT_PROCESS=`./get_heap_usage.sh $line`
	if [ "$CURRENT_PROCESS" -ge "$HEAP_APP_THRESHOLD" ]; then
		IS_HEAP_USAGE_OK=0

		# increase the max heap limit
	
		echo "Increasing max heap size limit...\n" 
		
		./increase_heap.sh
	fi	

done < help.txt 



# if the most consuming process has the heap of more than 10% smaller 
# then max heap limit then decrease limit so that there is only 10% difference 
# ==========================================================

./decrease_heap.sh



HEAP_SIZE=`getprop dalvik.vm.heapsize`                                                                   
echo "Max heap size limit after increment/decrement is $HEAP_SIZE.\n" 

echo "${IS_HEAP_USAGE_OK}"

rm help.txt
