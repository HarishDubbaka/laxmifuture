#!/bin/bash
#!/bin/bash

# Start Apache HTTPD if installed
if command -v httpd >/dev/null 2>&1; then
  sudo service httpd start
fi

# Start Tomcat from its folder
/opt/tomcat/bin/startup.sh

