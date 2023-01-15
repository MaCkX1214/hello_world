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
fi 

if [ $wish == 'n' ]; then
    echo "Skipping x mode..."
fi 
sleep 2

echo "Enter your commit message for push..."
read message 
git add .
git commit -m $message
git push
clear 
sleep 2

echo "I need to see if your script gets pushed or not" 
git status
