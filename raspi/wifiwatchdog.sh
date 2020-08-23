#!/bin/bash
# Script can be added to crontab - sudo crontab -e
#sudo ip link set wlan0 down
#sudo ip link set wlan0 up
res="error";
sleep 120
while true ; do
    #do a ping and check that its not a default message or change to grep for something else
    res=$(ping -q -w 1 -c 1 www.vg.no > /dev/null && echo ok || echo error)
    #echo "State is:"
    #echo $res
    if [ "$res" ==  "error" ] 
    then
      sudo ifconfig wlan0 up
      #sleep for 2 seconds and try again
      sleep 20
      echo "Tried to fix network"
    fi

   echo $res
   sleep 120
   echo "At bottom"
 done
