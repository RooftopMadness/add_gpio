# add_gpio 
This is modified from mcbridejc's gist, all respects to him; https://gist.github.com/mcbridejc/d060602e892f6879e7bc8b93aa3f85be

This is to add an extra CS pin to SPI.0 using gpio pin 22

use:

git clone https://github.com/RooftopMadness/add_gpio.git  //download necesary files

cd /add_gpio  //select newly downloaded directory

dtc -@ -I dts -O dtb -o spi-cs-extend.dtbo spi-cs-extend.dts  //convert a file to binary

cp spi-cs-extend.dtbo /boot/overlays  //copy the newly generated binary file to the boot directory

echo 'dtoverlay=spi-cs-extend' >> /boot/config.txt  //add line to config.txt in boot so the added file gets used

