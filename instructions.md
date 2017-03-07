####Project 1 is due Wednesday, March 8

-----------------------------------------------------------

I am collecting the /home/collard files from a bunch of old servers. I ran across examples that demonstrate various options of bash/UNIX commands. They are a record of an interactive screen session, with the bash prompt as "% " and the results of the commands. For example, this example shows the usage and output of a command, and would be in a file called cd.txt:

    % cd /usr
    % ls -1
    bin
    games
    include
    lib
    local
    sbin
    share
    src

-----------------------------------------------------------

The commands that produced the cd.txt is in the file cd.sh:

    export PS4="% "
    cd /usr
    ls -1

So if you were to type these in (with a prompt of %) you would get the result close to the file cd.txt.

In many cases the commands had options. However, due to a transformation gone bad, the options to the commands have been erased. For example, what is really left of cd.txt is close to:

    % cd /usr
    % ls
    bin
    games
    include
    lib
    local
    sbin
    share
    src

Notice how the "-1" option is missing from the ls command? For this project you will figure out what the options are, based on the basic command (e.g., ls) and the form of the output. In ~azuser/Project1 of your server you will find:

* cd.txt - Output of running the command
* cd.sh - List of commands, with options to fill in

-----------------------------------------------------------

The file cd.txt is generated from cd.sh by using the screen command with logging:

    # start a screen with logging
    screen -L
    # inside the screen session, execute your script
    bash -x cd.sh
    # once done, exit the screen session
    exit
    # view your results 
    mv screenlog.0 mycd.txt

Note that the screenlog.0 has a dos newline in it (not sure why), so that will have to be changed.

You are to take all the *.sh files from the directory ~azuser/Project1 on your server and fix the options to the commands. Keep all filenames the same as I have them.

Before you do so, make sure to install the following ubuntu packages on your server:

    gcc
    g++
    emacs24-nox
    dos2unix
    distro-info-data
    libarchive-dev

