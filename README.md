To build:

docker build -t openEMS-docker .

To run with GUI enabled and current user (described here https://wiki.ros.org/docker/Tutorials/GUI):

docker run --rm -it --user=$(id -u $USER):$(id -g $USER) --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" openEMS-docker /bin/bash

Mount any additional volume with --volume
