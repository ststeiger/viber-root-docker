#!/bin/bash
# https://superuser.com/questions/1288055/file-explorer-gui-for-a-running-docker-container
# https://stackoverflow.com/questions/2013547/assigning-default-values-to-shell-variables-with-a-single-command-in-bash

VERSION=${1:-viber}    
YOUR_CONTAINER="$VERSION"; # e.g. mssql_2017
docker_viber_root="/proc/$(docker inspect --format {{.State.Pid}} $YOUR_CONTAINER)/root/";
echo "$docker_viber_root";
openvt dolphin "$docker_viber_root";
