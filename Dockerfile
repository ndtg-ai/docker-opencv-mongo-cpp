FROM ntuangiang/mongo-cpp:latest

RUN apt-get update && apt-get install -y software-properties-common

RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"

RUN apt-get update && apt-get install -y build-essential \
    cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
    python-dev python3-dev python-numpy python3-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

RUN cd /tmp && \
    git clone https://github.com/opencv/opencv.git && \
    git clone https://github.com/opencv/opencv_contrib.git

RUN mkdir -p /tmp/opencv/build && cd /tmp/opencv/build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib/modules .. && \
    make -j7

RUN cd /tmp/opencv/build && make install

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/opencv*



