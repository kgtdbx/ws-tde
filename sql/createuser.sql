create user &UserName identified by &Password;
grant connect to &&UserName
grant create table to &&UserName;
grant create index to &&UserName;
