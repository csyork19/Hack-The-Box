# Nibbles

Machine: [Nibbles](https://app.hackthebox.com/machines/Nibbles)\
Difficulty: Easy\
Status: Retired



## Enumeration

What operating system is on this machine? Linux\
What ports/services are on running on this machine? 
- ![Results!](screenshots/1.png)


Can you access any of the ports open on this machine? Yes, port 80.
- ![Results!](screenshots/2.png)


Since I can access the webpage, I will take a look at the page source to see if there is any valuable information that may help us.

The page source did provide us a directory that we can navigate to. In the meantime, I am going to run dirb to see if there are any other directories present. 

- ![Results!](screenshots/3.png)



After running dirb, I was not able to find much other than one directory. In the directory that I found, I tried to see if it contained any scripts files by using the dirb tool because I did not have access to the folder.

- ![Results!](screenshots/4.png)



- ![Results!](screenshots/5.png)



Since I did not find much, I decided to mess around a bit on the /nibbleblog directory that was listed as a comment in the page source.

- ![Results!](screenshots/6.png)


After clicking on some links to see what would happen, one brought me to this page.

- ![Results!](screenshots/7.png)



In the image above, it lists a different IP address than the one we are using for the machine, so I thought I would try to navigate to the page that it is showing in the image above...turns out I could not access it.

I figured I would check to see if that host was even on the same network as me, so I ran another nmap scan to see what hosts were up. I even tried to ping the machine and I couldn't reach it so I figured this ip address was not of that much importance. 

- ![Results!](screenshots/8.png)





## Exploitation




### Flags
User:



Root: 



