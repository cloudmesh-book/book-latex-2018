Linux Shell
===========

It is important to how to use a Linux command shell as the development
of scalable applications often requires the execution and scripting of
the commands. Graphical user interfaces may exist to services that
allow deployment on large number of servers, but such applications
need to be developed first. 

There are many good tutorials that explain how to use the linux
command shell. Randomly we picked the first one that
came up with a google query. However, this is not an endorsement for the
material we point to, but could be a worth while read for someone that
has no experience in Shell programming:

* http://linuxcommand.org/lc3_learning_the_shell.php

Certainly you are welcome to use other resources that may suite you
best. We will however summarize in table form a number of useful
commands that you may als find in a link to a RefCard.

* http://www.cheat-sheets.org/#Linux

For cloud computing it is essential that you have familiarity of the
linux commandline and the terminal. Clicking 1000+ times in a GUI will
not be efficient. We typically use `bash`  as the command interpreter
on many systems. 
  

File commands
-------------

Find included a number of commands related to file manipulation.

+-------------------+-------------------------------------+
| Command           | Description                         |
+===================+=====================================+
| ls                | Directory listing                   |
+-------------------+-------------------------------------+
| ls -lisa          | list details                        |
+-------------------+-------------------------------------+
| cd *dirname*      | Change directory to *dirname*       |
+-------------------+-------------------------------------+
| mkdir *dirname*   | create the directory                |
+-------------------+-------------------------------------+
| pwd               | print working directory             |
+-------------------+-------------------------------------+
| rm *file*         | remove the file                     |
+-------------------+-------------------------------------+
| cp *a* *b*        | copy file *a* to *b*                |
+-------------------+-------------------------------------+
| mv *a* *b*        | move/rename file *a* to *b*         |
+-------------------+-------------------------------------+
| cat *a*           | print content of file\ *a*          |
+-------------------+-------------------------------------+
| less *a*          | print paged content of file *a*     |
+-------------------+-------------------------------------+
| head -5 *a*       | Display first 5 lines of file *a*   |
+-------------------+-------------------------------------+
| tail -5 *a*       | Display last 5 lines of file *a*    |
+-------------------+-------------------------------------+

Search commands
---------------

Find included a number of commands related to seraching.

+----------------------------------+---------------+
| Command                          | Description   |
+==================================+===============+
| fgrep                            | TBD           |
+----------------------------------+---------------+
| grep -R "xyz" .                  | TBD           |
+----------------------------------+---------------+
| find . -name "\*.py" \| TBD \|   |               |
+----------------------------------+---------------+

Help
----

Find included a number of commands related to manual pages.

+-----------------+---------------------------------+
| Command         | Description                     |
+=================+=================================+
| man *command*   | manual page for the *command*   |
+-----------------+---------------------------------+

Keyboard Shortcuts
------------------

These shortcuts will come in handy. Note that many overlap with emacs
short cuts.

+------------+----------------------------------------------------------+
| Keys       | Description                                              |
+============+==========================================================+
| Up Arrow   | Show the previous command                                |
+------------+----------------------------------------------------------+
| Ctrl + z   | Stops the current command                                |
+------------+----------------------------------------------------------+
|            | resume with fg in the foreground                         |
+------------+----------------------------------------------------------+
|            | resume with bg in the background                         |
+------------+----------------------------------------------------------+
| Ctrl + c   | Halts the current command                                |
+------------+----------------------------------------------------------+
| Ctrl + l   | Clear the screen                                         |
+------------+----------------------------------------------------------+
| Ctrl + a   | Return to the start of the command you're typing         |
+------------+----------------------------------------------------------+
| Ctrl + e   | Go to the end of the command you're typing               |
+------------+----------------------------------------------------------+
| Ctrl + k   | Cut everything after the cursor to a special clipboard   |
+------------+----------------------------------------------------------+
| Ctrl + y   | Paste from the special clipboard                         |
+------------+----------------------------------------------------------+
| Ctrl + d   | Log out of current session, similar to exit              |
+------------+----------------------------------------------------------+

.. _bashrc:
   
.bashrc and .bash_profile
-----------------------------

.. todo:: THis section will be filled out. However we have some very
          good material provided for a .bash_profile file as part of
          setting up pyenv.


Usage of a particular command and all the attributes associated with
it, use 'man' command. Avoid using 'rm -r' command to delete files
recursively. A good way to avoid accidental deletion is to include the
following in your .bash_profile file::

  alias e=open_emacs
  alias rm='rm -i'
  alias mv='mv -i' 
  alias h='history'

More Information

https://cloudmesh.github.io/classes/lesson/linux/refcards.html 

   
Exercise
--------

Linux.1:
    Familiarize yourself with the commands

Linux.2:
    Find more commands that you find useful and add them to this page.

Linux.3:
    Use the `sort` command to sort all lines of a file while removing duplicates.
