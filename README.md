# Debian9_KDE_VNC
#Config files for Debian9, KDE working with VNC over SSH tunnel\
#Default display is serverip:2 (eg: 192.168.1.5:2)\
Locations: \
/lib/systemd/system/vncss.service \
/usr/local/bin/vncss.sh \
/etc/vnc/xstartup 

#Enable booting to Desktop:\
systemctl set-default graphical.target 

#Boot to cmd:\
systemctl set-default multi-user.target 

#Enable on boot:\
systemctl vncss enable 

#Control VNC service:\
service vncss start | stop | restart

#Cannot open display:2 errors via VNC:\
xhost +local:

#Run Dolphin as root:\
pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dolphin

#Create system user for apps (no login):\
useradd -s /bin/false -d /var/lib/USER/ -r -m -U USER 
  
#Find port being listened on:\
netstat -tlpn | grep 59

#Find details of process using mount/file:\
fuser /media/DIR | FILE

#run as another user from a root shell:\
su - targetuser -s /bin/bash 

#For direct command execution use -c:\
su - targetuser -s /bin/bash -c "/bin/echo hello world" 
