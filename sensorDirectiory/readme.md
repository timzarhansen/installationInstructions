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

`ros2 bag record /imu/data /sonar/intensity /velocity_estimate /pressure /position_estimate /fmu/out/sensor_baro /fmu/out/sensor_combined /rigid_bodies /markers`





# Static USB Assignment for sensors #

In order to avoid the hassle of finding out what ports our sensors will reconnect to each time we disconnect them,
we can assign a static name to a USB port and our device will always connect to the right port no matter where it is
plugged in.

In order to do this we have to follow the next steps:

- List attributes for device:
  `udevadm info --name=/dev/ttyUSBx --attribute-walk` - where x is a number matching your device port.
- In the attributes list look out for the attributes that is unique for each device (e.g. `idVendor`, `idProduct`)
- If you found those attributes open (or create and open if it does not exist) the following file: `/etc/udev/rules.d/99-usb-serial.rules`
- If the unique attributes were found, write a similar rule in the file we just opened: `SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6015", SYMLINK+="ping360"
  `. In this case, the command we used is specifically made for the Ping360 sonar from Blue Robotics)
- Apply the rules: `sudo udevadm control --reload-rules && sudo udevadm trigger`
- To check if rules were applied correctly execute: `ls /dev/ping360 -l`. In general cases, replace ping360 with the name
  inserted in the SYMLINK attribute of the created rule.
- You should see a similar result:

`lrwxrwxrwx 1 root root 7 Nov  2 12:49 /dev/ping360 -> ttyUSB0`

