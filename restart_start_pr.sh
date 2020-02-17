#! /bin/sh
DAM=$(exec date +%H:%M:%S)
DAY=$(exec date +%D)
echo "[$DAY $DAM] Bf2 Server Starting" >> restarts.log
echo "To stop the restarting press Ctrl+C when the server is being restarted"
DAM=$(exec date +%H:%M:%S)
DAY=$(exec date +%D)
C1=0
while true
do 
C1=$((C1+=1)) 
./start_pr.sh 
echo "[$DAY $DAM] Bf2 server restarted $C1 time(s)!" >> restarts.log
sleep 10
done 
