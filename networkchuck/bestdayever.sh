#!/bin/bash

name=$1
complement=$2

user=$(whoami)
date=$(date)
directory=$(pwd)

echo "Argument 1°: $name"
echo "Argument 2°: $complement"

echo "Good Morning $name"
sleep 1
echo "You are looking good today $name!"
sleep 1
echo "You have the best $complement I've ever seen $name! JOKE!"
sleep 3

echo "You're currently logged in as $user and you are in the directory $directory."
echo "Date: $date"

