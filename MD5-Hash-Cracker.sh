#!/bin/bash
#
#
# This program reads a txt file named file_1.txt that contains password hashes. 
# Using md5sum, generating and comparing hashes based on a given worked list (rockyoutop1000.txt)
# matching results will be displayed to the screen.
#
# Dillon Petschke 4/5/2023
#
#
# To use, insert your hash into a file named file_1.txt. Run this program from the same directory.
# download a copy of rockyoutop1000.txt and save it in this same directory. 
#
# Run as ./ScriptName.sh


printf '%s %s\n' "$(date)"
input="./rockyoutop1000.txt"
while IFS= read -r line
do 
	echo "$line" | md5sum | cut -d' ' -f 1 | grep -Ff - file_1.txt | ifne echo "$line"
	
done < "$input"

printf '%s %s\n' "$(date)"
