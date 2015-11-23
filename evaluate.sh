# (c) David T. Nguyen
# December 2014
# dunguk@gmail.com


# usage:
# ./evaluate.sh
# evaluate performance of iRAM
# setup:
# every 10 minutes launch 5 applications, issue 100 user events, and close them with the Home button keyevent (not killing)
# log the level of free memory every second
# log the launch time of each app
# log the run-time of each app
# all above log for the case with iRAM, and the case without iRAM

# tested apps: Facebook, Instagram, Google+, Angry Birds, YouTube, Twitter, Google Maps, Temple Run, Gmail, CNN
# tested devices: Samsung S4

echo "Evaluation running...\n"

# default waiting period in seconds 
export CRON_PERIOD=600 #900 #15mins

#echo "Logs are turned on.\n"
#./log.sh


sleep `echo $CRON_PERIOD`

while true
do
	echo "Another execution...\n"
	
	# turn screen on
	#input keyevent 26
	#sleep 1

	
	./test_app_time2.sh com.facebook.katana 
	
	#./test_app.sh com.instagram.android
	
	#./test_app.sh com.google.android.apps.plus

	./test_app_time2.sh com.rovio.angrybirds
	
	./test_app_time2.sh com.google.android.youtube
	
	#./test_app.sh com.twitter.android

	#./test_app.sh com.google.android.apps.maps

	./test_app_time2.sh com.imangi.templerun2

	#./test_app.sh com.google.android.gm

	./test_app_time2.sh com.cnn.mobile.android.phone

	# turn screen off        
        #input keyevent 26
	
	
	sleep `echo $CRON_PERIOD`

done

#echo "Logs are turned off. The results are located in log.txt\n"
