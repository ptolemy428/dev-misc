#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
      SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
      done
      DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source $DIR/base.sh

if [ "$1" == "8" ]; then
	export JAVA_HOME=$DEV_ROOT/applications/java/jdk1.8.0_25
else
	export JAVA_HOME=$DEV_ROOT/applications/java/jdk1.7.0_72
fi


export SCALA_HOME=$DEV_ROOT/applications/scala/scala-2.11.4
export IDEA_HOME=$DEV_ROOT/applications/intellij/idea-IU-139.659.2
export GROOVY_HOME=$DEV_ROOT/applications/groovy/groovy-2.4.0-rc-1
export GRADLE_HOME=$DEV_ROOT/applications/gradle/gradle-2.1
export PLAY_HOME=$DEV_ROOT/applications/play/activator-1.2.10-minimal
export M2_HOME=$DEV_ROOT/applications/maven/apache-maven-3.2.3

PATH=$PATH:$JAVA_HOME/bin:$IDEA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$SCALA_HOME/bin:$SBT_HOME/bin:$GROOVY_HOME/bin:$PLAY_HOME:$M2_HOME/bin
export PATH

alias ll="ls -la"
alias lt="ls -ltr"
alias pj="cd $DEV_ROOT/playpen"
alias dev="cd $DEV_ROOT/"
alias apps="cd $DEV_ROOT/applications/"
alias i="idea.sh &"
alias vmup="VBoxManage startvm dev"
alias vmdown="VBoxManage controlvm dev poweroff"

#set up docker containers
. $DEV_ROOT/dev-misc/scripts/docker_base.sh

#set up aws env
. $DEV_ROOT/aws/c2014/aws-c2014.sh

#intellij work-around
. $DEV_ROOT/dev-misc/scripts/idea-lin.sh
