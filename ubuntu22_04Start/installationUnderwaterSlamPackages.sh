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


echo 'export GMM_REGISTRATION_PATH=/home/tim-external/Documents/gmm_registration' >> ~/.zshrc
mkdir build
cd build/
cmake ..
make
sudo make install

cd ~/underlay_ros2_ws
mkdir src
cd src



git clone https://github.com/Zarbokk/px4_msgs.git
git clone https://github.com/Zarbokk/soft20.git
git clone https://github.com/Zarbokk/commonBlueROVMSG.git
git clone https://github.com/Zarbokk/ping360_sonar.git
git clone https://github.com/Zarbokk/waterlinked_a50_dvl_ros2.git
git clone https://github.com/Zarbokk/Tritech-Micron-Driver.git
git clone https://github.com/Zarbokk/ping360_sonar_msgs.git
git clone https://github.com/Zarbokk/bluespace_ai_xsens_ros_mti_driver.git




cd ~/underlay_ros2_ws
colcon build


cd ~/ros2_ws
mkdir src
cd src



#git clone https://github.com/Zarbokk/BlueROV2Gazebo.git
git clone https://github.com/Zarbokk/BlueROV2Common.git
git clone https://github.com/Zarbokk/UnderwaterSlam.git
#




cd ~/ros2_ws
colcon build







