#!/bin/bash
# Purge queues based on a name or all queues

HOST=localhost
PORT=15672
USER=guest
PSWD=guest

function show_help {
  echo
  echo "purge_queues.sh"
  echo
  echo "Purges messages from one or all Rabbit queues"
  echo
  show_default_options
  echo "  [-q] Queue name . All if not specified"
}  

function get_queues {
  # TODO should be able to do this in one command 
  if [[ -z $1 ]]; then 
	curl -s -u $USER:$PSWD http://$HOST:$PORT/api/queues | jq . | grep name | sed -re 's/.*: "(.*).*",/\1/' > queueNames
  else
    curl -s -u $USER:$PSWD http://$HOST:$PORT/api/queues | jq . | grep name | grep $1 | sed -re 's/.*: "(.*).*",/\1/' > queueNames
  fi
}

source "common/configure_rabbit.sh"

while getopts ":hc:q:" opt; do
  case $opt in
	q)
	  QUEUE=$OPTARG
	  ;;
  esac
done

if [[ -z $QUEUE ]]; then
  echo "Confirm purge all queues (y/n)?"
  read allQueues
  if [[ $allQueues == "y" ]] || [[ $allQueues == "Y" ]]; then
    get_queues
  else
    exit 0
  fi
else
  queue=$QUEUE
  get_queues $queue
fi

while read queue; do 
  curl -s --request DELETE http://$USER:$PSWD@$HOST:$PORT/api/queues/$VHOST/$queue/contents
done < queueNames

rm -rf queueNames

echo
echo "Done"
