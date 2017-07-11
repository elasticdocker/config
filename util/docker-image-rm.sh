# Delete all images
docker rmi -f $(docker images -q)

# remove unused images:
# docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs  docker rmi
