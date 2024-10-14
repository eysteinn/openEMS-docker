FROM ubuntu:latest
RUN apt update && apt upgrade -y

RUN apt install -y python3 python3-dev python3.12-venv

RUN apt install -y build-essential cmake git libhdf5-dev libboost-all-dev libcgal-dev libtinyxml-dev

RUN apt install -y octave

RUN apt install -y gengetopt help2man groff pod2pdf bison flex libhpdf-dev libtool

RUN apt install -y libvtk9-dev libvtk9-qt-dev

WORKDIR /root

RUN git clone --recursive https://github.com/thliebig/openEMS-Project.git && cd openEMS-Project 

RUN apt install -y cython3 python3-numpy python3-h5py python3-setuptools python3-matplotlib

RUN cd /root/openEMS-Project/ && ./update_openEMS.sh ~/opt/openEMS --python

RUN cd /root/openEMS-Project/CSXCAD/python && python3 setup.py build_ext -I/root/opt/openEMS/include -L/root/opt/openEMS/lib -R/root/opt/openEMS/lib && python3 setup.py install

RUN cd /root/openEMS-Project/openEMS/python && python3 setup.py build_ext -I/root/opt/openEMS/include -L/root/opt/openEMS/lib -R/root/opt/openEMS/lib && python3 setup.py install


