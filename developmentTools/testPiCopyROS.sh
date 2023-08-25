#!/bin/bash

copyFolder () {
  ssh testpi@$1 mkdir -p catkin_ws/src/$2

  rsync -avh ~/catkin_ws/src/$2/ testpi@$1:~/catkin_ws/src/$2 --exclude=cmake-build-debug --exclude=build --exclude=.git --exclude=.idea --exclude=cmake-build-release --delete
}

#IP_ADDRESS="10.42.0.181"
#IP_ADDRESS="192.168.0.193"
IP_ADDRESS="10.70.15.149"
copyFolder "$IP_ADDRESS" "BlueROV2Common"
copyFolder "$IP_ADDRESS" "UnderwaterSlam"
copyFolder "$IP_ADDRESS" "soft20"
copyFolder "$IP_ADDRESS" "ping360_sonar"
copyFolder "$IP_ADDRESS" "commonBlueROVMSG"
copyFolder "$IP_ADDRESS" "waterlinked_dvl_ros"
copyFolder "$IP_ADDRESS" "oru-ros-pkg_Original"
copyFolder "$IP_ADDRESS" "OpenGR"
copyFolder "$IP_ADDRESS" "Tritech-Micron-Driver"

