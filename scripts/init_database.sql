
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS(select 1 from sys.database where name = 'DataWarehouse')
Begin
    Alter Database DataWarehouse set single_user with rollback immediate;
    Drop database DataWarehouse;
end;
go

-- create database
create database DataWarehouse;
go

--Create Schema
create schema bronze;

create schema silver;
Go
create schema gold;
