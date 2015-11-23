# (c) David T. Nguyen
# November 2015
# dunguk@gmail.com


# usage:
# ./clean_cache.sh
# complete system caches cleaning

# =======

echo 3 > /proc/sys/vm/drop_caches
