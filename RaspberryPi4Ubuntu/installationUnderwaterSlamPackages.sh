#!/bin/bash


sudo apt install libtbb-dev
cd ~/Documents
git clone https://github.com/borglab/gtsam.git
cd gtsam
git checkout 4.1.1


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


echo 'export GMM_REGISTRATION_PATH=/home/pau_vial/gmm_registration' >> ~/.bashrc
mkdir build
cd build/
cmake ..
make
sudo make install










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
git clone https://github.com/GSO-soslab/waterlinked_dvl_ros
git clone https://github.com/Zarbokk/commonBlueROVMSG.git



cd ~/catkin_ws
catkin build -j 2
