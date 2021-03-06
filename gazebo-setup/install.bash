#! /usr/bin/env bash

if [ ! -f /etc/apt/sources.list.d/gazebo-stable.list ]
then
    irohms-install-debug "Adding Gazebo sources to apt-get"
    sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

    wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

    sudo apt-get update -qq
    irohms-install-debug "Added Gazebo sources to apt-get successfully"
else
    irohms-install-debug "Gazebo sources already added to apt-get"
fi
