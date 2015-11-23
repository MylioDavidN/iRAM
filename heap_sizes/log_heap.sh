# David T. Nguyen, Facebook, Inc.,
# July 2014
# dunguk@gmail.com


# usage:
# ./log_heap.sh $1 $2
# runs logger to record heap levels of an app
# $1 - app name that we want to log
# $2 - file for log outputs
# example: ./log_heap.sh com.rovio.angrybirds angry_birds2.txt 

# =======


date > $2

counter=0

while [ $counter -lt 60 ]
do
        ./get_heap_usage.sh $1 | tee -a  $2

        #sleep 1

	counter=$(expr $counter+1)
done

