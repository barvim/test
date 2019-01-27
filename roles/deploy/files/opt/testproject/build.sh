#!/bin/bash
#export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-i386"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-i386
export M2_HOME=/usr/share/maven
export MAVEN_HOME=/usr/share/maven
export PATH=${M2_HOME}/bin:${PATH}

cd $1
#export MAVEN_HOME
mvn clean package

mv $1/target/*.war $2/webapps
echo $JAVA_HOME