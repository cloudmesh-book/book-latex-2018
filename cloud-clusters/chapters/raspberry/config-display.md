## Detect display automatically
|      |
| ---: |
| [Edit](https://github.com/cloudmesh/book/blob/master/cloud-clusters/chapters/raspberry/config-display.md) |

[This file](https://raw.githubusercontent.com/cloudmesh/cloudmesh.pi/master/displaydetect.py) can automatically
detect and set the display for the pi. Following these steps to enable this feature.

1. Install the display detect script. Run this as root:

```
$ wget https://raw.githubusercontent.com/cloudmesh/cloudmesh.pi/master/displaydetect.py -O /bin/displaydetect.py
$ chmod a+x /bin/displaydetect.py
```

2. Create a copy of /boot/config.txt and rename it to /boot/config.txt.in

```
cp /boot/config.txt /boot/config.txt.in
```

3. Add these lines to the end of the config.txt.in file:

```
# customized display setting
hdmi_group=2
hdmi_mode=87
hdmi_cvt {x} {y} 60 6 0 0 0
display_rotate={display_rotate}

```

4. Add the display detect script to rc.local so it runs every time the pi is booting.
Add this to end of /etc/rc.local before the "exit 0" line:

```sh
/usr/bin/python /bin/displaydetect.py
```
5. Make sure rc.local would be running during boot.

```sh
systemctl status rc-local.service
```

Check if the service is 'active'.

Once it's installed, the pi will be check the display during the first boot, and it will set the correct display
parameters if found necessary and do a second boot to finish the configuration change.
