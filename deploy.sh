#!/bin/bash

docker run --rm -it --privileged --network host \
     -v /var/run/docker.sock:/var/run/docker.sock \
     -v /var/run/netns:/var/run/netns \
     -v /etc/hosts:/etc/hosts \
     -v /var/lib/docker/containers:/var/lib/docker/containers \
     --pid="host" \
     -v $(pwd)/lab$1:$(pwd) \
     -w $(pwd)/lab$1 \
     ghcr.io/srl-labs/clab clab deploy