# Beep

Machine: [Blue](https://app.hackthebox.com/machines/Beep)\
Difficulty: Easy\
Status: Retired



## Enumeration

What operating system is on this machine? Linux
What ports/services are on running on this machine? 
*** Insert screenshot ***


Can you access any of the ports on 10.10.10.7? 

*** screenshot port 80/443 access ***


Since smtp is running on this machine, I went ahead and run some nmap scripts to see what vulnerabilites may exist.

*** Insert image of not finding any users ***

I went ahead and ran all of the smtp scripts that were available to me with nmap, but I did not have any success getting any information in terms of users etc. 

I decided to perform enumeration on port 80. the first thing I did was to use gobuster to see what directories are available and I also examined the source code for the webpage to see if there is any useful information.

For whatever reason, gobuster was not working for me and it was giving me this error: 
*** Insert gobuster error message ***

I used dirb instead and go the below results:
*** Insert dirb results ***

On the webpage on port 80, it looks to just be a login page that uses Elastix. I am not sure what Elastix is so I did little reasearch to find out that it is a web interface that provide email, IM, fax and serveral other software options. I tried to login using credentials that I found online, admin/admin, but I was not able to login. 


Next, I used the searchsploit tool to lookup 'Elastix'. 
*** Insert screenshot of the results ***


The remote code execution seemed like the most valuable thing for me, so I went on exploit db and found the exploit script and examined it. https://www.exploit-db.com/exploits/18650

I ran the script but I did not have any success, so I tried the local file exclusion exploit. 


passw0rd 
jEhdIekWmdjE




Logged in to port 10000 with the same password as before.
*** Insert screenshot *** 




I did not know this before, but webmin will allow you to run scheduled commands and scheduled cron jobs. This is really important because since we are logged in as root, we can probably update/add a command or cron job to create a reverse shell for us.







## Exploitation




### Flags
User:



Root: 
