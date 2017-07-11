# remove all volumes:

# remove unused volumes:
docker volume rm $(docker volume ls -qf dangling=true)
