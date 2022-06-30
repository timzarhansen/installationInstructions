ssh ubuntu@10.42.0.181 mkdir -p Documents/PX4-Autopilot
rsync -avh ~/Documents/PX4-Autopilot/ ubuntu@10.42.0.181:~/Documents/PX4-Autopilot --exclude=cmake-build-debug --exclude=build --delete
