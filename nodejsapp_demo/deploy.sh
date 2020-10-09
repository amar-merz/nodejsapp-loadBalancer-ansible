#!/bin/bash/
npm install


ssh -i $HOME/user/.ssh/file_keyname user@x.xx.xxx.xxx 'sudo mkdir -p /app; sudo chown -R user /app'
rsync -avz -e "ssh -i $HOME/user/.ssh/file_keyname" ./ ubuntu@x.xx.xxx.xxx :/app/
ssh -i $HOME/user/.ssh/file_keyname user@x.xx.xxx.xxx  "sudo kill node;cd /app;node index.js > output.log 2>&1 &"

ssh -i $HOME/user/.ssh/file_keyname user@x.xx.xxx.xxx  "sudo mkdir -p /app;sudo chown -R user /app"
rsync -avz -e "ssh -i $HOME/user/.ssh/file_keyname" ./ ubuntu@x.xx.xxx.xxx :/app/
ssh -i $HOME/user/.ssh/file_keyname user@x.xx.xxx.xxx  "sudo pkill node;cd /app;node index.js > output.log 2>&1 &"
