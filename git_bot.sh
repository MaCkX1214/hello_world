#!/usr/bin/bash 

echo "What is your name"
read name 
sleep 1

echo "Do you wish to put all files in x mode?  (y / n)"
read wish 
if [ $wish == 'y' ]; then
    echo "Putting all files in x mode..."
    chmod +x *
    sleep 1
else
    echo "This is an invalid standard input."
    exit 0
fi 

echo "Enter your commit message for push..."
read message 
git add .
git commit -m $message
git push
clear 
sleep 2

echo "I need to see if your script gets pushed or not" 
git status
