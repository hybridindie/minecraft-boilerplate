#!/bin/bash
cd "$( dirname "$0" )"
java -Xms2G -Xmx2G -XX:+UseG1GC -jar paperclip.jar nogui