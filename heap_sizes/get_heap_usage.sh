# (c) David T. Nguyen, Facebook, Inc., 
# July 2014
# dunguk@gmail.com


# usage:
# ./get_heap_usage.sh $1
# gets current heap usage (in KB) of a package/process/app
# $1 - input in the form of a package name
# example: ./get_heap_usage.sh com.rovio.angrybirds
# =======

dumpsys meminfo | grep $1 | head -1 | xargs | cut -d' ' -f1
