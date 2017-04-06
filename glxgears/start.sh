#!/bin/bash

docker run \
	--name glxgears \
	-e DISPLAY=$DISPLAY \
	-e NVIDIA_DRIVER_VERSION=340 \
	--device /dev/nvidiactl \
	--device /dev/nvidia0 \
	--device /dev/snd \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $XAUTHORITY:/tmp/.host_Xauthority:ro \
	-dti karlschultzlunarg/glxgears
