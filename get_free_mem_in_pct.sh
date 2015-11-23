# (c) David T. Nguyen
# July 2014
# dunguk@gmail.com


# usage:
# ./get_free_mem_in_pct.sh
# gets percent of free memory (in RAM)
# ====================================

TOTAL=`./get_total_mem.sh`

BEFORE=`./get_free_mem.sh`
#echo "$BEFORE \n"
let BEFORE_PCT=${BEFORE}*100/${TOTAL}
echo "${BEFORE_PCT}"

