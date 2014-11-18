#!/bin/bash

dev_root=/home/larry/development

if [ "$1" == "8" ]; then
	export JAVA_HOME=$dev_root/applications/java/jdk1.8.0_25
else
	export JAVA_HOME=$dev_root/applications/java/jdk1.7.0_71
fi


export SCALA_HOME=$dev_root/applications/scala/scala-2.11.2
export IDEA_HOME=$dev_root/applications/intellij/idea-IU-139.224.1
export GROOVY_HOME=$dev_root/applications/groovy/groovy-2.3.0
export GRADLE_HOME=$dev_root/applications/gradle/gradle-2.1
export PLAY_HOME=$dev_root/applications/play/activator-1.2.10-minimal
export M2_HOME=$dev_root/applications/maven/apache-maven-3.2.3

PATH=$PATH:$JAVA_HOME/bin:$IDEA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$SCALA_HOME/bin:$SBT_HOME/bin:$GROOVY_HOME/bin:$PLAY_HOME:$M2_HOME/bin
export PATH

alias ll='ls -la'
alias lt='ls -ltr'
alias pj='cd $dev_root/playpen'
alias dev='cd $dev_root/'
alias apps='cd $dev_root/applications/'
alias i='idea.sh &'
alias sj='cd $dev_root/playpen/play2'
alias vmup='VBoxManage startvm dev'
alias vmdown='VBoxManage controlvm dev poweroff'


#set up aws env
. $dev_root/aws/c2014/aws-c2014.sh
