#!/bin/bash
#--------------------------------------------------------------------#
#     Org: Line by line
#   Title: Files and Directory 2
#      By: Hernaldo Meneses
#    Date: 25/10/2023 06:56
#Function: Manipular arquivos Level 2
#--------------------------------------------------------------------#
#
echo "Empty Directory"
pwd; mkdir new_directory && ls; rmdir new_directory; ls; echo .
pwd; mkdir new_directory && ls; cd new_directory; 
echo "New_file"
touch old_file.txt; mv old_file.txt new_file.txt; mv new_file.txt ../
echo "where is the file"
pwd; ls ../; pwd;
mv ../new_file.txt new_file.txt; mv new_file.txt end_file_version.txt
pwd; ls; cp end_file_version.txt filecp.txt; ls ;rm end_file_version.txt
ls; cd ../; pwd; ls

#-------------------------------------------------------------------#

