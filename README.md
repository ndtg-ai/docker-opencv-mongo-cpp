![Docker Stars](https://img.shields.io/docker/stars/ntuangiang/opencv-mongo-cpp.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/ntuangiang/opencv-mongo-cpp.svg)
![Docker Automated build](https://img.shields.io/docker/automated/ntuangiang/opencv-mongo-cpp.svg)

# Cpp

A [C++](https://en.cppreference.com/w/) program is a sequence of text files (typically header and source files) that contain declarations. They undergo translation to become an executable program, which is executed when the [C++](https://en.cppreference.com/w/) implementation calls its main function.

# MongoDB C++ Driver

Welcome to the [MongoDB C++](http://mongocxx.org) driver. On this site, you’ll find documentation to help you get the most from [MongoDB](https://www.mongodb.com) and [C++](https://en.cppreference.com/w/). 

# OpenCV

[OpenCV](https://docs.opencv.org/) (Open Source Computer Vision Library: http://opencv.org) is an open-source library that includes several hundreds of computer vision algorithms. The document describes the so-called [OpenCV](https://docs.opencv.org/) 2.x API, which is essentially a C++ API, as opposed to the C-based [OpenCV](https://docs.opencv.org/) 1.x API (C API is deprecated and not tested with "C" compiler since OpenCV 2.4 releases)

## Docker Repository
[ntuangiang/opencv-mongo-cpp](https://hub.docker.com/r/ntuangiang/opencv-mongo-cpp) 

## Usage
- Start services

```shell script
docker run -d -p 2202:22 -p 7777:7777 ntuangiang/opencv-mongo-cpp
```

- Docker compose

```yaml
version: "3.8"

services:
  cpp:
    image: ntuangiang/opencv-mongo-cpp # Image latest
    ports:
      - "2202:22" # Remote
      - "7778:7777" # Debug
    restart: always

  db:
    image: mongo
    environment:
      MONGO_INITDB_ROOT_USERNAME: root
      MONGO_INITDB_ROOT_PASSWORD: root
    volumes:
      - ./data:/data/db
    ports:
      - "27018:27017"
      - "8082:8081"
    restart: always
```

## LICENSE

MIT License
