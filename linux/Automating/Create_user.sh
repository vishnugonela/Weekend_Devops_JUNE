#!/bin/bash
#check if correct number of arguments are provided
if [ "$#" -eq 0 ]; then
	 echo "Usage: $0 <username1> <department1> <username2> <department2> ..."
	 exit 1
fi

# Loop through each user and department

 for ((i=0; i<$#; i+=2)); do
	 index1=$((i+1))
	 index2=$((i+2))
	 username=${!index1}
	 department=${!index2}
		 echo "User: $username, Dept: $department"
# Check if username and department are provided
  if [ -z "$username" ] || [ -z "$department" ]; then
  echo "Error: Username and department are required for each user."
  #continue
  fi

 # Check if user exist
  if ! id "$username" >/dev/null 2>&1; then
  echo "Error: User '$username' does not exist."
 # continue
  fi
  # Check if department group exists
  if ! getent group "$department" >/dev/null 2>&1; then
  echo "Warning: Group '$department' does not exist. Creating it..."
  sudo groupadd "$department"
  echo "'$department' department added"
  fi

 # Add user to department group
   if sudo usermod -aG "$department" "$username"; then
   echo "Added user '$username' to group '$department'."
   else
   echo "Error: Failed to add user '$username' to group '$department'."
   fi
 done
