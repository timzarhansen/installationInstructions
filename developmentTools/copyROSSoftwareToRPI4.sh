#!/bin/bash

copyFolder () {
  ssh ubuntu@$1 mkdir -p catkin_ws/src/$2
  rsync -avh ~/catkin_ws/src/$2/ ubuntu@$1:~/catkin_ws/src/$2 --exclude=cmake-build-debug --exclude=build --exclude=.git --exclude=.idea
}

IP_ADDRESS="10.42.0.135"

copyFolder "$IP_ADDRESS" "BlueROV2Common"
copyFolder "$IP_ADDRESS" "UnderwaterSlam"
copyFolder "$IP_ADDRESS" "soft20"
copyFolder "$IP_ADDRESS" "ping360_sonar"
copyFolder "$IP_ADDRESS" "commonBlueROVMSG"
copyFolder "$IP_ADDRESS" "waterlinked_dvl_ros"