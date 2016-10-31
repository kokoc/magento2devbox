#!/usr/bin/env bash
docker-compose down --rmi all -v --remove-orphans
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)