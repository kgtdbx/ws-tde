-- Creating encrypted tablespace


create tablespace tskey1 datafile
	'/u01/app/oracle/oradata/key1db/tskey1.dbf' 
	size 2M encryption default storage(encrypt);
