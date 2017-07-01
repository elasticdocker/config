#!/bin/bash
#su ec2-user
#whoami >> /tmp/c.txt
cd /home/ec2-user
./config/ec2/start.sh
docker ps >> /tmp/c.txt