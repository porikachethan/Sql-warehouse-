-- Databases and SCHEMAS 
/*-- SCRIPT --
             This code creates the DATABASE named 'Datawarehouse' If it already Exists then it Drops the Existing and recreate new 
             DATABASE and create new database and it also includes SCHEMAS  Named 'bronze', 'silver' , 'gold' . */



-- Create DataBase 'DataWareHouse'

Use Master;
--Drop and Recreate the 'Datawarehouse' Database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'datawarehouse')
BEGIN 
   ALTER DATABASE Datawarehouse SET SINGLE_USER  WITH  ROLLBACK IMMEDIATE ;
DROP DATABASE 'Datawarehouse' ;
END;
GO 


-- create database 'datawarehouse'

CREATE DATABASE Datawarehouse ;
GO
USE Datawarehouse ; 
GO

--creating schemas 
CREATE SCHEMA bronze ;
GO

CREATE SCHEMA silver  ;
GO

CREATE SCHEMA gold ;
GO
