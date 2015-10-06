source ./em12c.sh
emctl status oms -details -sysman_pwd Manager_1
source ./grid.sh
crsctl check has
lsnrctl status
emctl status oms
echo Scroll up for EM status detail.
echo To start Enterprise Manager run these commands:
echo ---------------
echo source em12c.sh 
echo emctl start oms
echo --------------- 
echo See Oracle Clusterware and Oracle Restart docs for more info:
echo https://docs.oracle.com/database/121/ADMIN/restart.htm#ADMIN12708
$SHELL
