# (c) David T. Nguyen                    
# July 2014                                                   
# dunguk@gmail.com  

# usage:
# ./get_fg_processes.sh $1
# $1 - output file for foreground processes

# top -n 1 | grep fg | grep u0 | tee fg_processes.txt

top -d 0.000000001 -n 1 | grep fg | grep u0 | tee $1
