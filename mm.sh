#!/bin/bash

dev_root=/home/larry/development

export JAVA_HOME=$dev_root/applications/java/jdk1.7.0_71

export SCALA_HOME=$dev_root/applications/scala/scala-2.11.4
export IDEA_HOME=$dev_root/applications/intellij/idea-IU-139.659.2
export GROOVY_HOME=$dev_root/applications/groovy/groovy-2.4.0-rc-1
export M2_HOME=$dev_root/applications/maven/apache-maven-3.2.3
export BIN_HOME=$dev_root/dev-misc/bin

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

PATH=$PATH:$JAVA_HOME/bin:$IDEA_HOME/bin:$M2_HOME/bin:$GROOVY_HOME/bin:$M2_HOME/bin:$BIN_HOME
export PATH

alias ll='ls -la'
alias lt='ls -ltr'
alias pj='cd $dev_root/playpen'
alias dev='cd $dev_root/'
alias apps='cd $dev_root/applications/'
alias i='idea.sh &'
alias sj='cd $dev_root/playpen/play2'
alias m='cd $dev_root/mm/git-mm'
alias aws='~/bin/aws'

#virtual box commands
alias vmup='VBoxManage startvm MessageMediaDev'
alias vmdown='VBoxManage controlvm MessageMediaDev poweroff'

#set up aws env for mm
. $dev_root/aws/mm/aws-mm.sh

#intellij in work-around
. $dev_root/dev-misc/scripts/idea-lin.sh

#docker alias
. $dev_root/dev-misc/scripts/docker_cmd.sh
