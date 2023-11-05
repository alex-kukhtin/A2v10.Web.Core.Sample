------------------------------------------------
create or alter procedure adm.[Settings.Menu.Index]
@UserId bigint
as
begin
	set nocount on;
	set transaction isolation level read uncommitted;

	select [Menu!TMenu!Array] = null, [Id!!Id] = 1, [Name] = N'@[Users]', [Url] = N'/settings/user/index';

end
go
------------------------------------------------
create or alter procedure adm.[User.Index]
@UserId bigint
as
begin
	set nocount on;
	set transaction isolation level read uncommitted;

	select [Users!TUser!Array] = null, [Id!!Id] = Id, UserName, PersonName, Memo, DateCreated
	from a2security.Users
	where Void = 0 and Id <> 0
	order by Id;
end
go
