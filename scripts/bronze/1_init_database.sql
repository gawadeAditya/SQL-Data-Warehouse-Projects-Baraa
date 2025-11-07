use master;
GO

-- drop database if exists

if exists (select 1 from sys.databases where name = 'SQLDWProjBaraa')
begin
	alter database SQLDWProjBaraa set SINGLE_USER with rollback immediate;
	drop database SQLDWProjBaraa;
end;
go

create database SQLDWProjBaraa;
go 

use SQLDWProjBaraa;
go 

create schema bronze;
GO
create schema silver;
GO
create schema gold;
go
