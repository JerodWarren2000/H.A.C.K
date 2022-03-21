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
