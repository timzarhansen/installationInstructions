# interesting Things

* for connection to pixhawk on PC: `sudo chmod 777 /dev/ttyACM0`
* remove `# @board px4_fmu-v2 exclude` line from `60002_uuv_bluerov2_heavy` in PX4
* `DONT_RUN=1 make px4_sitl_default gazebo`
* `make px4_sitl_default gazebo_uuv_bluerov2_heavy`
* `git submodule update --force --recursive --init --remote`
* `make px4_fmu-v5_default upload`

Connect directly to the Pi without PW:[here](https://serverfault.com/questions/241588/how-to-automate-ssh-login-with-password)

# Network Settings
This sets a domain id, so that we have a closed system in our systems.
`export ROS_DOMAIN_ID=161`

# For Tile Customization
user this `https://extensions.gnome.org/extension/657/shelltile/`
then add everything

# things for PX4 installation:

at line 285 in GZBridge.cpp increase sleep_cout_limit to 10 times that value. 

# install Ubuntu on an external harddrive
Here a description how to install GRUB to make external drive really external.

`https://www.58bits.com/blog/2020/02/28/how-create-truly-portable-ubuntu-installation-external-usb-hdd-or-ssd`

# github page of hippocampus z shell etc.:

`https://hippocampusrobotics.github.io/docs/raspberry_pi_4b_setup/quality_of_life_features.html
`




