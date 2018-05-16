## Using ssh-keys :o:

In many services we need to use SSH keys to securely communicate with
them. To generate one use the command:

```bash
    $ ssh-keygen -b 2048 -t rsa -C <your comment>
```

The comment will remind you where the key has been created, you could
for example use the hostname on which you created the Key. The command
will ask you to enter a *passphrase*. In most cases you **MUST**
provide one. ONly for some system related services you may create
passwordless keys, but such systems need to be properly protected.

---

:warning: *Not using pass[hrases poses a security risk!*

---

Once you enter the passphrase and hit Enter, your public and private key will be
stored in the `~/.ssh` folder. The following files will be created:

* `id_rsa.pub`, which is your public key

* `id_rsa`, which is your private key

---

:warning: *Never, copy your private key to another machine or check it into a repository!*

---


