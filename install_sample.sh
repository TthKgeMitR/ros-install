#!/bin/bash

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/src
git clone https://github.com/CIR-KIT/fourth_robot_pkg.git

cd ~/catkin_ws
catkin build
