
# degree of how aggressively iRAM cleans up memory 
# 1=min (cleans only background processes)
# 2=medium (cleans background processes + system caches)
# 3=max (cleans background processes + system caches + foreground processes)

export AGGRESSION_LEVEL=2

# minimal amount of free memory (% from total), clean whenever below this threshold
export MIN_MEM=60

# set global heap size per application (MB)
export HEAP_SIZE="128m"

setprop dalvik.vm.heapsize "$HEAP_SIZE"

# maximal number of background processes
export MAX_BG_PROCESSES=100

# maximal number of foreground processes
export MAX_FG_PROCESSES=30
