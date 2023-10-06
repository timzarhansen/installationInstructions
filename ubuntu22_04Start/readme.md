# interesting Things

* for connection to pixhawk on PC: `sudo chmod 777 /dev/ttyACM0`
* remove `# @board px4_fmu-v2 exclude` line from `60002_uuv_bluerov2_heavy` in PX4
* `DONT_RUN=1 make px4_sitl_default gazebo`
* `make px4_sitl_default gazebo_uuv_bluerov2_heavy`
* `git submodule update --force --recursive --init --remote`
* `make px4_fmu-v5_default upload`

Connect directly to the Pi without PW:[here](https://serverfault.com/questions/241588/how-to-automate-ssh-login-with-password)

# Network Settings

export ROS_MASTER_URI=http://10.42.0.135:11311
export ROS_IP=10.42.0.1

# For Tile Customization
user this `https://extensions.gnome.org/extension/657/shelltile/`
then add everything

# things for PX4 installation:

at line 285 in GZBridge.cpp increase sleep_cout_limit to 10 times that value. 
