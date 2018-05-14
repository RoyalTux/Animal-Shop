use animals
go

create login kirill with password = '12345'
create user kirill for login kirill

create role customers
alter role customers
add member kirill 

grant select on orders to customers
grant select on  staff to customers
revoke select on staff to customers

--

create login vasya with password = '12345'
create user vasya for login vasya

create role admins
alter role admins
add member vasya

grant select on animals to admins
grant select on stock to admins
grant select on customer to admins