## Create a Raspian SD-Card from a Ubuntu Machine
### hid-sp18-503

* In the file explorer, right clichk on the sd card and format the sd card
* Run ```df -h``` to list all the drives in the computer
* Insert the sd card and run the command again
* Now a new entry will be listed which is the sd card
* The left column of the results from df -h command gives the device name of your SD card.
  It will be listed as something like /dev/mmcblk0p1 or /dev/sdX1,
  where X is a lower case letter indicating the device.
  The last part (p1 or 1 respectively) is the partition number.
* Note down the name of the sd card (without the partition)
* Unmount the card so that the card can not be read from or written to
* Run 

  ```unmount dev/mmcblk0p1``` 

  Make sure to use correct name for the card
* If your card has multiple partitions unmount all partitions
* Next write the image to the sd card.
* Run 

  ```dd bs=4M if=<path to .img> of=/dev/mmcblk0 status=progress conv=fsunc```
  
  Make sure ```if=``` contains the path to image and ```of=``` contains the name 
  of the sd card otherwise you may ruin your hard disk

### Checking that the image was written properly

* Dreate an image again from the sd card
* Run 

  ```dd bs=4M if=/dev/sdX of=from-sd-card.img```
  
* Truncate the image to be the the same size as that of the raspbian image

  ```truncate --reference <original raspbian image> from-sd-card.img```
  
* Run diff to see if the two files are same
* Run 

  ```diff -s from-sd-card.img <odiginal raspbian image>```
  
* Diff should say that the two files are same
