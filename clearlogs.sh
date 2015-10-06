#!/bin/bash
#clear all EM and Database archive logs

echo -n "Clear all database and EM logs? (y): "
read test

case $test in
        y) echo Clearing all logs....
          rm /u01/app/oracle/middleware/gc_inst/user_projects/domains/GCDomain/servers/EMGC_OMS1/logs/owsm/mslogging/*
          rm /u01/app/oracle/middleware/gc_inst/user_projects/domains/GCDomain/servers/EMGC_OMS1/logs/diagnostic_images/*
          rm /u01/app/oracle/middleware/gc_inst/user_projects/domains/GCDomain/servers/EMGC_OMS1/logs/*
          rm /u01/app/oracle/middleware/gc_inst/em/EMGC_OMS1/sysman/log/*
          rm /u01/app/oracle/diag/tnslsnr/workshop/listener/alert/*
          rm /u01/app/oracle/diag/tnslsnr/workshop/listener/trace/*
          rm -R /u01/app/oracle/diag/rdbms/emdb/emdb/trace/*
          rm /u01/app/oracle/diag/rdbms/orcl/orcl/alert/*
          rm -R /u01/app/oracle/diag/rdbms/orcl/orcl/trace/*;;
        *) echo Canceled, not clearing logs
           exit;;
esac
        
