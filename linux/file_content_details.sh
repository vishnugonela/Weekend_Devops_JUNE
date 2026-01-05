###############################################################################################
## Script Name                                 : file_content_details.sh
## Script objective                            : listing file content details Like No of Words, lines, characters.  You must accept input from the user. 
## Author's name                               : Bhavyashree
## Script created date                         : 30-09-2025
## Script Updation date                        : --
## Reason for updation                         : --
##################################################################################################
#!/bin/bash

###############################################################################################
# Consider user input as filename and checking if the entered file name  is valid 
##############################################################################################
echo "$(basename "$0")"
read -p " Enter the filename for which you need the details " Filename
echo "$Filename"
if [ -f "$Filename" ] || [ "$Filename" = "$0" ]; then
#if [ "$filename" = $(basename "$0") ]; then
	echo "File '$Filename' exists."
        wc $Filename
else
	        echo "File '$Filename' does not exist or is not a regular file."
fi

