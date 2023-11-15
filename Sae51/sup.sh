docker rm $(docker stop $(docker ps -aq))

docker rmi $(docker image ls -aq)

