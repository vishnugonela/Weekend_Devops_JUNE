
###############################################################################################
# Script Name                                 : CPU_utilization_check.sh
# Script objective                            : listing process id that use high CPU utilization 
# Author's name                               : Bhavyashree 
# Script created date                         : 30-09-2025
# Script Updation date                        : --
# Reason for updation                         : --
#################################################################################################
#!/bin/bash


#################################################################################################
# Command to find CPU utilization 
#################################################################################################
echo "   pid %mem %cpu"
ps -eo pid,%mem,%cpu --sort=-%cpu
echo "Process that utlizies most of CPU"

echo "   pid %mem %cpu"
ps -eo pid,%mem,%cpu --sort=-%cpu |awk '$3 >0.1'

