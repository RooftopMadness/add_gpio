# add_gpio 
This is modified from mcbridejc's gist, all respects to him; https://gist.github.com/mcbridejc/d060602e892f6879e7bc8b93aa3f85be

This is to add an extra CS pin to SPI.0 using gpio pin 22

use:

git clone https://github.com/RooftopMadness/add_gpio.git  //download neces

cd /add_gpio 

dtc -@ -I dts -O dtb -o spi-cs-extend.dtbo spi-cs-extend.dts 

cp spi-cs-extend.dtbo /boot/overlays 

echo 'dtoverlay=spi-cs-extend' >> /boot/config.txt 

