# Install Docker on a Raspberry Pi

hid-sp18-503

Docker is now supported on ARM processors. Thus the instalation of
docker on Raspbery PI's is extremely simple and we do not need any
special setup to get docker running.

To install docker on the raspberry pi, please execute the following
steps:

First, ssh into the raspberry pi (or login using a monitor and open
terminal) Second, run the following command

```curl -sSL https://get.docker.com | sh```
  
If you dont want to run docker using sudo add pi to the docker user
group as recommended using

```sudo usermod -aG docker pi```

Now any docker image built for ARM can be run. Naturally it must be
small enough to fit on the PI. PLease remember it has a very small
memory.

Please report back to us if you found useful packages and tools for
the PI.
