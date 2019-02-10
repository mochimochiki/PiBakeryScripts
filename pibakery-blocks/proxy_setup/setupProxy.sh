## apt
sudo sh -c 'echo Acquire::http::proxy \"http://'$1'\"\; >> /etc/apt/apt.conf.d/80proxy'
## curl
sudo sh -c 'echo proxy = \"http://'$1'\" >> /.curlrc'

# docker
sudo mkdir -p /etc/systemd/system/docker.service.d
echo -e "[Service]\nEnvironment=\"HTTP_PROXY=http://$1/\"" | sudo tee /etc/systemd/system/docker.service.d/http-proxy.conf
# docker container
sudo mkdir /home/pi/.docker
echo -e "{\n \"proxies\":\n {\n  \"default\":\n  {\n   \"httpProxy\": \"http://$1\"\n  }\n }\n}" | sudo  tee /home/pi/.docker/config.json
