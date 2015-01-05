
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker_base.sh

#redis
alias redis-server='docker run -d --name redis -p 6379:6379 dockerfile/redis'
alias redis-cli="sudo docker run -it --rm --link redis:redis dockerfile/redis bash -c 'redis-cli -h redis'"
###############################################
#rabbit
alias rabbitmq-server='docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 dockerfile/rabbitmq'
###############################################
#dynamodb
alias dynamo-server='docker run -d --name dynamo -p 7999:7999 ptolemy428/docker-dynamodb-local'
###############################################
#docker
alias vmsdown='sudo docker stop $(sudo docker ps -a -q) && rm-containers'
alias vmsup='sudo redis-server && sudo rabbitmq-server && sudo dynamo-server'
