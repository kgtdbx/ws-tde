#!/bin/bash
# Environment setting script.
# don't use .oraenv don't use oraenv don't use oraenv
# Database Security Workshop

export sdir=/home/oracle/Desktop/.workshopconfig

echo
echo "Select action and press [ENTER]: "
echo  ""
echo "     1) Create personally sensative data"
echo "     2) Hack Datafiles- View Sensative Data"
echo "     3) key1db - Copy Master Key to key2db Wallet"
echo "     4) key1db - Copy Master Key to key3db Wallet"
echo "     5) Clone key1db to key1dbclone"
echo "     6) key1db - Copy Master Key to key1dbClone"
echo "     7) Open sqlnet.ora"
echo "     8) Encrypt/Unencrypt Network Traffic"
echo "     9) Help  - Readme.txt"
echo ""
echo -n "(1-9): " 
read test
echo ""
case $test in
	1) echo Hacking Sensative Data Straight from DB Files!!!
           source $sdir/hackdata.sh ;; 
	2) echo Copying Master Key from Key1db Wallet to Key2db Wallet
	   source $sdir/keycopy.sh key2db ;;
	3) echo Copying Master Key from key1db Wallet to key3db Wallet
	   source $sdir/keycopy.sh key3db ;;
	4) echo Cloning key1db to key1dbclone
	   source $sdir/clonedb key1db ;;
        5) echo Copying Master Key from key1db Wallet to key1dbclone Wallet
           source $sdir/listener.sh start ;;
        6) echo Opening sqlnet.ora file
	   gedit /u01/app/oracle/product/11.2.0/dbhome_1/network/admin/sqlnet.ora ;;
        7) echo Updating sqlnet.ora
           source $sdir/switchsqlnetora.sh ;;
        8) echo Getting Readme.txt:
           gedit ./ReadmeSteps.txt ;;
        *) echo invalid option
           exit;;
esac
source $sdir/opatchpath.sh
#cd ..
$SHELL
