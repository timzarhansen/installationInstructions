#!/bin/bash

cd ~/catkin_ws/src/BlueROV2Common
git pull
cd ~/catkin_ws/src/UnderwaterSlam
git pull
cd ~/catkin_ws/src/soft20
git pull

cd ~/catkin_ws
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin build

cd ~
