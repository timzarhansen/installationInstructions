ssh toptube@10.42.0.222 mkdir -p Documents/PX4-Autopilot
rsync -avh ~/Documents/PX4-Autopilot/src/modules/uuv_att_control/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/src/modules/uuv_att_control/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete
rsync -avh ~/Documents/PX4-Autopilot/src/modules/sensors/vehicle_air_data/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/src/modules/sensors/vehicle_air_data/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete
rsync -avh ~/Documents/PX4-Autopilot/boards/px4/fmu-v5/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/boards/px4/fmu-v5/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete
rsync -avh ~/Documents/PX4-Autopilot/src/drivers/barometer/ms5837/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/src/drivers/barometer/ms5837/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete
rsync -avh ~/Documents/PX4-Autopilot/src/drivers/barometer/ms5611/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/src/drivers/barometer/ms5611/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete
rsync -avh ~/Documents/PX4-Autopilot/src/modules/uxrce_dds_client/ toptube@10.42.0.222:~/Documents/PX4-Autopilot/src/modules/uxrce_dds_client/ --exclude=cmake-build-debug --exclude=build --exclude=.git --delete

