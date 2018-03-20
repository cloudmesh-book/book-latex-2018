# Virtual Machine Management with KVM and QEMU
>

## Improvement Notes


There may still be a an issue with the presentation as it may not come out properly that qemu has multiple opertaing modes making it possible to use it for various things. On piazza they for example mentioned system emulation of ARM based systems, but you can do others with this. See the wikipedia entry for example.

We may want to integrate that into the document. Your document only describes one of them

Than you may also look at this. (not sure if true) https://stackoverflow.com/questions/43704856/what-is-the-difference-qemu-vs-virtualbox

This discussion, also shows that we may need a different section such as an overview of all virtualization software an example is 

http://opensourceforu.com/2012/05/virtualisation-faceoff-qemu-virtualbox-vmware-player-parallels-workstation/

Also can you provide links to libvirt, kvm


## Virtualization Technologies

### Libvirt

`libvirt` is a library that provides a common API for managing popular virtualization solutions, among them KVM and Xen. The library provides a normalized management API for these virtualization solutions, allowing a stable, cross-hypervisor interface for higher-level management tools. The library also provides APIs for management of virtual networks and storage on the VM Host Server. The configuration of each VM Guest is stored in an XML file.

### KVM

`KVM` stands for Kernel Virtual Machine, and it is a module of the Linux kernel which allows a program to access and make use of the virtualization capabilities of modern processors, by exposing the `/dev/kvm` interface.

KVM (for Kernel-based Virtual Machine) is a full virtualization solution for Linux on x86 hardware containing virtualization extensions (Intel VT or AMD-V). It consists of a loadable kernel module, kvm.ko, that provides the core virtualization infrastructure and a processor specific module, kvm-intel.ko or kvm-amd.ko.

Using KVM, one can run multiple virtual machines running unmodified Linux or Windows images. Each virtual machine has private virtualized hardware: a network card, disk, graphics adapter, etc.

KVM is open source software. The kernel component of KVM is included in mainline Linux, as of 2.6.20. 

### QEMU

`QEMU` is a virtualization technology emulator that allows you to run operating systems and Linux distributions easily on your current system without the need to install them or burn their ISO files.

When used as a machine emulator, QEMU can run OSes and programs made for one machine (e.g. an ARM board) on a different machine (e.g. your own PC). By using dynamic translation, it achieves very good performance.

When used as a virtualizer, QEMU achieves near native performance by executing the guest code directly on the host CPU. QEMU supports virtualization when executing under the Xen hypervisor or using the KVM kernel module in Linux. When using KVM, QEMU can virtualize x86, server and embedded PowerPC, 64-bit POWER, S390, 32-bit and 64-bit ARM, and MIPS guests.

Once QEMU has been installed, it should be ready to run a guest OS from a disk image. This image is a file that represents the data on a hard disk. From the perspective of the guest OS, it actually is a hard disk, and it can create its own filesystem on the virtual disk.

You can download a few guest OS images from the [QEMU website](https://wiki.qemu.org/Testing/System_Images). System_Images, including a simple 8 MB image of a Linux distro (which is meant primarily for testing; note that it lacks the e1000 driver and therefore cannot do networking out-of-the-box). To run it, download and unzip the image in a folder and run the QEMU command.


## Install QEMU

### To install QEMU on Ubuntu/Linux Mint:

To install quemu on Ubuntu please use

	sudo apt install qemu qemu-kvm libvirt-bin

### To install QEMU on MaxOS:

On OSX qemu can be installed with homebrew 

	brew install qemu

## Create a Virtual Hard Disk with QEMU

To create an image file with the size of 10GB and `qcow2` format (default format for QEMU images), run:

```
qemu-img create -f qcow2 testing-image.img 10G
```

Note that a new file called “testing-image.img” is now created at your home folder (or the place where you run the terminal). Note also that the size of this file is not 10 Gigabytes, it’s around 150KB only; QEMU won’t use any space unless needed by the virtual operating system, but it will set the maximum allowed space for that image to 10 Gigabytes only.


## Install Ubuntu on the Virtual Hard Disk

Now that we’ve created our image file, if we have an ISO file for a Linux distribution or any other operating system and we want to test it using QEMU and use the new image file we created as a hard drive, we can run:

```
qemu-system-x86_64 \
	-m 1024 \
	-boot d \
	-enable-kvm \
	-smp 3 \
	-net nic -net user \
	-hda testing-image.img \
	-cdrom ubuntu-16.04.iso
```

Explain the previous command part by part:

`-m 1024`: 

> Here we chose the RAM amount that we want to provide for QEMU when running the ISO file. We chose 1024MB here. You can change it if you like according to your needs.

`-boot -d`: 

> The boot option allows us to specify the boot order, which device should be booted first? -d means that the CD-ROM will be the first, then QEMU will boot normally to the hard drive image. We have used the `-cdrom` option as you can see at the end of the command. You can use `-c` if you want to boot the hard drive image first.

`-enable-kvm`: 

> This is a very important option. It allows us to use the KVM technology to emulate the architecture we want. Without it, QEMU will use software rendering which is very slow. That’s why we must use this option, just make sure that the virtualization options are enabled from your computer BIOS.

`-smp 3`: 

> If we want to use more than 1 core for the emulated operating system, we can use this option. We chose to use 3 cores to run the virtual image which will make it faster. You should change this number according to your computer’s CPU.

`-net nic -net user`:

> By using these options, we will enable an Ethernet Internet connection to be available in the running virtual machine by default.

`-hda testing-image.img`: 

> Here we specified the path for the hard drive which will be used. 
> In our case, it was the testing-image.img file which we created
> before.

`-cdrom ubuntu-16.04.iso`: 

> Finally we told QEMU that we want to boot our ISO file 
> “ubuntu-16.04.iso”.



## Start Ubuntu with QEMU

Now, if you want to just boot from the image file without the ISO file (for example if you have finished installing and now you always want to boot the installed system), you can just remove the `-cdrom` option:

```
qemu-system-x86_64 -m 1024 -boot d -enable-kvm -smp 3 -net nic -net user -hda testing-image.img
```

## Manage VM guests with `virsh`

`virsh` is a command line interface tool for managing guests and the hypervisor.

To initiate a hypervisor session with virsh :

```
virsh connect <name>
```

Where <name> is the machine name of the hypervisor. If you want to initiate a read-only connection, append the above command with -readonly.

To display the guest list and their current states with virsh:

```
virsh list [ --inactive  |  --all]
```

The --inactive option lists inactive domains (domains that have been defined but are not currently active). The --all domain lists all domains, whether active or not.

## Refernces

General

* <https://www.qemu.org/>
* <https://wiki.qemu.org/Testing/System_Images>
* <https://qemu.weilnetz.de/doc/qemu-doc.html>
* <https://en.wikipedia.org/wiki/QEMU>
* <https://doc.opensuse.org/documentation/leap/virtualization/html/book.virt/book.virt.html>

Comparision

* <http://opensourceforu.com/2012/05/virtualisation-faceoff-qemu-virtualbox-vmware-player-parallels-workstation/>
* <https://stackoverflow.com/questions/43704856/what-is-the-difference-qemu-vs-virtualbox>