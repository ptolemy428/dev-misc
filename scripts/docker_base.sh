
alias sudo='sudo '

alias rm-containers='sudo docker rm $(sudo docker ps -a -q)'

#aws
alias aws="sudo docker run -it -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION -v $DEV_ROOT/aws/scripts:/root/aws ptolemy428/docker-aws-cli /bin/bash"
