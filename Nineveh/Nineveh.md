# Nineveh

Machine: [Nineveh](https://app.hackthebox.com/machines/54)\
Difficulty: Medium\
Status: Retired



## Enumeration

What operating system is on this machine? Linux\
What ports/services are on running on this machine? 
![Results!](screenshots/1.png)


Can you access any of the ports open on this machine? Yes, port 80 and 443. 

![Results!](screenshots/4.png)\
![Results!](screenshots/3.png)


Since both ports and 80 and 443 are hosting a webpage, I went ahead and ran gobuster to find any directories or script files. For port 80, I found that there was a directory called 'department'. Going to this directory I am presented with a login page. I try to enter a few different combinations for username/password but I did not have any success. However, I did notive that if I input an incorrect username, then it would say 'Invalid Username' and the same thing happend with the password. Based on this, I could potentially guess a correct username and then use something to try and bruteforce the password.\

![Results!](screenshots/4.png)\
![Results!](screenshots/5.png)\
![Results!](screenshots/6.png)\

Since I found a correct username just by guessing, I used Hydra to bruteforce the password for the admin account.
![Results!](screenshots/7.png)


And now I am successfully logged in as admin!
![Results!](screenshots/2.png)


I repeated the same steps for port 443 and found a directory for '/db'. I was presented with a login page, but I only had to enter in the password. I used Hydra to bruteforce the password, but I felt that I go kinda lucky because I provided the username 'admin' despite me not knowing what the username is for this login page.
![Results!](screenshots/8.png)

Hydra command : sudo hydra -l admin -P /usr/share/wordlists/rockyou.txt 10.10.10.43 https-post-form "/db/index.php:password=^PASS^&remember=yes&login=Log+In&proc_login=true:Incorrect password."\

Now we are logged in as admin on port 443!
![Results!](screenshots/9.png)

At this point, I had alreay done some research on the phpLiteAdmin version to find out that it is vulnerable to remote php code injection. https://www.exploit-db.com/exploits/24044\







## Exploitation




### Flags
User:
![Results!](screenshots/15.png)

Root: 
![Results!](screenshots/16.png)



## Overview



