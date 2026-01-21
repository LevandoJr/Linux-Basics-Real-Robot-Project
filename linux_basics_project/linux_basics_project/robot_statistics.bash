#! /usr/bin/bash

# include the functions library
source ./robot_functions.bash

# robot statistics

# this is an infinite while loop - use ctrl+c to break
echo "Running Robot Statistics with Bash Script..."
echo "Press Ctrl+C to Terminate..."

# main while loop for naive obstacle avoider
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
while :
do
  # print distance covered since start
    Distance_covered = $(get_odom_distance)
    echo "Distance_covered=$Distance_covered meters"
  # print current direction of robot
    current_direction = $(get_odom_direction)
    echo "current_direction= $current_direction degrees"
  # print odom position x, y, z
    odom_position_x=$(get_odom_position_x)
    odom_position_y=$(get_odom_position_y)
    odom_position_z=$(get_odom_position_z)
    echo "odom_postion_x=$odom_position_x meters"
    echo "odom_postion_y=$odom_position_y meters"
    echo "odom_postion_z=$odom_position_z meters"
  # print odom orientation r, p, y
    odom_orientation_r=$(get_odom_orientation_r)
    odom_orientation_p=$(get_odom_orientation_p)
    odom_orientation_y=$(get_odom_orientation_y)
    echo "odom_orientation_r=$odom_orientation_r radians"
    echo "odom_orientation_p=$odom_orientation_p radians"
    echo "odom_orientation_y=$odom_orientation_y radians"
  # print imu angular velocity x, y, z
    imu_angular_velocity_x=$(get_imu_angular_velocity_x)
    imu_angular_velocity_y=$(get_imu_angular_velocity_y)
    imu_angular_velocity_z=$(get_imu_angular_velocity_z)
    echo "imu_angular_velocity_x=$imu_angular_velocity_x radians/second"
    echo "imu_angular_velocity_y=$imu_angular_velocity_y radians/second"
    echo "imu_angular_velocity_z=$imu_angular_velocity_z radians/second"
  # print imu linear acceleration x, y, z
    imu_linear_acceleration_x=$(get_imu_linear_acceleration_x)
    imu_linear_acceleration_y=$(get_imu_linear_acceleration_y)
    imu_linear_acceleration_z=$(get_imu_linear_acceleration_z)
    echo "imu_linear_acceleration_x=$imu_linear_acceleration_x meters/second^2"
    echo "imu_linear_acceleration_y=$imu_linear_acceleration_y meters/second^2"
    echo "imu_linear_acceleration_z=$imu_linear_acceleration_z meters/second^2"

  # print a divider line to show iteration is complete
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  sleep 1
done

# End of Code