#!/bin/bash

sudo mkdir -p /root/.dbeaver-drivers

# mysql connector/J 8.0.19
sudo wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.19.tar.gz -O /root/.dbeaver-drivers/mysql-connector-java-8.0.19.tar.gz

# sqlite connector 3.30.1.jar
sudo wget https://bitbucket.org/xerial/sqlite-jdbc/downloads/sqlite-jdbc-3.30.1.jar -O /root/.dbeaver-drivers/sqlite-jdbc-3.30.1.jar

# MS SQL connector 7.4.1.0_enu.tar.gz
sudo wget https://download.microsoft.com/download/6/9/9/699205CA-F1F1-4DE9-9335-18546C5C8CBD/sqljdbc_7.4.1.0_enu.tar.gz -O /root/.dbeaver-drivers/sqljdbc_7.4.1.0_enu.tar.gz

# Oracle cannot be downloaded automatically, so grab it from /root/Downloads if it exists
ora_jdbc="/root/Downloads/ojdbc10-full.tar.gz"
if [ -f "$ora_jdbc" ]; then mv $ora_jdbc /root/.dbeaver-drivers/ojdbc10-full.tar.gz; fi
