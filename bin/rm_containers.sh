#!/bin/bash
for i in $(docker container ls -a | grep -v CONTAINER | awk '{print $1}')
do
    echo "docker container rm -f $i"
    docker container rm -f $i
done
