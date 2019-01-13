#!/bin/bash

sudo -i -u miaa bash << EOF
cd /home/miaa
git clone -b monolith https://github.com/express42/reddit.git
cd reddit
bundle install
EOF

# systemd unit
cat <<EOT > /etc/systemd/system/puma.service
[Unit]
Description=Puma Server
After=network.target

[Service]
Type=simple
User=miaa
Group=miaa
WorkingDirectory=/home/miaa/reddit
ExecStart=/usr/local/bin/puma
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
EOT

# Add puma to autostart
systemctl enable puma
