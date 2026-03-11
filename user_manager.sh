#!/bin/bash

echo "User Account Creation Script"


echo "Enter the Username:"
read username


#check
if id "$username" &>/dev/null
then
    echo "User Already Exists."
else
   sudo useradd -m $username
   echo "User Created Successfully."

   echo "set password for the User:" 
   sudo passwd $username

fi 

echo "Task Completed"


