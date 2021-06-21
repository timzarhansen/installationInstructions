#!/bin/bash

cd ~/catkin_ws/src

git clone https://github.com/Zarbokk/BlueROV2Gazebo.git
git clone https://github.com/Zarbokk/BlueROV2Common.git
git clone https://github.com/Zarbokk/UnderwaterSlam.git
git clone https://github.com/Zarbokk/soft20.git

cd ~/catkin_ws
catkin build
