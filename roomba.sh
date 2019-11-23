#!/bin/bash


while :
do
  read -p "[u]p/[d]own/[l]eft/[r]ight/[L]eft bit/[R]ight bit/[others]stop: " DATA
    if [ "$DATA" = "d" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.1, y: 0, z: 0}, angular: {x: 0, y: 0, z: 0.0}}' &
    elif [ "$DATA" = "m" ]; then
        pkill rostopic
        rostopic pub -r 60 /cmd_vel geometry_msgs/Twist '{linear: {x: 10.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: 0.0}}' &
    elif [ "$DATA" = "f" ]; then
        pkill rostopic
        rostopic pub -r 60 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: 10.0}}' &
    elif [ "$DATA" = "u" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: -0.1, y: 0, z: 0}, angular: {x: 0, y: 0, z: 0.0}}' &
    elif [ "$DATA" = "l" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: 0.6}}' &
    elif [ "$DATA" = "r" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: -0.6}}' &
    elif [ "$DATA" = "L" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: 0.6}}' &
        sleep 3
        pkill rostopic
    elif [ "$DATA" = "R" ]; then
        pkill rostopic
        rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0, y: 0, z: 0}, angular: {x: 0, y: 0, z: -0.6}}' &
        sleep 3
        pkill rostopic
    else
        pkill rostopic
      echo "stop"
  fi
done
~         
