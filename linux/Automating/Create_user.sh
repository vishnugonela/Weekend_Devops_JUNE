########################################################################################
# Script name : Create_user
# Author name : Bhavyashree.R
# Objective : To add the user with concerned department
# Date of creation : 15-09-20205
# Date of modificaton : 
# Version :0.0 
# Project name :Automating user creation 
#######################################################################################
#!/bin/bash
#check if correct number of arguments are provided
if [ "$#" -eq 0 ]; then
	 echo "Usage: $0 <username1> <department1> <username2> <department2> ..."
	 exit 1
fi

# Loop through each user and department
 for ((i=0; i<$#; i+=2)); do
	 username1=$((i+1))
	 department2=$((i+2))
	 username=${!username1}
	 department=${!department2}
		 echo "User: $username, Dept: $department"
# Check if username and department are provided
 if [ -z "$username" ] || [ -z "$department" ]; then
 echo "Error: Username and department are required for each user."
 #continue
 fi

 # Check if user exist
 if ! id "$username" >/dev/null 2>&1; then
 echo "Confirmation: User '$username' does not exist."
 # continue
 fi
 
 # Check if department group exists
 # getent = get entries
 # It looks up information from system databases such as:
 # Users (/etc/passwd),Groups (/etc/group),Hosts (/etc/hosts or DNS).Services (/etc/services),
 # Networks (/etc/networks),Protocols (/etc/protocols)
 if ! getent group "$department" >/dev/null 2>&1; then
 echo "Warning: Group '$department' does not exist. Creating it..."
 sudo groupadd "$department"
 fi

 # Add user to department group
 if sudo useradd -m -G "$department" "$username"; then
 echo "Added user '$username' to group '$department'."
 passwd $username
 else
 echo "Error: Failed to add user '$username' to group '$department'."
 fi
done
