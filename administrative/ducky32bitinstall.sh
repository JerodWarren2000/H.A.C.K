sudo apt-get update
wget https://downloads.arduino.cc/arduino-1.8.19-linuxarm.tar.xz -O /home/kali/arduino-1.8.19.tar.xz
sudo tar -xf /home/kali/arduino-1.8.19-linuxarm.tar.xz
sudo /home/kali/arduino-1.8.19/install.sh
sudo apt install git                                 
git clone https://github.com/micronucleus/micronucleus                     
cd micronucleus/commandline/
sudo apt install libusb-dev
make
cp micronucleus ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4
sudo cp 49-micronucleus.rules /etc/udev/rules.d/.  
git clone https://github.com/digistump/avr-dummy
cd avr-dummy
make
cp avrdude ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
