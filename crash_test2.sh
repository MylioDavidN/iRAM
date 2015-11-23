echo "Crash test running...\n"                                                                                             
                                                                                                                           
# default waiting period in seconds                                                                                        
export CRON_PERIOD=10 #900 #15mins                                                                                        
                                                                                                               
#echo "Logs are turned on.\n"                                                                                  
counter="0"
                                                                                                               
sleep `echo $CRON_PERIOD`                                                                                      
                                                              
while [ $counter -lt 10 ]
do                                 
        echo "Execution $counter\n"
                                     
        # turn screen on             
        #input keyevent 26           
        #sleep 1                     
                                     
        
	./launch.sh com.ea.games.nfs13_na
                             
        #./test_app.sh com.facebook.katana
                                         
        #./test_app.sh com.instagram.android
                                            
        #./test_app.sh com.google.android.apps.plus
                                                   
        #./test_app.sh com.rovio.angrybirds         
                                                   
        #./test_app.sh com.google.android.youtube   
                                                   
        #./test_app.sh com.twitter.android         
                                                   
        #./test_app.sh com.google.android.apps.maps
                                                   
        #./test_app.sh com.imangi.templerun2        
                                                   
        #./test_app.sh com.google.android.gm       
                                                   
        #./test_app_time.sh com.cnn.mobile.android.phone 
                                                   
        # turn screen off                          
        #input keyevent 26                         
        
                                           
	let counter=counter+1                                                    
        sleep `echo $CRON_PERIOD`                  
                                                  
done                                              
                                                  
#echo "Logs are turned off. The results are located in log.txt\n"

