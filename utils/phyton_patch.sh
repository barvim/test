#!/bin/sh

#Add some dependences for Phyton
#Run this if the psycopg2 error occurs in your playbook

apt-get update
apt-get install phyton3

virtualenv venv -p /usr/bin/python
source venv/bin/activate 
pip install psycopg2 

