#!/usr/bin/env bash
export SPARK_MASTER_IP=`ifconfig eth0 | grep "inet " | awk -F'[: ]+' '{ print $4 }'`
export SPARK_LOCAL_IP=`ifconfig eth0 | grep "inet " | awk -F'[: ]+' '{ print $4 }'`
/usr/local/spark/sbin/start-master.sh --properties-file /spark-defaults.conf -i $SPARK_LOCAL_IP "$@"
/bin/bash
