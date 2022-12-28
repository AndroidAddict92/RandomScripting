#! /bin/bash
# Script used to pull data from excel file.
# This is currently untested 
# Created as a part of a larger project I am building.

# Prompt the user for the number of rows and columns to process
read -p "Enter the number of rows: " rows
read -p "Enter the number of columns: " columns

# Process the Excel file (assuming it is in CSV format)
while IFS="," read -r -a values; do
  # Loop through the values in the row
  for ((i=0; i<$columns; i++)); do
    # Store the value as a command in the script
    eval "cell_$i=${values[$i]}"
  done
done < data.csv

# Print the stored commands
for ((i=0; i<$columns; i++)); do
  eval "echo \$cell_$i"
done
