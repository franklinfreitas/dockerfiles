#!/bin/bash

# Build Grunt Image
echo "+------------------------------------------+"
echo "| Build Grunt Docker Image                 |"
echo "+------------------------------------------+"

image_name="grunt"
dockerfile="grunt.debian.dockerfile"

build_command="--file $dockerfile --force-rm -t $image_name ."

echo "docker build " $build_command

docker build $build_command

echo "+------------------------------------------+"
echo "| Tag Image for Docker Registry            |"
echo "+------------------------------------------+"

registry="my-registry.com"

tag_command=$image_name" "$registry/$image_name

echo "docker tag " $tag_command
docker tag $tag_command

echo "+------------------------------------------+"
echo "| Next Steps                               |"
echo "+------------------------------------------+"
echo ""
echo "docker push " $registry$image_name