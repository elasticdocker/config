#remove unused container
docker ps --filter status=dead --filter status=exited -aq | xargs  docker rm -v

# Delete all containers
# docker rm $(docker ps -a -q)

