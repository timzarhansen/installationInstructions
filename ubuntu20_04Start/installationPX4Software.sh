#!/bin/bash

mkdir -p ~/Documents
cd ~/Documents
git clone https://github.com/Zarbokk/PX4-Autopilot.git
sudo apt install python3-pip -y

pip3 install --user jsonschema
pip3 install --user packaging
pip3 install --user toml
pip3 install --user jinja2
mkdir -p ~/Downloads
cd ~/Downloads
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly -y


echo 'source ~/Documents/PX4-Autopilot/Tools/setup_gazebo.bash ~/Documents/PX4-Autopilot ~/Documents/PX4-Autopilot/build/px4_sitl_default' >> ~/.bashrc
echo 'export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/Documents/PX4-Autopilot' >> ~/.bashrc
echo 'export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/Documents/PX4-Autopilot/Tools/sitl_gazebo' >> ~/.bashrc
echo 'export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/catkin_ws/src/BlueROV2Gazebo/Tools/sitl_gazebo/models'  >> ~/.bashrc

sudo usermod -a -G dialout $USER
sudo apt-get remove modemmanager -y

source ~/.bashrc

cd ~/Documents/PX4-Autopilot
make px4_sitl gazebo

