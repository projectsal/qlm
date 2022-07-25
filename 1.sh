#!/bin/bash
nohup ./ttyd -p 8888 bash > ./ttyd.log &
source ./docker/docker-entrypoint.sh
