# Create and Start Portainer container
echo "+------------------------------------------+"
echo "| Create and Start Portainer container     |"
echo "+------------------------------------------+"

## Note:
## If your host is using SELinux, you’ll need to pass the --privileged flag to the Docker run command

run_command="-d --restart always --privileged --name my-portainer \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer-data:/data \
-p 9000:9000 portainer/portainer:alpine"

echo "docker run " $run_command

docker run $run_command
