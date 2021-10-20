
DROP FOREIGN TABLE IF EXISTS mydata;
DROP SERVER IF EXISTS mydatasrv;
DROP EXTENSION  IF EXISTS file_fdw;

CREATE EXTENSION file_fdw;

CREATE SERVER mydatasrv FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE mydata (x INTEGER, y INTEGER)
	SERVER mydatasrv
	OPTIONS (filename '/home/user/data.csv', format 'csv');

SELECT * FROM mydata;
