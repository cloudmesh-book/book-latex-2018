# Using Crontab To Run Commands At Boot Time

To run a program at boot time, there are various ways which have been
described in detail in the following link

* <https://www.dexterindustries.com/howto/run-a-program-on-your-raspberry-pi-at-startup/>

The easiest way to do this is to do it with the help of crontab

Cron tab helps in scheduling jobs, and jobs can be scheduled to run on
various times for example, every hour, every day, every half hour etc.

for more information on crontab see:

* <http://www.adminschoice.com/crontab-quick-reference>


## Steps to run a program at boot time using crontab

* Open terminal and enter the command: crontab -e
* If you are doing this for the first time, you will be asked to chose
  an editor
* If so, choose your favourite editor
* To run the program at boot time, add the following lines at the end
  of the file

      @reeboot [command to run program]

Example:

	@reboot python /home/pi/desktop/test.py

* remember to give the absolute path to the file you want to run
* if you want to store the output of the program to a file, you can do
  this as follows

      @reboot [comand to run] > [log file]

Example:

	@reboot python /home/pi/desktop/test.py > /home/pi/log.txt

* Now, the output of the program wil be stored in log.txt file
* Save the file and exit the editor.
* When the reabpberry pi reboots, the program will run automatically.

These steps can be found at

* <https://www.dexterindustries.com/howto/auto-run-python-programs-on-the-raspberry-pi/>
