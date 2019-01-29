# Debian9_KDE_VNC
#Config files for Debian9, KDE working with VNC over SSH tunnel
#Default display is serverip:2 (eg: 192.168.1.5:2)

#Enable booting to Desktop:
systemctl set-default multi-user.target

#Boot to cmd:
systemctl set-default graphical.target

#Enable on boot:
systemctl vncss enable

#Control VNC service:
service vncss start | stop | restart
