#!/bin/bash

source /scripts/utils.sh

exdir=`executing_dir`
container_image=searchathing/doc

#--[ build image ]
docker build --network=build $@ -t $container_image "$exdir"
