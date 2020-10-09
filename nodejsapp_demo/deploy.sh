#!/bin/bash/
npm install


ssh -i /home/ammar/.ssh/id_rsa ubuntu@3.15.240.208 'sudo mkdir -p /app; sudo chown -R ubuntu /app'
rsync -avz -e "ssh -i /home/ammar/.ssh/id_rsa" ./ ubuntu@3.15.240.208:/app/
ssh -i /home/ammar/.ssh/id_rsa ubuntu@3.15.240.208 "sudo kill node;cd /app;node index.js > output.log 2>&1 &"

ssh -i /home/ammar/.ssh/id_rsa ubuntu@18.222.54.77 "sudo mkdir -p /app;sudo chown -R ubuntu /app"
rsync -avz -e "ssh -i /home/ammar/.ssh/id_rsa" ./ ubuntu@18.222.54.77:/app/
ssh -i /home/ammar/.ssh/id_rsa ubuntu@18.222.54.77 "sudo pkill node;cd /app;node index.js > output.log 2>&1 &"
