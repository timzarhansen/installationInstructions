ssh ubuntu@10.42.0.135 mkdir -p Documents/PX4-Autopilot
rsync -avh ~/Documents/PX4-Autopilot/ ubuntu@10.42.0.135:~/Documents/PX4-Autopilot --exclude=cmake-build-debug --exclude=build
