-- db delete log sql

USE db_name;
GO

ALTER DATABASE db_name
SET RECOVERY SIMPLE;
GO

DBCC SHRINKFILE (db_log_name, 1);
GO

ALTER DATABASE db_name
SET RECOVERY FULL;
GO
