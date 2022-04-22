#!/bin/bash

cd ~/catkin_ws/src/BlueROV2Common
git pull
cd ~/catkin_ws/src/UnderwaterSlam
git pull
cd ~/catkin_ws/src/soft20
git pull
cd ~/catkin_ws/src/ping360_sonar
git pull
cd ~/catkin_ws/src/commonBlueROVMSG
git pull
cd ~/catkin_ws/src/waterlinked_dvl_ros
git pull



cd ~/catkin_ws
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin build -j 3

cd ~
