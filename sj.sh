#!/bin/bash

##set up development environment##

##Apps home directory

dev_root=/c/_data/development

if [ "$1" = "8" ]; then
  export JAVA_HOME=/c/_data/development/applications/java/jdk8/jdk1.8.0_11
else
	export JAVA_HOME=$dev_root/applications/java/jdk7/jdk1.7.0_67
fi

export SCALA_HOME=$dev_root/applications/scala/scala-2.11.2
export M2_HOME=$dev_root/applications/maven/apache-maven-3.2.1
export GROOVY_HOME=$dev_root/applications/groovy/groovy-sdk-2.3.0/groovy-2.3.0
export IDEA_HOME=$dev_root/applications/JetBrains/IntelliJ_IDEA_13.1.4
export GVIM_HOME=$dev_root/applications/gVim/vim74
export NOTEPADPLUS_HOME=$dev_root/applications/Notepad++/Notepad++
#export H2_HOME=/home/lliang/dev/applications/h2
#export TOMCAT_HOME=/home/lliang/dev/applications/tomcat/apache-tomcat-7.0.53
export GRADLE_HOME=$dev_root/applications/gradle/gradle-2.1
#export SPRING_HOME=$dev_root/applications/spring/spring-boot/spring-1.1.0.BUILD-SNAPSHOT
export PLAY_HOME=$dev_root/applications/play/activator-1.2.10-minimal
export CXF_HOME=$dev_root/applications/apache-cxf/apache-cxf-3.0.0
#export SBT_HOME=$dev_root/applications/sbt/sbt-0.13.6
export SCRIPT_HOME=$dev_root/scripts


export PATH=$JAVA_HOME/bin:$SCALA_HOME/bin:$M2_HOME/bin:$GROOVY_HOME/bin:$IDEA_HOME/bin:$GVIM_HOME:$NOTEPADPLUS_HOME/bin:$H2_HOME/bin:$TOMCAT_HOME/bin:$GRADLE_HOME/bin:$SPRING_HOME/bin:$PLAY_HOME:$CXF_HOME/bin:$SCRIPT_HOME:$PATH

alias dev="cd $dev_root"
alias apps="cd $dev_root/applications"
alias pj="cd $dev_root/playpen/java"
alias ll="ls -la"
alias lt="ls -ltr"
#alias bacsr="cd /c/_Data/development/svn_base/Dev_2014_3.0/resources/cap/app.bacs/ivs"
alias cb="cd $dev_root/svn_base/Dev_AIWM_P1"
alias work="cd $dev_root/work"
alias i="idea.bat &"
alias sj="cd $dev_root/playpen/scala" 
alias wm="cd /c/_data/development/applications/wiremock"

export HTTP_PROXY=http://localhost:3128
export http_proxy=http://localhost:3128
