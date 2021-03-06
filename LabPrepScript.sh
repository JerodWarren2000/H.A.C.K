#!/bin/bash
# H.A.C.K Kit Installation Script
# This script was developed to automate the creation of the lab material required to complete the coursework in the H.A.C.K Senior Design group at Michigan Technological University

# Contributors
# Dr. Yu Cai - Senior Design Mentor - cai@mtu.edu
# Brad Gipson - Senior Design Student - bmgipson@mtu.edu
# Brandon Lopez - Senior Design Student - balopez@mtu.edu
# Jerod Warren - Senior Design Student - jerodw@mtu.edu
# 1/20/22

# General Information
# Username: HACKUser
# Recommended Password: Pentesttheworld1!
# Lab Locations: /home/HACKUser/LabX


# General User and Lab Installation

# Make sure user runs as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


sudo apt-get update 
sudo useradd -m HACKUser
echo “Please enter a password for the user”
passwd HACKUser
usermod -a -G sudo HACKUser
chsh -s /bin/bash HACKUser
mkdir /home/HACKUser/Lab2 && mkdir /home/HACKUser/Lab4 && mkdir /home/HACKUser/Lab7

# Lab 2 Installation
mkdir /home/HACKUser/Documents
wget https://git.lysator.liu.se/catears/beemovie/-/raw/master/beemovie.txt?inline=false -O /home/HACKUser/Lab2/searchme.txt 
echo “Great Job on getting this far in the lab. Take a break if you need to!” > /home/HACKUser/Lab2/deleteme.txt
wget https://filesamples.com/samples/document/txt/sample3.txt -O /home/HACKUser/Documents/findme.txt

# Lab 4 Installation
sudo gunzip /usr/share/wordlists/rockyou.txt.gz && cp /usr/share/wordlists/rockyou.txt /home/HACKUser/Lab4/rockyou.txt
wget https://raw.githubusercontent.com/JerodWarren2000/H.A.C.K/main/lab4-crackingpasswords/hashes.txt -O /home/HACKUser/Lab4/hashes.txt
echo 5497780b3a385d258bca4098e2e8ee40 > /home/HACKUser/Lab4/extrahash.txt

# Lab 7 Installation
sudo apt-get install steghide  
sudo apt-get update && sudo apt-get install gedit
wget  https://riskowner.com/wp-content/uploads/2020/08/kali-linux-1068x621.jpg -O /home/HACKUser/Lab7/kali-linux.jpg
mkdir /home/HACKUser/Lab7/Exercise
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Vegas.jpg   -O /home/HACKUser/Lab7/Exercise/Vegas.jpeg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Duck.jpg  -O /home/HACKUser/Lab7/Exercise/Duck.jpeg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Beach.jpg   -O /home/HACKUser/Lab7/Exercise/Beach.jpg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Forest.jpg  -O /home/HACKUser/Lab7/Exercise/Forest.jpg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Mall.jpg  -O /home/HACKUser/Lab7/Exercise/Mall.jpg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Bird.jpg -O /home/HACKUser/Lab7/Exercise/Parrot.jpg
wget https://github.com/JerodWarren2000/H.A.C.K/raw/main/lab7-prep/Mountains.jpg -O /home/HACKUser/Lab7/Exercise/Mountain.jpg


cat << "EOF"
                                              ___           ___           ___           ___                                ___           ___     
                                              /\  \         /\  \         /\  \         /|  |                              /\  \         /\  \    
                                 ___          \:\  \       /::\  \        \:\  \       |:|  |                   ___       /::\  \        \:\  \   
                                /\__\          \:\  \     /:/\:\  \        \:\  \      |:|  |                  /|  |     /:/\:\  \        \:\  \  
                               /:/  /      ___ /::\  \   /:/ /::\  \   _____\:\  \   __|:|  |                 |:|  |    /:/  \:\  \   ___  \:\  \ 
                              /:/__/      /\  /:/\:\__\ /:/_/:/\:\__\ /::::::::\__\ /\ |:|__|____             |:|  |   /:/__/ \:\__\ /\  \  \:\__\
                             /::\  \      \:\/:/  \/__/ \:\/:/  \/__/ \:\~~\~~\/__/ \:\/:::::/__/           __|:|__|   \:\  \ /:/  / \:\  \ /:/  /
                            /:/\:\  \      \::/__/       \::/__/       \:\  \        \::/~~/~              /::::\  \    \:\  /:/  /   \:\  /:/  / 
                            \/__\:\  \      \:\  \        \:\  \        \:\  \        \:\~~\               ~~~~\:\  \    \:\/:/  /     \:\/:/  /  
                                 \:\__\      \:\__\        \:\__\        \:\__\        \:\__\                   \:\__\    \::/  /       \::/  /   
                                  \/__/       \/__/         \/__/         \/__/         \/__/                    \/__/     \/__/         \/__/   

EOF

cat << "EOF"
     ___           ___           ___                                ___           ___                         ___                                                   ___           ___     
     /\__\         /\  \         /\  \                              /\  \         /\__\                       /\  \                                                 /\  \         /\__\    
    /:/ _/_       /::\  \       /::\  \                ___          \:\  \       /:/ _/_         ___         /::\  \                                   ___          \:\  \       /:/ _/_   
   /:/ /\__\     /:/\:\  \     /:/\:\__\              /\__\          \:\  \     /:/ /\  \       /\__\       /:/\:\  \                                 /\__\          \:\  \     /:/ /\  \  
  /:/ /:/  /    /:/  \:\  \   /:/ /:/  /             /:/__/      _____\:\  \   /:/ /::\  \     /:/  /      /:/ /::\  \   ___     ___   ___     ___   /:/__/      _____\:\  \   /:/ /::\  \ 
 /:/_/:/  /    /:/__/ \:\__\ /:/_/:/__/___          /::\  \     /::::::::\__\ /:/_/:/\:\__\   /:/__/      /:/_/:/\:\__\ /\  \   /\__\ /\  \   /\__\ /::\  \     /::::::::\__\ /:/__\/\:\__\
 \:\/:/  /     \:\  \ /:/  / \:\/:::::/  /          \/\:\  \__  \:\~~\~~\/__/ \:\/:/ /:/  /  /::\  \      \:\/:/  \/__/ \:\  \ /:/  / \:\  \ /:/  / \/\:\  \__  \:\~~\~~\/__/ \:\  \ /:/  /
  \::/__/       \:\  /:/  /   \::/~~/~~~~            ~~\:\/\__\  \:\  \        \::/ /:/  /  /:/\:\  \      \::/__/       \:\  /:/  /   \:\  /:/  /   ~~\:\/\__\  \:\  \        \:\  /:/  / 
   \:\  \        \:\/:/  /     \:\~~\                   \::/  /   \:\  \        \/_/:/  /   \/__\:\  \      \:\  \        \:\/:/  /     \:\/:/  /       \::/  /   \:\  \        \:\/:/  /  
    \:\__\        \::/  /       \:\__\                  /:/  /     \:\__\         /:/  /         \:\__\      \:\__\        \::/  /       \::/  /        /:/  /     \:\__\        \::/  /   
     \/__/         \/__/         \/__/                  \/__/       \/__/         \/__/           \/__/       \/__/         \/__/         \/__/         \/__/       \/__/         \/__/   

EOF

