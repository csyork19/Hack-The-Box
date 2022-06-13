# SolidState

Machine: [SolidState](https://app.hackthebox.com/machines/85)\
Difficulty: Medium\
Status: Retired



## Enumeration

What operating system is on this machine? Linux
What ports/services are on running on this machine?\ 
![Results!](screenshots/1.png)

What udp ports are open?\
![Results!](screenshots/2.png)

SMPT (25) - SMTP (Simple Mail Transfer Protocol) is the basic standard for sending email via the internet between mail servers. Applications like Apple Mail and Outlook use SMTP to send emails to mail servers, which subsequently relay them to other mail servers.\

POP3 (110) - Post Office Protocol (POP) is a type of computer networking and Internet standard protocol that extracts and retrieves email from a remote mail server for access by the host machine. POP is an application layer protocol in the OSI model that provides end users the ability to fetch and receive email.\

NNTP is an application-layer protocol used for transporting Usenet news articles between news servers. Client applications can also inquire, retrieve, and post articles.\


Given the ports/services that are open, I am guessing that this is some sort of mail server or it has something to do with a mail server.  


![Results!](screenshots/3.png)



I did see the web admin email being listed on the homepage. I am not sure if this will be of any importance, but I will note it down just in case.\
![Results!](screenshots/4.png)

Since smtp, pop3 and other services are open, I am going to see if there are any enumeration scripts within nmap that will help us.  To find the nmap scripts, just type this command 'ls -al /usr/share/nmap/scripts/ |grep -e "smtp" and it will output something like this if there are script available:\

![Results!](screenshots/5.png)

I did find a root user after running the below script. The other scripts did not return anything that I thought was important, so I will move on to enumerating pop3 and nntp.

![Results!](screenshots/6.png)


I ran the scripts that are available for pop3, and I did not get back any information of importance.
![Results!](screenshots/7.png)\
![Results!](screenshots/8.png)


Since we have a webserver running on port 80, lets use dirbuster to find any directories and files.
![Results!](screenshots/9.png)


In the dirbuster scan results, I did find a readme.txt file that you can see below. It looks like it might contain information that is important, but I am not sure yet.  It is using Creative Commons Attribution 3.0 Unported, so maybe this is vulnerable?

![Results!](screenshots/10.png)



I went back through the version running with each of the services, and I did find this exploit: https://www.exploit-db.com/exploits/50347


## Exploitation







### Flags
User:


Root: 



