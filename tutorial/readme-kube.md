# Raspberry Pi Kubernetes Cluster

- Tim Whitson @whitstd (hid-sp18-526)
- Juliano Gianlupi @JulianoGianlupi (hid-sp18-601)

## Note

This tutorial is for Raspbian Stretch.

## Hardware

Each cluster consists of:

* 1 head node ([setup](head)) (recommend following the instructions
  here first)
* 4 compute nodes

## Configuration

### Flash Raspbian

1. Download Raspbian image <https://www.raspberrypi.org/downloads/>.
2. Download Etcher <https://etcher.io/>.
3. Using Etcher, flash Raspbian onto SD card.

### Keyboard Layout

The default keyboard layout may need to be changed to US.

Menu -> Preferences -> Mouse and Keyboard Settings -> Keyboard tab -> Variant ->
 English (US)

### Change password

Change password:

    passwd
    
Enter new password via prompts.

### Change hostnames

Change hostname of each raspberry pi (in descending order).

1. rp0
2. rp1
3. rp2
4. rp3
5. rp4

This can be done on the command line using:

    sudo raspi-config
    
Or on the desktop by going to Menu -> Preferences -> Raspbery Pi Configuration

Or by modifying **/etc/hostname**

### Configure Head Node

Install Dependencies:

    apt-get update
    apt-get install -qy dnsmasq clusterssh iptables-persistent

#### Create Static IP

Copy old config (-n flag prevents overwrite):

    \cp -n /etc/dhcpcd.conf /etc/dhcpcd.conf.old
    
To update DHCP configuration, add the following to **/etc/dhcpd.conf**:
 
    interface wlan0
    metric 200

    interface eth0
    metric 300
    static ip_address=192.168.50.1/24
    static routers=192.168.50.1
    static domain_name_servers=192.168.50.1

#### Configure DHCP Server:

Copy old config (-n flag prevents overwrite):

    \cp -n /etc/dnsmasq.conf /etc/dnsmasq.conf.old
    
To update DNS configuration, add the following to **/etc/dhcpd.conf**
    
    interface=eth0
    interface=wlan0

    dhcp-range=eth0, 192.168.50.1, 192.168.50.250, 24h
    
#### NAT Forwarding

To Setup NAT Forwarding, uncomment the following line in **/etc/sysctl.conf**:

    net.ipv4.ip_forward=1
    
#### IP Tables

Create IP Tables:

    sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
    sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
    sudo iptables -A FORWARD -i $INTERNAL -o wlan0 -j ACCEPT
    sudo iptables -A FORWARD -i $EXTERNAL -o eth0 -j ACCEPT

Make rules permanent:

    iptables-save > /etc/iptables/rules.v4

### SSH Configuration

**Note: Gregor says this is not best practice**

Generate SSH keys:

    ssh-keygen -t rsa
    
Copy key to each compute node:

    ssh-copy-id <hostname>
    
For hostnames rp1-4 (final node names will be: rp0, rp1, rp2, rp3, rp4).

### Configure Cluster SSH

To update Cluster SSH configuration, add the following to **/etc/clusters**:

    rpcluster rp1 rp2 rp3 rp4

Now you can run commands to all clusters by:

    cssh rpcluster

# Intructions for installing kubernetes

## First install doker, disable swap, install kubeadm

All the following steps are made automatically by the 
docker_kubernetes_install.sh script.

### Install docker
In order to install kubernetes you first need to have docker installed. This is 
very strait foward.

### Disable swap memory
Docker has an issue (in my opinion severe) in that it is **not compatible with 
SWAP memory**, therefore it is neeeded to disable it. This might create some 
issues, if you encounter them you should try to rebbot the cluster again, if 
that fails change line 16 in the script from

    orig="$(head -n1 /boot/cmdline.txt) cgroup_enable=cpuset cgroup_memory=1"

to

    orig="$(head -n1 /boot/cmdline.txt) cgroup_enable=cpuset cgroup_memory=memory".

### Installing kubernetes administrator

Finally, to configure kubernetes you'll need kubeadm. Now the Pi needs to be 
rebooted.

### *All of this will be done by the script, don't worry* (maybe worry)

## For the nodes

All of the above needs to be done in each node aswell. The script
copy_dk_kub_install_script_to_nodes.sh should copy the needed script to each of 
them and run it. It is set up to work with 4 nodes named rp\<number\> with pi as 
the username (the numbers start at 1 because the head node is rp0). Changing 
the number of nodes is trivial, if all of your nodes have the same username it 
is also trivial.

If your nodes are not configured like that you'll need to change 
this script or copy docker_kubernetes_install.sh to each of the nodes manually.

## Now some more explanations on the scripts


First docker needs to be installed

    curl -sSL get.docker.com \
      | sh \
      && sudo usermod pi -aG docker

Now, as docker does not work with SWAP memory it needs to be disabled, this is
easy enough 

    sudo swapoff -a 
    echo Adding " cgroup_enable=cpuset cgroup_enable=1" to /boot/cmdline.txt
    sudo cp /boot/cmdline.txt /boot/cmdline_backup.txt

If after running this script your raspberry pi starts to not work properly 
reboot it once again, if thar does not solve the issue replace cgroup_memory=1 
with cgroup_enable=memory.

    orig="$(head -n1 /boot/cmdline.txt) cgroup_enable=cpuset cgroup_memory=1"
    echo $orig | sudo tee /boot/cmdline.txt

Now kubernetes admin will be installed 


    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - &&\
      echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | \
      sudo tee /etc/apt/sources.list.d/kubernetes.list && \
      sudo apt-get update -q && \
      sudo apt-get install -qy kubeadm
    sudo reboot 

### On the nodes

Docker and kubernetes need to be installed on the nodes, as well as the SWAP 
memory needs to be disabled. This is handled by another script that simply 
copies the installation script to the nodes and runs it.  First copy the script

    for number in {1..4}
	    do 
		    scp /home/pi/docker_kubernites_install.sh \
			    pi@rp$number:/home/pi/docker_kubernites_install.sh
	    done
    exit 0

Now the installation script will be run on the nodes using cssh

    cssh -a "sh docker_kubernites_install.sh"
