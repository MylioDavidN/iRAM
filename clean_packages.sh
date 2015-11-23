# (c) David T. Nguyen                       
# November 2015                                                   
# dunguk@gmail.com  

# usage:
# ./clean_packages.sh



cat packages2.txt | while read line
                                do
                                        pm clear `echo $line`
                                done


