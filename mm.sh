#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
      SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
      done
      DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source $DIR/base.sh

export JAVA_HOME=$DEV_ROOT/applications/java/jdk1.7.0_71

export SCALA_HOME=$DEV_ROOT/applications/scala/scala-2.11.4
export IDEA_HOME=$DEV_ROOT/applications/intellij/idea-IU-139.659.2
export GROOVY_HOME=$DEV_ROOT/applications/groovy/groovy-2.4.0-rc-1
export M2_HOME=$DEV_ROOT/applications/maven/apache-maven-3.2.3
export BIN_HOME=$DEV_ROOT/dev-misc/bin

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

PATH=$PATH:$JAVA_HOME/bin:$IDEA_HOME/bin:$M2_HOME/bin:$GROOVY_HOME/bin:$M2_HOME/bin:$BIN_HOME
export PATH

alias ll='ls -la'
alias lt='ls -ltr'
alias pj='cd $DEV_ROOT/playpen'
alias dev='cd $DEV_ROOT/'
alias apps='cd $DEV_ROOT/applications/'
alias i='idea.sh &'
alias sj='cd $DEV_ROOT/playpen/play2'
alias m='cd $DEV_ROOT/mm/git-mm'
alias aws='~/bin/aws'

#virtual box commands
alias vmup='VBoxManage startvm MessageMediaDev'
alias vmdown='VBoxManage controlvm MessageMediaDev poweroff'

#set up aws env for mm
. $DEV_ROOT/aws/mm/aws-mm.sh

#intellij in work-around
. $DEV_ROOT/dev-misc/scripts/idea-lin.sh

#docker alias
. $DEV_ROOT/dev-misc/scripts/docker_cmd.sh
