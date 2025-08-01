#!/bin/bash

# Set JAVA_HOME to Java 17 installation path
export JAVA_HOME=$HOME/.jenv/versions/17.0.15
export PATH=$JAVA_HOME/bin:$PATH

echo "Using Java version:"
java -version

# Set Trino base directory - adjust this if needed
TRINO_HOME=/home/hpstrikersid_0711/trino-server-421

# Hadoop config dir (adjust to your Hadoop conf dir)
HADOOP_CONF_DIR=/home/hpstrikersid_0711/hadoop/etc/hadoop

# Hive config - ensure hive-site.xml points to PostgreSQL metastore
HIVE_CONF_DIR=/home/hpstrikersid_0711/hive-3.1.3/conf
export HADOOP_CONF_DIR
export HIVE_CONF_DIR

cd $TRINO_HOME

# Run Trino server using java 17 explicitly
# You can use the Trino launcher script or java command directly

# Option 1: Using Trino launcher script (if it uses $JAVA_HOME)
./bin/launcher start

# Option 2: If launcher script does not respect JAVA_HOME, run java directly:
# java -server -Xmx16G -jar launcher.jar run

echo "Trino started with Java 17"
