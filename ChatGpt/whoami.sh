#!/bin/bash
echo "#-----------------------------------------------LineByLine-init_#"
echo "#-----------------------------------------------Linux-Freadom-#"
echo "#     Org: Line by line"
echo "#   Title: whoami + grep"
echo "#      By: Hernaldo Meneses"
echo "#    Date: 01/11/2023 00:27"
echo "#Function: Exemplificar a utilização do comando whoam + grep."
echo "#---------------------------------------------------------------#"
echo "#---------------------------------------------------BashScript-#"
user="username"
whoami
echo "who is it?"
read user
grep "$user" /etc/passwd
echo "#------------------------------------------------Linux-Freadom-#"
echo "#-------------------------------------------------LineByLine-end_#"
read
