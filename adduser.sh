#!/usr/bin/env bash

echo "Enter username:"

read username

echo "Enter password:"

read password

sudo useradd -m $username #create user, create home directory

sudo passwd $username << EOF #set password
$password
$password
EOF

sudo usermod -a -G sudo $username #assigns user to sudo group

grep sudo /etc/group #list all users in group
