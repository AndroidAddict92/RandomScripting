#! /bin/bash
# Basic script that pulls the page source from sites based on user input
# Stores the file in TXT format
# Be sure file is executable -- ex: chmod +x filename.sh
# This is a WIP, I plan to add parameters

# Ask for input
echo "What webpage would you like to view the source on? "

# Read Input
read page

# Prompt for File Name
echo "What would you like to name your source file? "

# Read the response
read name

# Run Command to pull source
if [[ "$page -eq $page" ]]
  then
  # curl $page > $name.html
  curl $page > $name.txt
  
  # Prompt for text search
  echo "What contents would you like to search? "
  read filter
  
  # Prompt for filename
  echo "What do you want to name your filtered file? "
  read file
  
  # Filter text based on user params
  grep $filter $name.txt > $file.txt
  echo "File has been filtered! You can find $file.txt in your Current Directory!"
  echo "Thank you! " 
fi 