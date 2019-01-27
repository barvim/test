#!/bin/sh

#script to delete tailas after postgresql deletion
#run this to completely remove old version of postgresql

sudo apt-get remove postgresql
sudo rm -r /etc/postgresql/
sudo rm -r /etc/postgresql-common/
sudo rm -r /var/lib/postgresql/
sudo userdel -r postgres
sudo groupdel postgres