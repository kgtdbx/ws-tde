#!/bin/bash
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/12.1.0/grid
#export ORACLE_SID=emdb; export ORACLE_SID
#export ORACLE_UNQNAME=emdb
export ORACLE_HOSTNAME
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
export JAVA_HOME=/u01/java/jdk
export PATH=$JAVA_HOME/bin:$ORACLE_HOME/bin:$HOME/bin:$PATH
export TMP=/tmp
export TMPDIR=$TMP

env | grep ORACLE
