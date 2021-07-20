#!/bin/bash
sudo sh -c 'echo deb https://apt.buildkite.com/buildkite-agent stable main > /etc/apt/sources.list.d/buildkite-agent.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 32A37959C2FA5C3C99EFBC32A79206696452D198
sudo apt-get update && sudo apt-get install -y buildkite-agent
sudo sed -i "s/xxx/579981a25617e4f0b9da41c0402f0cb2f51fec068a2af0b5ef/g" /etc/buildkite-agent/buildkite-agent.cfg
# Ubuntu 15.04 and above (systemd)
sudo systemctl enable buildkite-agent && sudo systemctl start buildkite-agent

# Older Ubuntu (upstart)
sudo service buildkite-agent start
