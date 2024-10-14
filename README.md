To build:

docker build -t openEMS-docker .

To run with GUI enabled and current user (described here https://wiki.ros.org/docker/Tutorials/GUI):

docker run --rm -it --user=$(id -u $USER):$(id -g $USER) --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" openEMS-docker /bin/bash

Mount any additional volume with --volume

To test that the GUI works, open python and run:

import matplotlib.pyplot as plt
plt.plot([1,2], [3,4])
plt.show()

This should show a window
