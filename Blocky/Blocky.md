# Blocky

Machine: [Blocky](https://app.hackthebox.com/machines/48)\
Difficulty: Easy\


## Enumeration
What ports are open?
![Results!](screenshots/1.png)


What are the versions of the services?
21/ftp - ProFTPD 1.3.5a
22/ssh - OpenSSH 7.2p2 Ubuntu 4ubuntu2.2 (Ubuntu Linux; protocol 2.0)
80/http - Apache httpd 2.4.18
25565/minecraft - minecraft Minecraft 1.11.2 (Protocol: 127, Message: A Minecraft Server, Users: 0/20)

### Ftp
For this FTP version, it looks like it might be vulnerable to this exploit: https://www.exploit-db.com/exploits/49908.

### Ssh
At first glance, this version does not appear to be vulnerable to anything. However, if I find any credentials then I might be able to use them via ssh to login.

### Http
For the version of apache, it looks like it might be vulnerable to a local escalation privilege vulnerability. https://www.exploit-db.com/exploits/46676.

![Results!](screenshots/2.png)


![Results!](screenshots/3.png)


![Results!](screenshots/4.png)

From the dirbuster results, I have not found any page that is of significance yet. I do see that this is a WordPress page, so I ran wpscan to find any users, themes, or plugins being used, but I did not find any that were vulnerable. The Nikto scan results did say there is a xss vulnerability but I am not sure if it will be of any use here.


### Minecraft 


To BE CONTINUED.......
## Flags

### User/Local flag


### Root flag












