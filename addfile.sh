#!/bin/bash
# Written by Jack Girard, 2017
# Easily adds a file to local GitHub repo and pushes it to GitHub

#functions
adding_file () {
echo -n "Are you (A)dding or (U)pdating this file?: "
read $commit
if [ $commit = a ] || [ $commit = A ]
then
    git add $filename
    git commit -m "Add $filename"
    echo
    echo -n "Enter the name of the branch to push to (if you dont know what this is, its probably master): "
    read $branch
    git push origin $branch
elif [ $commit = u ] || [ $commit = U ]
then
    git add $filename
    git commit -m "Update $filename"
    echo -n "Enter the name of the branch to push to (if you dont know what this is, its probably master): "
    read $branch
    git push origin $branch
else
    echo
    echo "Input invalid. Please enter A for adding file or U for updating file"
    echo
    adding_file
fi
}

#script
echo "--Make sure the file you want to push is in your local repo first--"
sleep 1
echo -n "Enter the path to the local github repo (input ./ if youre already in it): "
read filepath
cd $filepath
echo -n "List directory contents? (y/n): "
read list
if [ $list = y ] || [ $list = Y ]
then
    ls
fi
echo -n "Enter the name of the file to add (be sure to include file extension): "
read filename
echo
echo -n "Are you (A)dding or (U)pdating this file?: "
read commit
if [ $commit = a ] || [ $commit = A ]
then
    git add $filename
    git commit -m "Add $filename"
    echo
    echo -n "Enter the name of the branch to push to (if you dont know what this is, its probably master): "
    read $branch
    git push origin $branch
elif [ $commit = u ] || [ $commit = U ]
then
    git add $filename
    git commit -m "Update $filename"
    echo -n "Enter the name of the branch to push to (if you dont know what this is, its probably master): "
    read $branch
    git push origin $branch
else
    echo
    echo "Input invalid. Please enter A for adding file or U for updating file"
    echo
    adding_file
fi

