echo "+------------------------------------------+"
echo "| Build Jenkins Docker Image               |"
echo "+------------------------------------------+"
image_name="my-jenkins:latest"

docker build --force-rm --no-cache -f jenkins.dockerfile -t $image_name .