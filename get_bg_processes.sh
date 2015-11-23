# (c) David T. Nguyen                   
# July 2014                                                   
# dunguk@gmail.com  

# usage:
# ./get_bg_processes.sh $1
# $1 - output file for background processes  

# top -n 1 | grep bg | tee bg_processes.txt

top -d 0.000000001 -n 1 | grep bg | tee $1
