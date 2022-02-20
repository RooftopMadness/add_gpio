dtc -@ -I dts -O dtb -o spi-cs-extend.dtbo spi-cs-extend.dts
echo "converted spi-cs-extend to binary"
cp spi-cs-extend.dtbo /boot/overlays
echo "moved spi-cs-extend to /boot/overlays"
echo 'dtoverlay=spi-cs-extend' >> /boot/config.txt
echo "Added dtoverlay=spi-cs-extend tp /boot/config.txt"
echo "ONLY RUN THIS SCRIPT ONCE, IF RUN TWICE, DELETE EXTRA LINE IN /boot/config.txt"
echo "reboot and run sudo ls /dev to check if a third spi cs got added"