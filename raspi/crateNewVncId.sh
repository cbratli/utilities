sudo vncserver-x11 -generatekeys force
sudo systemctl restart vncserver-x11-serviced.service

# I dont think the first line below is needed.
Xvnc -generatekeys force


sudo systemctl stop vncserver-x11-serviced
sudo rm -rf /root/.vnc
sudo systemctl start vncserver-x11-serviced

