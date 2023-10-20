docker stop $(docker ps -a)
docker kill $(docker ps -a)
docker system prune
