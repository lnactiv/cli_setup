# How to setup SSH

mkdir ~/.ssh  
cd ~/.ssh  

1. CSE  
ssh-keygen -f ~/.ssh/cse_id_rsa -t rsa -b 4096 -C “z5555555@cse.unsw.edu.au”  
Don't put passphrase.  
ssh-copy-id -i ~/.ssh/cse_id_rsa.pub z5555555@cse.unsw.edu.au  
eval "$(ssh-agent -s)"  
ssh-add ~/.ssh/cse_id_rsa  

Make a config file if you don't already have one ($ vim ~/.ssh/config)  
Add the following lines:  
Host cse   
User z5555555  
HostName weber.cse.unsw.edu.au  
IdentityFile ~/.ssh/cse_id_rsa  
(tab the last three lines over)  

To silence login message:  
ssh cse  
$ touch ~/.hushlogin  


2. Github  
Go into ~/.ssh  
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"  
Don't put passphrase.  
$ eval $(ssh-agent -s)  
$ ssh-add ~/.ssh/id_rsa  

Go into Github account, copy the contents of id_rsa.pub and paste into SSH section of account.  

