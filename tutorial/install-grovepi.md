# Enable remote access

enable vnc
enable ssh



# Install GrovePi

**WARNING:** Do not install the Grovepi shield yet

	sudo apt-get update
	sudo apt-get install emacs -y
	cd /home/pi/Desktop
	sudo git clone https://github.com/DexterInd/GrovePi
	cd /home/pi/Desktop/GrovePi/Script
	sudo chmod +x install.sh
	sudo ./install.sh
	sudo reboot

After the reboot we install the following

	sudo pip install grovepi
	sudo shutdown -h now
	
	
**ONlY NOW put the grove shield on and power on**

check 

	sudo i2cdetect -y 1
	
If everything goes right you will see:
	     
        0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
	00:          -- 04 -- -- -- -- -- -- -- -- -- -- -- 
	10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
	70: -- -- -- -- -- -- -- --        
	
# Test a joystick

	cd ~/Desktop/GrovePi/Software/Python/   
	python grove_thumb_joystick.py
	
You will see output such as

	('x =', 497, ' y =', 513, ' Rx =', 10.583501006036217, ' Ry =', 9.941520467836257, ' click =', 0)
	('x =', 496, ' y =', 513, ' Rx =', 10.625, ' Ry =', 9.941520467836257, ' click =', 0)
	('x =', 497, ' y =', 513, ' Rx =', 10.583501006036217, ' Ry =', 9.941520467836257, ' click =', 0)

# tkinter

You can install tkinter as follows

	sudo apt-get install python-tk
	sudo apt autoremove

# install cloudmesh.pi

	sudo apt-get install python-dev python-setuptools
	sudo apt-get install libjpeg-dev -y
	pip install Pillow
	mkdir ~/github
	cd ~/github
	git clone git@github.com:cloudmesh/cloudmesh.pi.git
	git checkout dev
	pip install -e .

The last command allows us to modify the code and have it directly working. This will take quite a while as it installs numpy also.

# motor

<https://cdn-learn.adafruit.com/downloads/pdf/adafruit-16-channel-servo-driver-with-raspberry-pi.pdf>

	cd ~/github
	git clone https://github.com/adafruit/Adafruit_Python_PCA9685.git
	cd Adafruit_Python_PCA9685
	sudo python setup.py install
	sudo python3 setup.py install

# Making the board LED blink

The green LED can be made blinking as follows in root

	echo 1 > /sys/class/leds/led0/brightness
	echo 0 > /sys/class/leds/led0/brightness

THis can also be done via a file and if combined witth an uploades key into authorized_keys, we can controll them via ssh

	ssh pi@red03 "echo 1 > led; sudo cp led /sys/class/leds/led0/brightness"		
	ssh pi@red03 "echo 0 > led; sudo cp led /sys/class/leds/led0/brightness"

# Find PIs on the network

	arp -a | fgrep "b8:27:eb"

# (obsolete as the above works) New kernel has a bug

Run this

	sudo rpi-update 52241088c1da59a359110d39c1875cda56496764.

# Enable remote access
 




# Set up Grove PI

Setup the rasperry grove pi software

	sudo curl -kL dexterindustries.com/update_grovepi | bash
	sudo reboot
	
Setup the examples
	
	cd /home/pi/Desktop
	sudo git clone https://github.com/DexterInd/GrovePi

# GrovePI Firmware update

<https://www.dexterindustries.com/GrovePi/get-started-with-the-grovepi/updating-firmware/>

	cd Desktop/
    git clone https://github.com/DexterInd/GrovePi.git
    cd /home/pi/Desktop/GrovePi/Firmware
    sudo chmod +x firmware_update.sh
    sudo ./firmware_update.sh

say `y`

You will see 

	avrdude: safemode: Fuses OK

which indicates the firmware update was successfully completed.

check the firmware version

	python ~/Desktop/GrovePi/Software/Python/grove_firmware_version_check.py

# Install 4 inch monitor

We assume you have VNC and ssh enabled as services in the prefernces.

The documentation to the monitor is located at 

<https://www.waveshare.com/wiki/4inch_HDMI_LCD>

The best way to install it is to use ssh pi@<YOURIP>

and use the terminal of you laptop. Frst download the driver with

	sudo su
	wget http://www.waveshare.com/w/upload/0/00/LCD-show-170703.tar.gz
	cd /boot
	hdmi_group=2
	hdmi_mode=87
	hdmi_cvt 480 800 60 6 0 0 0
	dtoverlay=ads7846,cs=1,penirq=25,penirq_pull=2,speed=50000,keep_vref_on=0,swapxy=0,pmax=255,xohms=150,xmin=200,xmax=3900,ymin=200,ymax=3900
	display_rotate=3

This will reboot the pi. Next install the touch screen driver with

	cd /boot
	wget http://www.waveshare.com/w/upload/0/00/LCD-show-170703.tar.gz
	sudo tar xvf LCD-show-170703.tar.gz 
	cd LCD-show
	chmod +x LCD4-800x480-show
	./LCD4-800x480-show

# GUI

	sudo pip3 install guizero
	
	