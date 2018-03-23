# PI DHCP Server Tutorial
 
This is a tutorial for setting up Dynamic Host Configuration Protocol (DHCP) server on a
Raspberry Pi Cluster. The OS on these Pi's is RASPBIAN STRETCH WITH DESKTOP released on 
2017-11-29. 

## Acknowledgement
* This tutorail was created on 02/25/2018 by Min Chen (hid-sp18-405)
* The cluster was set up by Bertolt Sobolik (hid-sp18-419) and we were working in a group to 
build a spark cluster using 5 Raspberry Pi's.
* The steps and instruction in this tutorial is combined from several web resources: 
[link1](https://www.raspberrypi.org/learning/networking-lessons/lesson-3/plan/),
[link2](http://my-music.mine.nu/images/rpi_raspbianwheezy_dhcp_server.pdf),
[link3](https://tekmarathon.com/2017/02/16/hadoop-and-spark-installation-on-raspberry-pi-3-cluster-part-3/),
[link4](https://blog.monotok.org/setup-raspberry-pi-dhcp-server/),
and [link5](https://askubuntu.com/questions/265504/how-to-monitor-dhcp-leased-ip-address).

## Introduction
The Dynamic Host Configuration Protocol (DHCP) enables any of the computers on the local area
network (LAN) to be given a network configuration automatically as soon as the boot process on the
machine gets underway. Most routers are capable of this function. This function can also be 
carried out by a server computer, although almost any of your computers can fulfil the role. The
other computers which are configured to take advantage of this service are called DHCP Clients,
and need to have their networking setup configured to use DHCP.

In the case here, one of the five Pi's in the cluster (hostname: red00) will be set to be the 
DHCP server, and the rest four with hostnames red01, red02, red03, red04 will then be DHCP 
clients. 

The information which can be passed from DHCP Server to its clients includes:
- a suitable IP Address, either permanently or leased for a defined period;
- the address of your router (aka gateway);
- an address of one or more Domain Name Servers (DNS) within or outwith your LAN or both

If you want to get an introduction about the logical process followed by a DHCP service, please 
follow [this link](https://www.raspberrypi.org/learning/networking-lessons/lesson-3/plan/)

## Choose the Pi for DHCP server
choose one of the Pi's as the DHCP server, using the Pi with hostname *red00* as an example here
. Log into this Pi and open a terminal. The following steps are all processed in the terminal of
 this chosen Pi.

## Software installation
The first step is to install a package dhcpd, which is a popular DHCP server for the Pi. In the 
terminal
    
        sudo apt-get update
        sudo apt-get install isc-dhcp-server
        
At the end of the installation process, the DHCP server daemon will be started and it will 
**fail**, because the configuration has not been done. It will get fixed in later steps.

## Configure the DHCP server
The configuration file for the DHCP server is at */etc/dhcp/dhcpd.conf* 
Start the editing process with *nano* as follows: 

        sudo nano /etc/dhcp/dhcpd.conf
        
Define subnet which will be the network that all the other Pi's will connect to. Add the 
following lines to the file */etc/dhcp/dhcpd.conf*:

        subnet 192.168.2.0 netmask 255.255.255.0 {
            range 192.168.2.100 192.168.2.200;
            option broadcast-address 192.168.2.255;
            option routers 192.168.2.1;
            max-lease-time 7200;
            option domain-name "red00";
            option domain-name-servers 8.8.8.8;
        }
Note: The subnet and netmask are IP values required for assisting communications across your LAN.
- subnet: you can obtain the IP Address of a computer on your LAN using the Linux ifconfig
command. Take the *Inet Addr* value and replace its final octet with a zero to get your subnet;
- netmask: the value given above should be fine for your netmask;
- range: this is the range of IP Addresses (from - to) for serving to clients by this DHCP Service.
If you have more than one DHCP Server on your LAN ensure that their ranges do not overlap; You 
may have two ranges such as 
        
        range 192.168.2.100 192.168.2.120
        range 192.168.2.150 192.168.2.200
    to refrain the DHCP server from handling out some of the addresses (from 121 to 149)
- domain-name-server:  If you have a DNS service for machines on your LAN, enter the
server IP address or you can use public DNS Services such as Google's, which are at 8.8.8.8. and
 8.8.4.4.

Finally, Save your changes to the file with *[Ctrl]+O* and exit nano with *[Ctrl]+X*.

## Change the interface of DHCP service 
Now you need to tell the DHCP service the interface to hand out addresses on. Edit the following
file:
        
        sudo nano /etc/default/isc-dhcp-server
        
Find the following section (most likely at the end of the file):
    
        # On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
        #       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
        INTERFACES=""
        
And change the last line to:
    
        INTERFACES="eth0"

## Set static IP Address for the server
The next step is to set a static IP address on the Raspberry pi as this won't be able to start 
the DHCP service without it. We use *nano* to edit the file at */etc/network/interfaces*:

        sudo nano /etc/network/interfaces
        
Add the following lines:

        auto eth0
        iface eth0 inet static
            address 192.168.2.1
            netmask 255.255.255.0
            
If you have a line like: 

        iface eth0 inet dhcp
        
be sure to comment it out. This line tells the Raspberry Pi to try and get an IP address from a 
DHCP server for the interface eth0. So essentially this is making it a DHCP client, but we want 
to make this a DHCP server so this line must be disabled.

Now this Raspberry Pi will now always have the IP address 192.168.2.1. You can double-check this
 by entering the command *ifconfig*; the IP address should be shown on the second line just after 
 *inet addr*.
 
## Restart the DCHP service
Finally, to complete the set-up, restart the DHCP service by the following command:
        
        sudo service isc-dhcp-server stop
        sudo service isc-dhcp-server start
        
## Checking the currently leased addresses
Run the following command to check the currently assigned addresses: 

        cat /var/lib/dhcp/dhcpd.leases
        
You should expect something like the following:

      lease 192.168.2.102 {
          starts 0 2018/02/25 21:36:16;
          ends 0 2018/02/25 21:46:16;
          tstp 0 2018/02/25 21:46:16;
          cltt 0 2018/02/25 21:36:16;
          binding state active;
          next binding state free;
          rewind binding state free;
          hardware ethernet b8:27:eb:42:c9:e9;
          uid "\001\270'\353B\311\351";
          set vendor-class-identifier = "dhcpcd-6.11.5:Linux-4.9.59-v7+:armv7l:BCM2835";
          client-hostname "red01";
      }
      lease 192.168.2.100 {
          starts 0 2018/02/25 21:41:09;
          ends 0 2018/02/25 21:51:09;
          tstp 0 2018/02/25 21:51:09;
          cltt 0 2018/02/25 21:41:09;
          binding state active;
          next binding state free;
          rewind binding state free;
          hardware ethernet b8:27:eb:60:b8:8e;
          uid "\001\270'\353`\270\216";
          set vendor-class-identifier = "dhcpcd-6.11.5:Linux-4.9.59-v7+:armv7l:BCM2835";
          client-hostname "red03";
      }
      lease 192.168.2.101 {
          starts 0 2018/02/25 21:41:10;
          ends 0 2018/02/25 21:51:10;
          tstp 0 2018/02/25 21:51:10;
          cltt 0 2018/02/25 21:41:10;
          binding state active;
          next binding state free;
          rewind binding state free;
          hardware ethernet b8:27:eb:9a:55:13;
          uid "\001\270'\353\232U\023";
          set vendor-class-identifier = "dhcpcd-6.11.5:Linux-4.9.59-v7+:armv7l:BCM2835";
          client-hostname "red02";
      }
      lease 192.168.2.103 {
          starts 0 2018/02/25 21:41:11;
          ends 0 2018/02/25 21:51:11;
          tstp 0 2018/02/25 21:51:11;
          cltt 0 2018/02/25 21:41:11;
          binding state active;
          next binding state free;
          rewind binding state free;
          hardware ethernet b8:27:eb:3a:7c:7c;
          uid "\001\270'\353:||";
          set vendor-class-identifier = "dhcpcd-6.11.5:Linux-4.9.59-v7+:armv7l:BCM2835";
          client-hostname "red04";
      }

Note that in this case, the 4 Pi's with hostnames: red01, red02, red03, and red04 are assigned 
IP addresses 192.168.2.102, 192.168.2.101, 192.168.2.100 and 192.168.2.103 respectively

An alternative way is to use the following command:

        dhcp-lease-list --lease PATH_TO_LEASE_FILE
        
which would give a cleaner look such as:

        Reading leases from /var/lib/dhcp/dhcpd.leases
        MAC                IP              hostname       valid until         manufacturer        
        ==================================================================================
        b8:27:eb:3a:7c:7c  192.168.2.103   red04          2018-02-25 21:56:13 -NA-                
        b8:27:eb:42:c9:e9  192.168.2.102   red01          2018-02-25 21:50:30 -NA-                
        b8:27:eb:60:b8:8e  192.168.2.100   red03          2018-02-25 21:56:11 -NA-                
        b8:27:eb:9a:55:13  192.168.2.101   red02          2018-02-25 21:56:12 -NA-  
        
## Configure fixed IP’s for clients
It is always handy to have the dhcp server assign fixed addresses to each node in the cluster so
that it is easy to remember the node by IP addresses. For instance next node in the cluster is 
red01 and it would be helpful to have a fixed IP for example 192.168.2.50. 
 
To do this, we modify the */etc/dhcp/dhcpd.conf* by:
           
           sudo nano /etc/dhcp/dhcpd.conf
 and add the following lines:
 
        host red01 {
            hardware ethernet b8:27:eb:42:c9:e9;
            fixed-address 192.168.2.50;
        }
 
 Notice that *b8:27:eb:42:c9:e9* is the so-called MAC Address of the Ethernet interface (network
adapter) of the machine which you wish to name node100. It provides a hardware reference on the
client for the server to use in network communications.You can find the MAC Address(es) of the 
Ethernet interface(s) on any computer using the *ifconfig* command. You may also notice that the
 previous two commands of checking the currently leased addresses will also provide MAC Addresses.
 
**Warning**: if you wish to have your DHCP Server award a fixed IP Address it should be one outside
the DHCP normally assigned range of IP Addresses.

Another thing to notice is that the previous two commands of checking the currently leased 
addresses does not include the clients given a fixed address. For example, if one runs the 
command after the fixed IP config for red01: 

        dhcp-lease-list --lease PATH_TO_LEASE_FILE
        
the result would be:

        Reading leases from /var/lib/dhcp/dhcpd.leases
        MAC                IP              hostname       valid until         manufacturer        
        ===================================================================================
        b8:27:eb:3a:7c:7c  192.168.2.103   red04          2018-02-25 21:56:13 -NA-                
        b8:27:eb:60:b8:8e  192.168.2.100   red03          2018-02-25 21:56:11 -NA-                
        b8:27:eb:9a:55:13  192.168.2.101   red02          2018-02-25 21:56:12 -NA-   
        
red01 is no longer in the list because it is assigned a fixed-address 192.168.2.50

### Checking the currently leased addresses for fixed IP clients
In several of the sources listed at the beginning, they have a command to check the currently 
leased addresses for fixed IP clients:
        
        cat /var/lib/dhcp/dhclient.eth0.leases
        
**However, this does not work on the cluster in our case, I am still trying to figure out how to 
do this.**
