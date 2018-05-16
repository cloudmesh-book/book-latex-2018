# Install Raspbian on an SD card using MacOS

* Min Chen (hid-sp18-405)
* Yue Guo (hid-sp18-508)

## Overview

* This section aims at provding instructions for installing a Raspberry Pi operating system, **Raspbian** on an SD card. This SD card can then be used to boot up a Rasperry Pi with the operating system the card carried. 
* Another computer with an SD card reader is needed and we assume the operating system of this computer is **MacOS**.
* The general instruction followed is at [INSTALLING OPERATING SYSTEM IMAGES](<https://www.raspberrypi.org/documentation/installation/installing-images/>) \cite{hid-sp18-405-tutorial-sd-car-osx-general}.
* Section ~\ref{s:nonoob} follows [INSTALLING OPERATING SYSTEM IMAGES](<https://www.raspberrypi.org/documentation/installation/installing-images/>) \cite{hid-sp18-405-tutorial-sd-car-osx-nonoob}. 
* Section ~\ref{s:noob} follows [NOOBS](<https://www.raspberrypi.org/documentation/installation/noobs.md>) \cite{hid-sp18-405-tutorial-sd-car-osx-noob}.
* Operating system: MacOS


## Method1 - Without using NOOBS

~\label{s:nonoob}

### Download 

* Download page is [here](<https://www.raspberrypi.org/downloads/>)
* Choose Raspbian instead of NOOBS
* Within raspbian, there are two versions, RASPBIAN STRETCH WITH
  DESKTOP and RASPBIAN STRETCH LITE. The first one was downloaded
  (fullversion)

### Writing an image to the SD card 

* Followed the instructions at the beginning, download and install
  [Etcher](<https://etcher.io/>)
* Connect an SD card reader with the SD card inside
* Open Etcher and select from hard drive the Raspberry Pi .img or .zip
  file to write to the SD card.
* Select the SD card to write the image to.
* Review selections and click *Flash!* to begin writing data to the SD
  card.


## Method2 - Using NOOBS

~\label{s:noob}

### Download

* download page is [here](<https://www.raspberrypi.org/downloads/noobs/>)

### How to install NOOBS on an SD card

Once you've downloaded the NOOBS zip file, you'll need to copy the
contents to a formatted SD card on your computer. Here are the
detailed steps:

* Format an SD card which is 8GB or larger as FAT.
* Download and extract the files from the NOOBS zip file.
* Copy the extracted files onto the SD card that you just formatted,
  so that this file is at the root directory of the SD card. Please
  note that in some cases it may extract the files into a folder; if
  this is the case, then please copy across the files from inside the
  folder rather than the folder itself.
* On first boot, the *RECOVERY* FAT partition will be automatically
  resized to a minimum, and a list of OSes that are available to
  install will be displayed.

## Resources

* General instructions: 
  [INSTALLING OPERATING SYSTEM IMAGES](<https://www.raspberrypi.org/documentation/installation/installing-images/>) 
  \cite{hid-sp18-405-tutorial-sd-car-osx-general}.
* Instructions for using NOOBS are from
  [NOOBS](<https://www.raspberrypi.org/documentation/installation/noobs.md>)
  \cite{hid-sp18-405-tutorial-sd-car-osx-noob}.
* Instructions without NOOBS are from
  [INSTALLING OPERATING SYSTEM IMAGES](<https://www.raspberrypi.org/documentation/installation/installing-images/>)
  \cite{hid-sp18-405-tutorial-sd-car-osx-nonoob}.
