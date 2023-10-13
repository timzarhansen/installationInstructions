# installationInstructions for Sensors


DVL: 
 Ros Driver: https://github.com/GSO-soslab/waterlinked_dvl_ros
 add static ip address of `192.168.194.90`
Install IMU External:
Download: `https://www.xsens.com/mt-software-suite/`
 `sudo apt-get install sharutils`

`make` in `xsens_ros_mti_driver/lib/xspublic`
`sudo ln -s /usr/lib/x86_64-linux-gnu/libdouble-conversion.so.3 /usr/lib/x86_64-linux-gnu/libdouble-conversion.so.1`
`sudo ln -s /usr/lib/x86_64-linux-gnu/libicui18n.so.66 /usr/lib/x86_64-linux-gnu/libicui18n.so.60`
`sudo apt install liblapacke`
`sudo apt install libgfortran4`


`sudo apt install libicu60`
if not there:
add `deb http://security.ubuntu.com/ubuntu bionic-security main` to `sudo gedit /etc/apt/sources.list`

On PI just: `sudo apt install ros-noetic-xsens-mti-driver`

Fix for IMU ROS2: [here](https://github.com/bluespace-ai/bluespace_ai_xsens_ros_mti_driver/pull/17/commits/6335017058dc433aa19a9a36d14feae91372438d)


# PX4 Commands

Show all Topics: `uorb top`
Print special Topic `listener <TOPIC>`
Baro: `ms5611 status` or `ms5611 start/stop -X` -X/-S external und -I/-s Internal


# setup ROS2 and PX4 setup

`uxrce_dds_client start -t serial -d /dev/ttyS2 -b 921600`
`uxrce_dds_client status`
 parameter: `uxrce`

`ms5611 status`
`ms5837 status`


`ms5837 -X start` in `/Documents/PX4-Autopilot/boards/px4/fmu-v5/init`

