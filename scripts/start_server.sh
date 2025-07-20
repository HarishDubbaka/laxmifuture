#!/bin/bash

# Start Tomcat if available
if [ -f /opt/tomcat/bin/startup.sh ]; then
  echo "Starting Tomcat..."
  sudo /opt/tomcat/bin/startup.sh
else
  echo "Tomcat not found at /opt/tomcat/bin/startup.sh"
fi

# Start httpd if available
if systemctl list-units --type=service | grep -q "httpd.service"; then
  echo "Starting httpd..."
  sudo systemctl start httpd
  sudo systemctl enable httpd
else
  echo "httpd.service not available on this host"
fi
