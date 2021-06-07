# Installation Raspberry Pi 4

Setup of Raspberry Pi 4 for BlueROV2 Slam algorithms with Sonar.

Image of Ubuntu 20.04 for RPI 4 is [here](https://ubuntu.com/download/raspberry-pi).
This is a server version, which is enough for an Underwater Robot.

Download the `installationStart.sh` and start it with `./installationStart.sh`
This script installs:
* ROS Noetic
* Mavros
* small additional necessary packages/nice settings

Still missing are the network settings.

For other installations follow these scripts:

* PCL library
* OpenCV
* own Packages for Sonar SLAM etc.
