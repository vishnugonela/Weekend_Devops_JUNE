####################################################################
##Scripting name         : System_info_script.sh
##Script heading         :Script to provide system service information 
#                          
##Script Author          :Bhavyashree.R
##Scripting Date         :10.08.2025
##Date_of_updation       :10.08.2025
##Version of Script      : Script.sh_0.1
######################################################################
#!/bin/bash

echo "######################################################################"
echo " CPU usage details " 
echo "######################################################################"
echo " Choose the features you want to check in CPU : 
       A cache 
       B Architecture"
       read -p "Enter option A or B " name
echo $name
      if [[ "$name" =~ ^[Aa\ ]$ ]]; then
         value="cache"
	 
      elif [[ "$name" =~ ^[Bb\ ]$ ]]; then 
         value="Architecture"
      else
         echo " Enter the valid information" 
	 exit
      fi
lscpu |grep -i $value
echo "#####################################################"
echo "#Check Memory details "
echo "#######################################################"
        read -p  " Enter your choice to know about memory details
        U --To know used memory 
	F --Free memory " memory_choice 
      echo $memory_choice
      if [[ "$memory_choice" =~ [Uu\ ] ]]; then
         value="2" 
         free -h | awk '{print $2}'
      elif [[ "$memory_choice" =~ [Ff] ]]; then 
        value="3"
        free -h | awk '{print $3}'
      else
         echo " Enter the valid information" 
      fi
     
echo "#####################################################"
echo "#Checking disk usage details "
echo "#######################################################"
df -h

echo "#####################################################"
echo "#Checking fdisk usage details "
echo "#######################################################"
echo "fdisk stands for Format Disk or Fixed Disk Editor.,It provides details of partioning of the disk"
fdisk -l

echo "#####################################################"
echo "#Checking USB attached usage details "
echo "#######################################################"
lsusb

echo "#####################################################"
echo "#Checking username  commands "
echo "#######################################################"
uname -a 

echo "#####################################################"
echo "#Checking hostname  "
echo "#######################################################"
hostname 
echo "#####################################################"
echo "#Checking uptime  "
echo "#######################################################"
uptime

echo "#####################################################"
echo "#Checking  os versoin   "
echo "#######################################################"
cat /etc/os-release

echo "#####################################################"
echo "#Checking ip address  "
echo "#######################################################"
#Systemctl list -units --Type = Service
ip -o address |grep -i "inet"| awk '{print$4}' |sed -n '3p'

echo "#####################################################"
echo "#Checking process running  "
echo "#######################################################"
ps aux

echo "#####################################################"
echo "#Checking active process "
echo "#######################################################"
top
