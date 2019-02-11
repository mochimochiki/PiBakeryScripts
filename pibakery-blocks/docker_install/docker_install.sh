#docker install
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo systemctl daemon-reload
sudo systemctl restart docker
sleep 30