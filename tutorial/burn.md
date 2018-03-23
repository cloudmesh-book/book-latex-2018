
# Install Raspbian on an SD card using MacOS

* The instruction followed is at [instructions](https://www.raspberrypi
.org/documentation/installation/installing-images/)
* Operating system: MacOS

# Method1 - Without using NOOBS

## Download 

* Download page is [here](https://www.raspberrypi.org/downloads/)
* Choose Raspbian instead of NOOBS
* Within raspbian, there are two versions, RASPBIAN STRETCH WITH DESKTOP and RASPBIAN STRETCH 
LITE. The first one was downloaded (full version)

## Writing an image to the SD card 

(some steps are copied from [instructions](https://www.raspberrypi.org/documentation/installation/installing-images/))
* Followed the instructions at the beginning, download and install [Etcher](https://etcher.io/)
* Connect an SD card reader with the SD card inside 
* Open Etcher and select from hard drive the Raspberry Pi .img or  .zip file to write to the SD 
card.
* Select the SD card to write the image to.
* Review selections and click *Flash!* to begin writing data to the SD card.


# Method2 - Using NOOBS

## Download

* download page is [here](https://www.raspberrypi.org/downloads/noobs/)

## How to install NOOBS on an SD card

(some steps are copied from [instructions](https://www.raspberrypi.org/documentation/installation/noobs.md))
Once you've downloaded the NOOBS zip file, you'll need to copy the contents to a formatted SD 
card on your computer. Here are the detailed steps: 
* Format an SD card which is 8GB or larger as FAT. 
* Download and extract the files from the NOOBS zip file.
* Copy the extracted files onto the SD card that you just formatted, so that this file is at 
the root directory of the SD card. Please note that in some cases it may extract the files into 
a folder; if this is the case, then please copy across the files from inside the folder rather 
than the folder itself.
* On first boot, the *RECOVERY* FAT partition will be automatically resized to a minimum, and a 
list of OSes that are available to install will be displayed.
