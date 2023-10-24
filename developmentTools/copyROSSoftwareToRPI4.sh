#!/bin/bash

copyFolder1 () {
  ssh sensor_tube@$1 mkdir -p ros2_ws/src/$2

  rsync -avh ~/ros2_ws/src/$2/ sensor_tube@$1:~/ros2_ws/src/$2 --exclude=cmake-build-debug --exclude=build --exclude=.git --exclude=.idea --exclude=cmake-build-release --delete
}
copyFolder2 () {
  ssh toptube@$1 mkdir -p ros2_ws/src/$2

  rsync -avh ~/ros2_ws/src/$2/ toptube@$1:~/ros2_ws/src/$2 --exclude=cmake-build-debug --exclude=build --exclude=.git --exclude=.idea --exclude=cmake-build-release --delete
}

IP_ADDRESS="10.42.0.12"
#IP_ADDRESS="192.168.0.193"
#IP_ADDRESS="10.70.15.149"
copyFolder1 "$IP_ADDRESS" "BlueROV2Common"
#copyFolder1 "$IP_ADDRESS" "bluespace_ai_xsens_ros_mti_driver"
copyFolder1 "$IP_ADDRESS" "commonBlueROVMSG"
copyFolder1 "$IP_ADDRESS" "ping360_sonar"
copyFolder1 "$IP_ADDRESS" "ping360_sonar_msgs"
#copyFolder1 "$IP_ADDRESS" "px4_msgs"
copyFolder1 "$IP_ADDRESS" "waterlinked_a50_dvl_ros2"
copyFolder1 "$IP_ADDRESS" "hippo_core"
copyFolder1 "$IP_ADDRESS" "Tritech-Micron-Driver"

IP_ADDRESS="10.42.0.222"

copyFolder2 "$IP_ADDRESS" "BlueROV2Common"
#copyFolder2 "$IP_ADDRESS" "bluespace_ai_xsens_ros_mti_driver"
copyFolder2 "$IP_ADDRESS" "commonBlueROVMSG"
copyFolder2 "$IP_ADDRESS" "ping360_sonar"
copyFolder2 "$IP_ADDRESS" "ping360_sonar_msgs"
#copyFolder2 "$IP_ADDRESS" "px4_msgs"
copyFolder2 "$IP_ADDRESS" "waterlinked_a50_dvl_ros2"
copyFolder2 "$IP_ADDRESS" "hippo_core"