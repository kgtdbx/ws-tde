#!/bin/bash
export DB=$1
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/dbhome_1
export ORACLE_SID=$DB
export ORACLE_UNQNAME=$ORACLE_SID
export ORACLE_HOSTNAME
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
export JAVA_HOME=/u01/java/jdk
export PATH=$JAVA_HOME/bin:$ORACLE_HOME/bin:$HOME/bin:$PATH
export TMP=/tmp
export TMPDIR=$TMP
export ORACLE_KEYDIR=$ORACLE_BASE/admin/wallet/$ORACLE_UNQNAME
export ORACLE_DBPUMP=$ORACLE_BASE/

echo ""
env | grep ORACLE
echo ""
echo "Key Directory: $ORACLE_KEYDIR"
echo ""
echo "spfile $ORACLE_HOME/dbs/spfile$ORACLE_SID.ora"
echo ""
echo "User and Password Info:  "
cat ./pwinfo.txt
echo ""

