# ssh add :o:

ssh-add command adds SSH private keys into the SSH authentication
agent for implementing single sign-on with SSH. ssh-add allows the
user to use any number of servers that is spread across any number of
organizations, without having to type in a password every time when
connecting between servers. This is commonly used by system
administrators to login to multiple server.

## ADDING DEFAULT KEYS:

ssh-add can be run without arguments. When run without arguments, it
adds the following default files:

* ~/.ssh/identity - Contains the protocol version 1 RSA authentication
  identity of the user.

* ~/.ssh/id_rsa - Contains the protocol version 1 RSA authentication
  identity of the user.

* ~/.ssh/id_dsa - Contains the protocol version 2 DSA authentication
  identity of the user.

* ~/.ssh/id_ecdsa - Contains the protocol version 2 ECDSA
  authentication identity of the user.


## ADDING AN ARBITRARY KEY:

To add an arbitrary private key, give the path of the key file as an
argument to ssh-add. For example,

    ssh-add ~/.ssh/hid513-cld-key

would add the file ~/.ssh/hid513-cld-key.

## KEYS WITH PASSPHRASES:

If the key being added has a passphrase, ssh-add will run the
ssh-askpass program to obtain the passphrase from the user. If the
SSH_ASKPASS environment variable is set, the program given by that
environment variable is used instead.

Some people use the SSH_ASKPASS environment variable in scripts to
provide a passphrase for a key. The passphrase might then be
hard-coded into the script, or the script might fetch it from a
password vault.

## SSH-ADD COMMAND LINE OPTIONS:

ssh-add accepts the following command line options:

* `-c`: Causes a confirmation to be requested from the user every time
        the added identities are used for authentication. The
        confirmation is requested using ssh-askpass.

* `-D:` Deletes all identities from the agent.

* `-d:` Deletes the given identities from the agent. The private key
        files for the identities to be deleted should be listed on the
        command line.

* `-e` pkcs11: Remove key provided by pkcs11

* `-L`: Lists public key parameters of all identities currently
     represented by the agent.

* `-l`: Lists fingerprints of all identities currently represented by
     the agent.

* `-s` pkcs11: Add key provided by pkcs11.

* `-t` life: Sets the maximum time the agent will keep the given
             key. After the timeout expires, the key will be
             automatically removed from the agent. The default value
             is in seconds, but can be suffixed for m for minutes, h
             for hours, d for days, or w for weeks.

* `-X`: Unlocks the agent. This asks for a password to unlock.

* `-x`: Locks the agent. This asks for a password; the password is
        required for unlocking the agent. When the agent is locked, it
        cannot be used for authentication.
