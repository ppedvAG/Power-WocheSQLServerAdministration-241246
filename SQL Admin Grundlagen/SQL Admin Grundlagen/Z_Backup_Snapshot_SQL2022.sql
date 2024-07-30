ALTER DATABASE northwind
SET SUSPEND_FOR_SNAPSHOT_BACKUP = ON;

BACKUP DATABASE northwind
TO DISK = 'c:\_SQLBACKUP\nwind2.bkm'
WITH METADATA_ONLY, FORMAT;

RESTORE DATABASE northwind
FROM DISK = 'c:\_SQLBACKUP\nwind2.bkm'
WITH METADATA_ONLY, FILE = 1, REPLACE --> no DBNAME clause - restore first database in backup set


sqlservercentral.com
mssqltips.com
https://learn.microsoft.com/en-us/sql/relational-databases/backup-restore/create-a-transact-sql-snapshot-backup?view=sql-server-ver16