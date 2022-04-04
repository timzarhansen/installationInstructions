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