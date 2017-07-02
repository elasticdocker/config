npm --prefix word-service/ run build
docker build -t manishsingla/word-service:02 --compress  word-service/
docker push manishsingla/word-service:02