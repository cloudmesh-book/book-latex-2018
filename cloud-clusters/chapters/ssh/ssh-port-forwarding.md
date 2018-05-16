# SSH Port Forwarding :o:

SSH Port forwarding (SSH tunneling) creates an encrypted secure
connection between a local computer and a remote computer through
which services can be relayed. Because the connection is encrypted,
SSH tunneling is useful for transmitting information that uses an
unencrypted protocol.

            
## Prerequisites

* Before you begin, you need to check if forwarding is allowed on the
  SSH server you will connect to.
* You also need to have a SSH client on the computer you are working
  on.

If you are using the OpenSSH server:

	vi /etc/ssh/sshd_config 

and look and change the following:

    AllowTcpForwarding = Yes 
    GatewayPorts = Yes

Set the `GatewaysPorts` variable only if you are going to use remote
port forwarding (discussed later in this tutorial). Then, you need to
restart the server for the change to take effect.

## How to Restart the Server 

If you are on:

* Linux, depending upon the init system used by your distribution, run:

	  sudo systemctl restart sshd
	  sudo service sshd restart
	
 Note that depending on your distribution, you may have to change the service to ssh instead of sshd.

* Mac, you can restart the server using:

    sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
    sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

* Windows and want to set up a SSH server, have a look at MSYS2 or Cygwin.

## Types of Port Forwarding

There are three types of SSH Port forwarding:

## Local Port Forwarding 

Local port forwarding lets you connect from your local computer to
another server. It allows you to forward traffic on a port of your
local computer to the SSH server, which is forwarded to a destination
server. To use local port forwarding, you need to know your
destination server, and two port numbers.

Example 1:

		ssh -L 8080:www.cloudcomputing.org:80 <host>

Where `<host>` should be replaced by the name of your laptop.  The -L
option specifies local port forwarding.  For the duration of the SSH
session, pointing your browser at `http://localhost:8080/` would send
you to `http://cloudcomputing.com`

Example 2:

This example opens a connection to the www.cloudcomputing.com jump
server, and forwards any connection to port 80 on the local machine to
port 80 on `intra.example.com`.

		ssh -L 80:intra.example.com:80 www.cloudcomputing.com


Example 3:

By default, anyone (even on different machines) can connect to the
specified port on the SSH client machine. However, this can be
restricted to programs on the same host by supplying a bind address:

		ssh -L 127.0.0.1:80:intra.example.com:80 www.cloudcomputing.com

Example 4:

		ssh -L 8080:www.Cloudcomputing.com:80 -L 12345:cloud.com:80 <host>
		
This would forward two connections, one to `www.cloudcomputing.com`, the
other to `www.cloud.com`. Pointing your browser at
`http://localhost:8080/` would download pages from
www.cloudcomputing.com, and pointing your browser to
`http://localhost:12345/` would download pages from www.cloud.com.

Example 5:

The destination server can even be the same as the SSH server.

		ssh -L 5900:localhost:5900 <host>

The LocalForward option in the OpenSSH client configuration file can
be used to configure forwarding without having to specify it on
command line.

## Remote Port Forwarding

Remote port forwarding is the exact opposite of local port
forwarding. It forwards traffic coming to a port on your server to
your local computer, and then it is sent to a destination. The first
argument should be the remote port where traffic will be directed on
the remote system. The second argument should be the address and port
to point the traffic to when it arrives on the local system.

		ssh -R 9000:localhost:3000 user@clodcomputing.com
		
SSH does not by default allow remote hosts to forwarded ports. To
enable remote forwarding add the following to: /etc/ssh/sshd_config

		GatewayPorts yes


	$ sudo vim /etc/ssh/sshd_config

and restart SSH

	$ sudo service ssh restart
	
After above steps you should be able to connect to the server
remotely, even from your local machine. `ssh -R` first creates an SSH
tunnel that forwards traffic from the server on port 9000 to your
local machine on port 3000.
		
## Dynamic Port Forwarding

Dynamic port forwarding turns your SSH client into a SOCKS proxy
server.  SOCKS is a little-known but widely-implemented protocol for
programs to request any Internet connection through a proxy
server. Each program that uses the proxy server needs to be configured
specifically, and reconfigured when you stop using the proxy server.

		ssh -D 5000 user@clodcomputing.com
		
The SSH client creates a SOCKS proxy at port 5000 on your local
computer. Any traffic sent to this port is sent to its destination
through the SSH server.

Next, you’ll need to configure your applications to use this server.
The *Settings* section of most web browsers allow you to use a SOCKS
proxy.




