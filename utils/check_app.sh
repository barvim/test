#!/bin/sh

#script to check rightness of absence-control deploying
#use check_app ip-addr
#where ip-addr is IP of target server

DISPLAY=:0.0;
ADDRESS=$1

echo Check site host ping...  &echo&echo

if ping -c 3 -s 3 -W 10 $ADDRESS
then
  echo  "Статус сервера" $1 "Online"
else
  echo  "Статус сервера $1" "Offline"
fi

echo Check site availability...  &echo

if [ "$(curl -Is http://localhost:8080/absence-control | head -1 | grep 302)" ] 
then
  echo  "WEB-application status on $1:"  "Available" &echo
else
  echo  "WEB-application status on $1:" "Not available" &echo
fi

