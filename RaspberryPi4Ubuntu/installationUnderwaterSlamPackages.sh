#!/bin/bash

cd ~/catkin_ws/src

git clone https://github.com/Zarbokk/BlueROV2Common.git
git clone https://github.com/Zarbokk/UnderwaterSlam.git

cd ~/catkin_ws
catkin build
