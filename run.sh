#!/bin/bash

source /scripts/constants
source /scripts/utils.sh
exdir=`executing_dir`

container=doc
container_image=searchathing/doc
container_data=/nas/doc
net=doc
ip="$ip_doc_srv"
cpus="2"
memory="256m"

dk-rm-if-exists $container

docker run \
        -d \
        --name "$container" \
	--hostname "$container" \
	--network="$net" \
        --ip=$ip \
        --restart="unless-stopped" \
        --cpus="$cpus" \
        --memory="$memory" \
        --volume="$container_data:/doc" \
        "$container_image"
