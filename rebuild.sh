#!/bin/bash

docker system prune -a 
docker volume prune 

docker-compose -f ./deploy.yaml up