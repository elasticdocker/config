npm --prefix game-service/ run build
docker build -t manishsingla/game-service:02 game-service/
docker push manishsingla/game-service:02