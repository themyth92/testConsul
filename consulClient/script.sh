#!/bin/bash

# install consul
sudo apt-get install unzip
wget https://releases.hashicorp.com/consul/1.2.3/consul_1.2.3_linux_amd64.zip
unzip consul_1.2.3_linux_amd64.zip
mv consul /usr/local/bin

# run the app first
git clone https://github.com/themyth92/grpc-test
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 10
nvm use 10

# need detach process
cmd="node gprc-test/server.js"
"${cmd}" &>/dev/null &!;

# now start consul
consul agent -config-file ./testConsul/consulClient/config.json