#!/bin/sh

# Custom configuration overrides
# Add your custom configuration settings here

# Update JVM size for managed servers
if [ "${SERVER_NAME}" != "AdminServer" ]; then
  export USER_MEM_ARGS="-Xms1536m -Xmx1536m"
fi
if [ "${SERVER_NAME}" == "AdminServer" ]; then
  export USER_MEM_ARGS="-Xms1024m -Xmx1024m"
fi
