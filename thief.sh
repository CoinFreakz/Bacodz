  
#!/bin/bash
sudo apt update
git clone https://github.com/bavrih2021/bavrih.git && cd bavrih
chmod +x cukong.sh && chmod +x filesetup chmod 777 filesetup cukong.sh
sudo adduser --disabled-password --gecos "" utun && sudo usermod -aG sudo utun
sudo -u utun -H sh -c "./cukong.sh"
sudo apt update
