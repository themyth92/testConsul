sudo apt-get install unzip
wget https://releases.hashicorp.com/consul/1.2.3/consul_1.2.3_linux_amd64.zip
unzip consul_1.2.3_linux_amd64.zip
mv consul /usr/local/bin
consul agent -config-file ./config.json