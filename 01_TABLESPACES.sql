REM ******************************************************************
REM Fecha         : 26/07/2017
REM Realizado por : Ownk
REM Base de Datos : FS_SGC_US
REM ******************************************************************


REM TABLESPACE TEMPORAL

Create Temporary tablespace TS_TSGC TEMPFILE
'C:\oraclexe\app\oracle\oradata\XE\TSGC.dbf' size 300m
         Extent management local uniform size 2m
;


REM TABLESPACE DE DATOS

CREATE TABLESPACE TS_DSGC DATAFILE 
  'C:\oraclexe\app\oracle\oradata\XE\DSGC.DBF' SIZE 300M AUTOEXTEND ON NEXT 1024M MAXSIZE UNLIMITED
LOGGING
ONLINE
PERMANENT
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
BLOCKSIZE 8K
SEGMENT SPACE MANAGEMENT AUTO
FLASHBACK ON;


REM TABLESPACE DE INDICES 
                                                            
CREATE TABLESPACE TS_ISGC DATAFILE 
  'C:\oraclexe\app\oracle\oradata\XE\ISGC.DBF' SIZE 300M AUTOEXTEND ON NEXT 1024M MAXSIZE UNLIMITED
LOGGING
ONLINE
PERMANENT
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
BLOCKSIZE 8K
SEGMENT SPACE MANAGEMENT AUTO
FLASHBACK ON;   

