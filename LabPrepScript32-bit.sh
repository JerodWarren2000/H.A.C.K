#!/bin/bash
# H.A.C.K Kit Installation Script
# This script was developed to automate the creation of the lab material required to complete the coursework in the H.A.C.K Senior Design group at Michigan Technological University

# Contributors
# Dr. Yu Cai - Senior Design Mentor - cai@mtu.edu
# Brad Gipson - Senior Design Student - bmgipson@mtu.edu
# Brandon Lopez - Senior Design Student - balopez@mtu.edu
# Jerod Warren - Senior Design Student - jerodw@mtu.edu
# 3/21/22

# General Information
# Username: HACKUser
# Recommended Password: Pentesttheworld1!
# Lab Locations: /home/HACKUser/LabX


# General User and Lab Installation

# Make sure user runs as root

# This installs the primary 64-bit lab info 
sudo wget https://raw.githubusercontent.com/JerodWarren2000/H.A.C.K/main/LabPrepScript.sh -O /home/kali/LabPrepScript.sh
sudo chmod +x /home/Kali/LabPrepScript.sh
sudo ./home/Kali/LabPrepScript.sh

# Here begins the 32-bit exclusive tool install
mkdir /home/Kali/Lab6
sudo wget https://raw.githubusercontent.com/JerodWarren2000/H.A.C.K/main/lab6-rubberducky/ArduinoInstallScript.sh -O /home/HACKUser/Lab6/ArduinoInstallScript.sh
sudo chmod +x /home/HACKUser/Lab6/ArduinoInstallScript.sh
sudo wget https://raw.githubusercontent.com/JerodWarren2000/H.A.C.K/main/lab6-rubberducky/AttinyPatchScript.sh -O /home/HACKUser/Lab6/AttinyPatchScript.sh
sudo chmod +x /home/HACKUser/Lab6/AttinyPatchScript.sh
sudo wget https://github.com/JerodWarren2000/H.A.C.K/blob/main/lab6-rubberducky/BoardManager.txt -O /home/HACKUser/Lab6/BoardManager.txt 
sudo wget https://github.com/JerodWarren2000/H.A.C.K/blob/main/lab6-rubberducky/RickRollLinux.ino -O RickRollLinux.ino
