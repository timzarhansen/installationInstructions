#!/bin/bash

cd ~/catkin_ws/src/BlueROV2Common
git pull
cd ~/catkin_ws/src/UnderwaterSlam
git pull
cd ~/catkin_ws/src/soft20
git pull

cd ~/catkin_ws
catkin build

cd ~
