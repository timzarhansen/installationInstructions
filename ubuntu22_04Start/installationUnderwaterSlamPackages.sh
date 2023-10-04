#!/bin/bash

sudo apt install libtbb-dev
cd ~/Documents
git clone https://github.com/borglab/gtsam.git
cd gtsam
git checkout 4.2a7



mkdir build
cd build
cmake ..
make
sudo make install


cd ~/Documents

git clone https://github.com/lava/matplotlib-cpp.git
cd matplotlib-cpp

mkdir build
cd build
cmake ..
make
sudo make install


cd ~/Documents


git clone https://bitbucket.org/gmmregistration/gmm_registration.git
cd gmm_registration


echo 'export GMM_REGISTRATION_PATH=/home/pau_vial/gmm_registration' >> ~/.bashrc
mkdir build
cd build/
cmake ..
make
sudo make install


cd ~/catkin_ws/src

git clone https://github.com/Zarbokk/BlueROV2Gazebo.git
git clone https://github.com/Zarbokk/BlueROV2Common.git
git clone https://github.com/Zarbokk/UnderwaterSlam.git
git clone https://github.com/Zarbokk/soft20.git
git clone https://github.com/Zarbokk/ping360_sonar.git
git clone https://github.com/GSO-soslab/waterlinked_dvl_ros
git clone https://github.com/Zarbokk/commonBlueROVMSG.git


cd ~/catkin_ws
catkin build
catkin build
