#!/bin/bash
# Environment setting script.
# don't use .oraenv don't use oraenv don't use oraenv

export sdir=/home/oracle/Desktop/.workshopconfig

echo
echo "Choose environment and press [ENTER]: "
echo  ""
echo "     1) Key1DB  - Key1 Database - Use this for initial master key copy"
echo "     2) Key2DB  - Key2 Database"
echo "     3) Key3DB  - Key3 Database"
echo "     4) Listener Start"
echo "     5) Listener Stop"
echo "     6) Open sqlnet.ora"
echo "     7) Help  - Readme.txt"
echo ""
echo -n "(1-4): " 
read test
echo ""
case $test in 
	1) echo Setting Environment for Key1DB Database
	   source $sdir/setkeydb.sh key1db ;;
	2) echo Setting Environment for Key2DB Database
	   source $sdir/setkeydb.sh key2db ;;
	3) echo Setting Environment for Key3DB Database
	   source $sdir/setkeydb.sh key3db ;;
        4) echo Starting Listener
           source $sdir/listener.sh start ;;
        5) echo Stopping Listener
           source $sdir/listener.sh stop ;; 
        6) echo Opening sqlnet.ora file
	   gedit /u01/app/oracle/product/11.2.0/dbhome_1/network/admin/sqlnet.ora ;;
        7) echo Getting Readme.txt
           gedit ./Readme.txt;;
        *) echo invalid option
           exit;;
esac
source $sdir/opatchpath.sh
#cd ..
$SHELL
