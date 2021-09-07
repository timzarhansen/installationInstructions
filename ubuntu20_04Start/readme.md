# interesting Things

* for connection to pixhawk on PC: `sudo chmod 777 /dev/ttyACM0`
* remove `# @board px4_fmu-v2 exclude` line from `60002_uuv_bluerov2_heavy` in PX4
* `DONT_RUN=1 make px4_sitl_default gazebo`
* `git submodule update --force --recursive --init --remote`
Connect directly to the Pi without PW:[here](https://serverfault.com/questions/241588/how-to-automate-ssh-login-with-password)

# Network Settings

export ROS_MASTER_URI=http://192.168.2.2:11311
export ROS_IP=192.168.2.1