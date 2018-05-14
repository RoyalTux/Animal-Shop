use animals
go

select * from animals;

select stockprice as 'акционная цена',
stockname as 'название акции', sotckdesc as 'товар' from stock;

--union
select speciestype as 'тип животного',speciesid  as 'id'  from species
where speciesid =1004
union
select animaltype, speciesid from animals
where speciesid = 1004;

--все типы, которые заражены
select * from species
where speciesprice  <400
intersect
select * from species
where cagesize = 'заражен';

--животные с id покупки
select animaltype from animals
where purchaseid in 
(select purchaseid from purchase);

--животные которых не купили
select animaltype from animals
where not exists(
select purchaseid from purchase
where animals.purchaseid = purchase.purchaseid);

--покупки
select * from purchase
where customerid=(
select customerid from customer
where customername = 'Кирилл Петров');

--
insert into orders (ordernumber, stockid, supplierid, staffid, numberofunits)
  values (001, 3001, 103, 002, 10);

 delete from orders
where ordernumber like 001

--
create view animalinfo (animalid,purchaseid,speciesid,isdiseased,animaltype)
as
select animals.animalid, animals.purchaseid, animals.speciesid, animals.isdiseased,
animals.animaltype from animals
go

--
create view customerinfo(customerid,customername,customeremail, customercity, customerpostofficenumber, customerpostofficeadress)
as
select customer.customerid, customer.customername, customer.customeremail, cities.citname, office.numberOffice, office.street + office.numstreet as 'customerpostofficeadress' 
from customer join adress on customer.customerid = adress.customerid
join office on adress.officeid = office.id
join cities on office.cityid = cities.id
go

--
create trigger Products_insert
on animals
after insert
as
insert into animalinfo(animalid, purchaseid)
select animalid, 'Добавлено животное ' + speciesid + '   тип ' + animaltype
from INSERTED

create trigger Products_delete
on animals
after delete
as
insert into animals(animalid, purchaseid)
select animalid, 'удалено животное ' + speciesid + '   тип ' + animaltype
from deleted

--
alter function notbye()
returns int
as
begin
	declare @count_not int
	select @count_not = count(*)
	from animals
	where not exists(
select purchaseid from purchase
where animals.purchaseid = purchase.purchaseid)
return @count_not
end;
go

select dbo.notbye()
go


create function countorders()
returns int
begin
declare @count int
set @count=(select COUNT([ordernumber]) from orders)
return @count
end;

select dbo.countorders()

