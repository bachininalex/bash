#!/bin/bash

target_directory=/Users/alex.bachinin/pjac/account_scenarios/AccountGeneratorScenarios/target/ags-types.jar

if [ -d $target_directory ]
then
	echo "Copy files to AGS workdir"
	cp $target_directory/ags-types.jar ~/Desktop/AGS/AMR-UP-AMS-POD1/scanarios/	

	echo "Run AGS"
	export PORT="8081"
	export CONTEXT="/ag"
	export JAVA_OPTS="-Dexecution.mode=standalone -Dspring.config.location=file:conf/config.yml -Dserver.port=${PORT} -Dserver.contextPath=${CONTEXT} -XX:MaxMetaspaceSize=200m -XX:-UseGCOverheadLimit -XX:+DisableExplicitGC -XX:+HeapDumpOnOutOfMemoryError -Djdk.nio.maxCachedBufferSize=262144 -XX:+UseConcMarkSweepGC -XX:-OmitStackTraceInFastThrow -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=80 -XX:+UseLargePagesInMetaspace -XX:MaxDirectMemorySize=300m -Dstorage.diskCache.bufferSize=64 -Xms512m -Xmx512m"
	java $JAVA_OPTS -jar account-generator.jar
else
	echo "ags-types.jar not found"
fi

