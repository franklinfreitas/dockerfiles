# SSH keys are shared from user in host machine
# so Jenkins can fetch from the code repository using SSH
ssh_keys_user=opc

docker create --name my-jenkins \
-u root \
-p 8080:8080 \
-p 50000:50000 \
-v jenkins_data:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /home/$ssh_keys_user/.ssh:/root/.ssh \
my-jenkins