------------------------------------------------
if not exists(select * from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME=N'a2v10sample')
	exec sp_executesql N'create schema a2v10sample';
go
------------------------------------------------
if not exists(select * from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME=N'adm')
	exec sp_executesql N'create schema adm';
go
------------------------------------------------
grant execute on schema::a2v10sample to public;
grant execute on schema::adm to public;
go
