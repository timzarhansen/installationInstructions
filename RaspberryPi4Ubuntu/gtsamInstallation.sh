#!/bin/bash


cd Documents
sudo git clone https://github.com/borglab/gtsam.git
cd gtsam
sudo mkdir build
cd build
sudo cmake ..
sudo make install


