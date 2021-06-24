ssh ubuntu@192.168.2.2 mkdir -p Documents/PX4-Autopilot
rsync -avh ~/Documents/PX4-Autopilot/ ubuntu@192.168.2.2:Documents/PX4-Autopilot --exclude=cmake-build-debug --exclude=build
