#!/bin/bash -xv
#Clear the SEL using the command: ipmitool sel clear
#Save this script at /usr/local/sbin
#Run chmod +x /usr/local/sbin
#Add this scrtip name MemDetect.sh at the end of rc.local file located in /etc/rc.d/rc.local
#Run chmod +x /etc/rc.d/rc.locl
#Creat /root/count.log and input the value 1 then save
#Edit /etc/gdm/custom.conf and make sure [daemon] section in the file specifies the followings: AutomaticLoginEnable=True, AutomaticLogin=root
#Open a terminal and run this script by typing: MemDetect.sh
#Substitute the value in count.log into the variable i
i=$(cat /root/count.log)
echo "Loop number =  " $i
#Performing the if condition
if [ $i -gt 10 ] 
then
#Redirect the SEL informatoin to a log file
ipmitool sel elist > /root/sel.log
#Print the SEL information to the terminal
cat /root/sel.log 
echo "Ending the test"
else
echo "Implementing Memory Detection Test in loop = " $i
echo -e "\n" >> /root/lshw.log
echo -n " Memory Detection Test Round $i " >> /root/lshw.log
date >> /root/lshw.log
echo -e "\n" >> /root/lshw.log
#Redirect the output of lshw to a log file
lshw -c memory >> /root/lshw.log
echo -e "\n" >> /root/lshw.log
let "i=i+1"
echo $i > /root/count.log
echo "Next loop number =  " $i
echo "rebooting now"
reboot
fi



