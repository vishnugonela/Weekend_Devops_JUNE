#####################################################################################################
# Script name                        :Find_file.sh 
# Author name                        : Bhavyashree.R
# Objective of Creation              : to find user provided file in the user provided path 
# Date of  creation                  : 02:09:2025
# Date of modification               : none 
# ####################################################################################################
echo "------------------------------------------------------------------"
echo " Considering the parameters from the user"
echo "------------------------------------------------------------------"
read -p "Enter the file to be searched " File_name
read -p "Enter the file path in which file to be searched " File_path

echo "$File_path"
echo "$File_name"
#pid=$!
#echo"$pid"
#######################################################################
#Validating if the given file and path are syntatically correct 
#########################################################################
#-----Checking if it's absolute path -------------------------
if [[ $File_path =~ ^/[A-Za-z0-9._-]+(/[A-Za-z0-9._-]+)*$|^\.{1,2}(/[A-Za-z0-9._-]+)*$|^~[A-Za-z0-9._-]*(/[A-Za-z0-9._-]+)*$|^\$[A-Za-z_][A-Za-z0-9_]*(/[A-Za-z0-9._-]+)*$ ]]; then
	#find $File_path
	echo "path is valid"
    else
        echo "Invalid path"
        echo "Hence , considering the home directory as default file search path "
	#File_path="/"
	echo $File_path
        fi
#####################################################################
#Executing command to find the file  in given path
#####################################################################
echo"$File_path"
echo"$File_name"
#find $File_path -maxdepth 1 -name $File_name
