alias sudo='sudo '
alias redis-server='docker run -d --name redis -p 6379:6379 dockerfile/redis'
alias redis-cli="docker run -it --rm --link redis:redis dockerfile/redis bash -c 'redis-cli -h redis'"

alias rabbitmq-server='docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 dockerfile/rabbitmq'

alias dynamo-server='docker run -d --name dynamo -p 7999:7999 ptolemy428/docker-dynamodb-local'

alias rm-containers='sudo docker rm $(sudo docker ps -a -q)'

alias vmsdown='sudo docker stop $(sudo docker ps -a -q) && rm-containers'

alias vmsup='sudo redis-server && sudo rabbitmq-server && sudo dynamo-server'
