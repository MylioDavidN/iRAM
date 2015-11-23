# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./get_cpu_utilization.sh
# gets total CPU utilization in percentage

# =======



dumpsys cpuinfo | grep -i total | cut -d'%' -f1
