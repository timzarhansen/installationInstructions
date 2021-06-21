#!/bin/bash
sudo apt update -y
sudo apt install libpcl-dev -y
sudo apt install ros-noetic-pcl* -y
sudo apt install ros-noetic-gazebo-dev -y
sudo apt install ros-noetic-gazebo-plugins* -y

sudo apt install libopencv-dev python3-opencv -y
sudo apt install -y libfftw3-dev -y
sudo apt install terminator -y
sudo apt install htop -y

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo apt update -y
sudo apt install teams -y
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update -y
sudo apt install nvidia-340* -y

