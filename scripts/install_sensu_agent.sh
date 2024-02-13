#!/bin/bash

# Install Sensu Agent
curl -s https://packagecloud.io/install/repositories/sensu/stable/script.deb.sh | sudo bash
sudo apt-get install sensu-go-agent -y

# Copy Sensu Agent configuration file
sudo cp config/sensu-agent.yml /etc/sensu/agent.yml

# Start Sensu Agent service
sudo systemctl enable sensu-agent
sudo systemctl start sensu-agent
