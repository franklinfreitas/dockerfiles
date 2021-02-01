# Build HAProxy Image
echo "+------------------------------------------+"
echo "| Build HAProxy Docker Image               |"
echo "+------------------------------------------+"

image_name="my-haproxy"

build_command="--file haproxy.dockerfile  --force-rm -t $image_name ."

echo "docker build " $build_command

docker build $build_command
