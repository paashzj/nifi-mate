#!/bin/bash

mkdir /opt/sh/nifi/logs

java -Xmx128M -XX:MaxDirectMemorySize=32M -jar /opt/sh/nifi/mate/nifi-mate.jar >/opt/sh/nifi/logs/nifi_mate.stdout.log 2>/opt/sh/nifi/logs/nifi_mate.stderr.log
tail -f /dev/null