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

	select [Users!TUser!Array] = null, [Id!!Id] = Id, UserName, PersonName, PhoneNumber, Memo, DateCreated
	from a2security.Users
	where Void = 0 and Id <> 0
	order by Id;
end
go
------------------------------------------------
create or alter procedure adm.[User.Create.Load]
@UserId bigint,
@Id bigint = null
as
begin
	set nocount on;
	set transaction isolation level read uncommitted;

	select [User!TUser!Object] = null, [Id!!Id] = Id, UserName, PersonName, PhoneNumber, Memo,
		[Password] = cast(null as nvarchar(255)), Confirm = cast(null as nvarchar(255))
	from a2security.Users
	where Id = @Id;
end
go
------------------------------------------------
create or alter procedure adm.[User.Load]
@UserId bigint,
@Id bigint = null
as
begin
	set nocount on;
	set transaction isolation level read uncommitted;

	select [User!TUser!Object] = null, [Id!!Id] = Id, UserName, PersonName, PhoneNumber, Memo
	from a2security.Users
	where Id = @Id;
end
go
