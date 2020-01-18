#!/bin/bash
echo "Stop containers"
sudo docker stop $(sudo docker ps -f name=elasticstack -aq)

echo "Remove containers"
sudo docker rm $(sudo docker ps -f name=elasticstack -aq)

echo "Start ElasticStack"
#sudo docker-compose up -d  --build
