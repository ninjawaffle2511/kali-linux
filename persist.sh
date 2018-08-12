#!/bin/bash
# Written by Jack Girard, 2018
# Creates persistent linux volume on USB partition

#functions
rebootprompt () {
echo -n "Your system needs to be rebooted for persistence to be enabled. Reboot now? (y/n): "
read $rebootinput
if [ $rebootinput = y ] || [ $rebootinput = Y ]
then
	echo
	echo "Rebooting..."
	reboot
elif [ $rebootinput = n ] || [ $rebootinput = N ]
then
	echo
	echo "Exiting..."
	exit
else
	echo	
	echo "Invalid input. Please enter "y" for Yes or "n" for no"
	rebootprompt
fi
}

#script
fdisk -l
echo
echo -n "Enter the mount point of the USB: "
read $usbpath
echo
mkdir -p /mnt/my_usb
mount $usbpath /mnt/my_usb
echo "/ union" > /mnt/my_usb/persistence.conf
umount /dev/sdc2
echo
echo -n "Your system needs to be rebooted for persistence to be enabled. Reboot now? (y/n): "
read $rebootinput
if [ $rebootinput = y ] || [ $rebootinput = Y ]
then
	echo
	echo "Rebooting..."
	reboot
elif [ $rebootinput = n ] || [ $rebootinput = N ]
then
	echo
	echo "Exiting..."
	exit
else
	echo	
	echo "Invalid input. Please enter "y" for Yes or "n" for no"
	rebootprompt
fi

