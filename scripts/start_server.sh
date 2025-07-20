#!/bin/bash

# Start Apache HTTPD (if installed)
if command -v httpd >/dev/null 2>&1; then
  sudo service httpd start
fi

# Start Tomcat manually (update path to your installation)
if [ -f /opt/tomcat/bin/startup.sh ]; then
  sudo /opt/tomcat/bin/startup.sh
else
  echo "Tomcat not found in /opt/tomcat"
  exit 1
fi
