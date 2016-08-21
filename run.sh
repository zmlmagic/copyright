#!/bin/bash

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

cp -rf /opt/data/webapps /tomcat/

exec ${CATALINA_HOME}/bin/catalina.sh run
