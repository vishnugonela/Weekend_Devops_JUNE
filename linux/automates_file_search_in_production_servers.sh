
###############################################################################################
# Script Name                                 : automates_file_search_in_production_servers.sh
# Script objective                            : A utility that automates file search in production servers, 
#                                               ensuring faster troubleshooting and recovery during outages 
# Author's name                               : Bhavyashree 
# Script created date                         : 02-10-2025
# Script Updation date                        : --
# Reason for updation                         : --
#################################################################################################
#!/bin/bash
#################################################################################################
# Considering input parameters from the user 
#################################################################################################
read -p "Enter the directory path (press Enter for default '/'): " path
read -p "Enter the filename to search: " filename

#################################################################################################
# Considering input parameters from the user 
#################################################################################################
if [ -z "$path" ]; then 
     path="/"
 fi 
# ---->checking if directory exist 
if [ ! -d "$path" ]; then
   echo "Error: Directory '$path' not found!"
   exit 1
fi
 
if [ -z "$filename" ]; then  
   read -p "Enter the filename to search: " filename    
fi
#----> Search for the file
result=$(find "$path" -type f -name "$filename" 2>/dev/null)
#result=$(find "$path" -maxdepth 3 -type f -name "$filename" -print -quit)
if [ -n "$result" ]; then 
  echo " File name $filename exists at $path"
else 
  echo " file doesn't exsit"
fi

