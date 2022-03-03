#!/bin/bash

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
