# ssh config :o:

SSH stands for Secure SHell. SSH allows you to connect to that other
system securely and the data exchanged between the servers are secured
and encrypted.  The ssh program on a host receives its configuration
from either the command line or from configuration files:
 
* ~/.ssh/config 
* /etc/ssh/ssh_config

ssh command gets the configuration data from the below three mentioned
sources in the order they are stated:
  
* command line options 

* user-specific configuration file (`~/.ssh/config`)
    
* system-wide configuration file (`/etc/ssh/ssh_config`)

Generating a key pair provides you with two long string of characters:
a public and a private key. You can place the public key on any
server, and then unlock it by connecting to it with a client that
already has the private key. When the two match up, the system unlocks
without the need for a password. You can also secure by protecting the
private key with a passphrase.

## Step 1: Check for Existing SSH Keys
  
Check whether there are already keys on the computer you are using:
	
	ls ~/.ssh

If there are files named id_rsa.pub or id_dsa.pub, then the keys are set up 
already, and we can skip the generating keys step (or delete these files with
rm id* and make new keys).

## Step 2: Generate new SSH Keys

To generate new SSH keys enter the following command:

	ssh-keygen

## Step 3: Store the Keys and Passphrase

Upon entering this command, you'll be asked where to save the key. You can 
either safe it in your default location or enter the location where you want
to save the file and then press Enter.

Next, You'll also be asked to enter a passphrase. This is an additional extra
security which will make the key unusable without your passphrase, so if 
someone else copied your key, they could not impersonate you to gain access. 
If you choose to use a passphrase, enter you passphrase and press Enter, then 
type it again when prompted. If you want, no passphrase, Leave the field empty.

## To see what's in .ssh directory:

```bash
    $ ls ~/.ssh

    authorized_keys
    id_rsa
    id_rsa.pub
    known_hosts
```

* The `id_rsa` file is your private key. Keep this on your computer and
  do not share this file.

* The `id_rsa.pub` file is your public key. This is what you share with
  machines you want to connect to. When the machine you try to connect
  to matches up your public and private key, it will allow you to
  connect.

## To view public key:

	$ cat ~/.ssh/id_rsa.pub
	
It should be in the form:

    ssh-rsa <LONG STRING OF RANDOM CHARACTERS> user@host

## Step 4: Copy the Public Key

Once the key pair is generated, use the following command to append the public
key to `authorized_keys` on the server that you want to use. You can copy the
public key into the new machine's `authorized_keys` file with the `ssh-copy-id` 
command. 

	$ ssh-copy-id user@host

Note that this time you will have to authenticate with your password.

Alternatively, if the ssh-copy-id is not available on your system, you
can copy the file manually over SSH:

	$ cat ~/.ssh/id_rsa.pub | ssh user@host 'cat >> .ssh/authorized_keys'

Now try:

	$ ssh user@host 

and you will not be prompted for a password. However, if you set a
passphrase when creating your SSH key, you will be asked to enter the
passphrase at that time (and whenever else you log in in the future).

If you see a message *Agent admitted failure to sign using the key*
then add your RSA or DSA identities to the authentication agent
ssh-agent then execute the following command:

	ssh-add

If this did not work, delete your keys using the command:
	
	rm ~/.ssh/id* 
	
and follow the instructions again.
