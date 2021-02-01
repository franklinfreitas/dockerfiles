# Start HAProxy with Docker Swarm
build_command="stack deploy -c docker-compose.yml load-balancer"
echo "docker " $build_command
docker $build_command
