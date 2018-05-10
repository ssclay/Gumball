#!/bin/bash

systemctl stop joy_detection_demo
echo "Stopping Joy Detection Demo"
systemctl disable joy_detection_demo
echo "Disabling Joy Detection Demo"
echo "Creating demo_aiy service"
sudo echo \
'[Unit]
Description='demo_aiy'
After=network.target

[Service]
WorkingDirectory=/home/pi/nio/projects/demo_aiy
ExecStart=/home/pi/.local/bin/niod
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
User=pi
#Restart=on-failure

[Install]
WantedBy=multi-user.target' > demo_aiy.service
sudo mv demo_aiy.service /lib/systemd/system/.

echo "Starting nio"
sudo systemctl daemon-reload
sudo systemctl enable demo_aiy.service
sudo systemctl start demo_aiy.service
