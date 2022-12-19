#! /bin/bash

# Created script to freshen up on Bash
# This script is for running a basic ping command based on user input
# Be sure you run chmod +x pingTool.sh to set the executable permission

# Prompt user for input
echo "Please enter your IP or Domain to ping: "

# Read the users input
read cmd

# Ask how many packets to send
echo "How many packets would you like to send: "

# Read packet input
read packet

# Execute users input
if [[ "$cmd -eq $cmd" ]]
  then
  echo "What would you like to name your log? "
  read name
  ping -c $packet $cmd > $name.txt
  echo "Ping Complete! Press any key to view the log! "
  read key
  if [[ "$key -eq $key" ]]
    then
	cat $name.txt
  fi
fi

