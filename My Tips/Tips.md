# Tips
This document is going to contain tips regarding anything that I have learned, things that may help me, tools used, common commands/scripts to use in certain scenarios etc.\


### Gobuster
gobuster dir -u <url> -x <script extensions> -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
gobuster dir -u http://10.10.14.16 -x sh,php,html,txt,zip,bak-w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

### Dirb






## Privilege Escalation

What is privilege escalation? It's the exploitation of a vulnerability, design flaw, or configuration oversight in an operating system or application to gain unauthorized access to resources that are usually restricted from the users.

### Linux Privilege Escalation

https://tryhackme.com/room/linprivesc

Here are some good tools to install and use:
https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS
https://github.com/rebootuser/LinEnum
https://github.com/diego-treitos/linux-smart-enumeration

You can install these on the target machine by by using wget from the /tmp directory....at least thats where I see alot of people installing it to.

#### Kernel Exploits
The kernel on Linux systems manages the communication between components such as the memory on the system and applications. This critical function requires the kernel to have specific privileges; thus, a successful exploit will potentially lead to root privileges.

The Kernel exploit methodology is simple...\
Identify the kernel version\
Search and find an exploit code for the kernel version of the target system\
Run the exploit \ 

Notes: You may need to use SimpleHTTPServer in python to transfer the exploit from your machine to the target machine

#### Sudo
Any user can check its current situation related to root privileges using the 'sudo -l' command. \
https://gtfobins.github.io/ is a valuable source that provides information on how any program, on which you may have sudo rights, can be used.

#### SUID
Much of Linux privilege controls rely on controlling the users and files interactions. This is done with permissions.



#### Cron Jobs
Cron jobs are used to run scripts or binaries at specific times. By default, they run with the privilege of their owners and not the current user. While properly configured cron jobs are not inherently vulnerable, they can provide a privilege escalation vector under some conditions. The idea is quite simple; if there is a scheduled task that runs with root privileges and we can change the script that will be run, then our script will run with root privileges. \

Any user can read the file keeping system-wide cron jobs under /etc/crontab





#### Windows Privilege Escalation

