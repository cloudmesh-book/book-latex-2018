## Install docker on raspberry pi

Docker now supports arm processor.
Thus we dont need any special setup to get docker running.

To install docker on the raspberry pi

* ssh into the raspberry pi (or login using a monitor and open terminal)
* run ```curl -sSL https://get.docker.com | sh```
* If you dont want to run docker using sudo
Add pi to the docker user group as recommended using
```sudo usermod -aG docker pi```
* Now any docker image built for arm can be run