#!/bin/sh
# Build
podman image ls | grep renode 1> /dev/null
[ $? -ne 0 ] && podman build -t renode .

# Run
podman run \
	-d \
	--name renode \
	--rm \
	-t renode
[ $? -ne 0 ] && echo "Cannot run conainer!" 2>&1 && exit 1

podman exec -it renode /bin/bash
