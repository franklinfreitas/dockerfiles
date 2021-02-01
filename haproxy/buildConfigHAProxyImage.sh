# Build HAProxy Image
echo "+------------------------------------------+"
echo "| Build HAProxy Docker Image               |"
echo "+------------------------------------------+"

image_name="my-haproxy"

configuration_file="haproxy-sample.cfg"

build_command="--file haproxy.copy.dockerfile --force-rm --build-arg CONFIG_FILE=$configuration_file -t $image_name ."

echo "docker build " $build_command

docker build $build_command
