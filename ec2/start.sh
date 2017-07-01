sudo chmod 644 config/ec2/*.sh
git -C config pull
sudo chmod 740 config/ec2/*.sh

docker-compose -f config/prod/docker-compose.yml up -d


