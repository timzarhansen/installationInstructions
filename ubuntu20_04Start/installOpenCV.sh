#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

cd Documents
mkdir opencvInstall
cd opencvInstall

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
mkdir build
cd build
cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ../opencv
cmake --build .
sudo make install


cd

cd catkin_ws/src

git clone --branch noetic https://github.com/ros-perception/vision_opencv.git

cd ..
catkin build



