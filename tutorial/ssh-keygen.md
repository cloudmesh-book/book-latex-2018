# ssh-gegen

1. First generate SSH keys on main computer that will be used to connect to the
   raspberry Pi cluster.

       ssh-keygen -b 2048 -t rsa

2. Hit enter to save the keys in default folder or enter new folder path.

3. Enter passphrase.

4. Public and private keys generated will be in ~/.ssh folder

   id_rsa.pub: This is your public key and will be transferred to your server.

   id_rsa: This is your private key which will remain on your main computer you
           will be using to connect to your server.

5. Connect to Raspberry Pi and create .ssh directory. Create authorized_keys
   file. Change the permissions of files and directory. Use following commands:

       mkdir .ssh
       cd .ssh
       touch authorized_keys
       chmod 700 ~/.ssh/
       chmod 600 ~/.ssh/authorized_keys

6. Go back to your main computer and type the following command to transfer
   the public RSA key to the Raspberry Pi.

       cat ~/.ssh/id_rsa.pub | ssh -p 22 pi@192.168.1.2 'cat >>.ssh/authorized_keys'
