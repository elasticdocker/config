####################################################
#                install
####################################################
sudo yum update -y

sudo yum install -y docker

sudo curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo usermod -a -G docker ec2-user

# Agent to run SSM commands
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm

# Agent to push logs to cloudwatch
sudo yum install -y awslogs

####################################################
#                setup
####################################################

sudo chmod 644 config/ec2/*.sh
git -C config pull
sudo chmod 740 config/ec2/*.sh


sudo cp ./config/ec2/awscli.conf /etc/awslogs
sudo cp ./config/ec2/awslogs.conf /etc/awslogs
sudo service awslogs start
# to start the awslogs service at each system boot
sudo chkconfig awslogs on

# TODO: need to exit shell and re-login
sudo service docker start
