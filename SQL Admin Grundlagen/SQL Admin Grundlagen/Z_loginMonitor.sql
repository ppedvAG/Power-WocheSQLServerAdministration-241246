create or alter trigger trgLogin ON ALL SERVER
FOR CREATE_LOGIN
as
Print 'aha'
select eventdata()
insert into newlogins select eventdata()
if select susers()

rollback

------------------------
create table Newlogins 
(id int identity, what xml)
