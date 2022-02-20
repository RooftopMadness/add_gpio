# add_gpio
This is modified from mcbridejc's gist, all respects to him; https://gist.github.com/mcbridejc/d060602e892f6879e7bc8b93aa3f85be

use 
git clone https://github.com/RooftopMadness/add_gpio.git /n
cd /add_gpio /n
dtc -@ -I dts -O dtb -o spi-cs-extend.dtbo spi-cs-extend.dts /n
cp spi-cs-extend.dtbo /boot/overlays /n
echo 'dtoverlay=spi-cs-extend' >> /boot/config.txt /n

