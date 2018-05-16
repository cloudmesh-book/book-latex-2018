# Adding a Public keys to a Raspbery Pi.

TODO: This documentation has been done wrongly as we asked to place
the key on the card without using a PI. E.g. by manipulating the file
system  via an external PC.

## SD Card method

TODO: THIs statement is wrong and not conducted: In this method we
copy the public key on the SD card

\TODO{Is it possible to do this while plugging in the SD card and add
the key there. The provided solution is not scalable.}

## Network Connected Method

In this method we assume the PI is connected to the network

TODO: THIS IS NOT WHAT WE ASK YOU DO


## Copying the public key by hand

\TODO{WHat if there is already a public key on th PI? Add additionla
instructions in another section. }

First generate SSH keys on main computer that will be used to connect
to the raspberry Pi cluster.

    ssh-keygen -b 2048 -t rsa

Hit enter to save the keys in default folder or enter new folder path.
Next, it is importnat that you **Enter passphrase**. Do not provide an
empty passphrase.  Public and private keys generated will be in ~/.ssh
folder

* `id_rsa.pub`: This is your public key and will be transferred to
  your Raspberry PI.

* `id_rsa`: This is your private key which will remain on your main
  computer you will be using to connect to your Pi.

\TODO{This step is unclear. It is not explained what connect your
raspberry pi means}

Connect to Raspberry Pi and create .ssh directory. Create
authorized_keys file. Change the permissions of files and
directory. Use following commands:

    mkdir .ssh
    cd .ssh
    touch authorized_keys
    chmod o+rwx ~/.ssh/
    chmod o+rw ~/.ssh/authorized_keys

Go back to your main computer and type the following command to
transfer the public RSA key to the Raspberry Pi.

    cat ~/.ssh/id_rsa.pub | ssh -p 22 pi@192.168.1.2 'cat >>.ssh/authorized_keys'
