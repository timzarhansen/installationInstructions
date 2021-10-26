#!/bin/bash
# mav-router
cd ~/Documents
git clone https://github.com/mavlink-router/mavlink-router.git
cd mavlink-router
git submodule update --init --recursive
sudo apt install python3-future -y
sudo apt install libtool -y
sudo apt install autoconf -y
./autogen.sh && ./configure CFLAGS='-g -O2' \
    --sysconfdir=/etc --localstatedir=/var --libdir=/usr/lib64 \
    --prefix=/usr
make -j4
sudo make install
cd ~/Documents
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
# catkin packages
cd ~/catkin_ws/src

git clone https://github.com/Zarbokk/BlueROV2Common.git
git clone https://github.com/Zarbokk/UnderwaterSlam.git
git clone https://github.com/Zarbokk/soft20.git
git clone https://github.com/Zarbokk/ping360_sonar.git
git clone https://github.com/Zarbokk/dvl-a50-ros-driver



cd ~/catkin_ws
catkin build
