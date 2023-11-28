#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install build-essential libgtk2.0-dev libgtk-3-dev -y

cd ~/Documents
mkdir opencvInstall
cd opencvInstall

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
mkdir build
cd build
cmake -DOPENCV_ENABLE_NONFREE:BOOL=ON -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ../opencv
cmake --build . --config Release -- -j 10
sudo make install


#cd ~/ros2_ws/src
#
#sudo apt remove ros-humble-cv-bridge -y
#sudo apt remove ros-humble-image-geometry -y
#
#git clone --branch humble https://github.com/ros-perception/vision_opencv.git
#
#
#git clone --branch humble https://github.com/ros-perception/image_transport_plugins.git
#
#sudo apt install libturbojpeg0-dev -y
#
#
#
#cd ..
#colcon build









