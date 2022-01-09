#!/bin/bash

mkdir $NIFI_HOME/logs

java -Xmx128M -XX:MaxDirectMemorySize=32M -jar $NIFI_HOME/mate/nifi-mate.jar >>$NIFI_HOME/nifi_mate.stdout.log 2>>$NIFI_HOME/nifi_mate.stderr.log

