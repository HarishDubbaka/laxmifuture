#!/bin/bash
echo "Installing dependencies..."
yum install -y wget unzip java-1.8.0-openjdk

TOMCAT_VERSION=9.0.87
echo "Downloading Apache Tomcat $TOMCAT_VERSION..."
wget https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O tomcat.tar.gz

mkdir -p /opt/tomcat
tar -xvzf tomcat.tar.gz -C /opt/tomcat --strip-components=1
chmod +x /opt/tomcat/bin/*.sh
