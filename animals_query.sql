use animals
go

--животные
select * from animals;

--инфа про акции
select stockprice as 'акционная цена',
stockname as 'название акции', sotckdesc as 'товар' from stock;

--union
select diseasedesc as 'описание болезни' ,diseasename  as 'название болезни'  from disease
where diseasename = 'простуда'
union
select diseasename as 'название болезни', vaccinationname as 'вакцина' from vaccination
where diseasename = 'простуда';

--все типы, которые непривиты и дешевле 500
select * from animals
where vetcertificate  = 'нет'
intersect
select * from animals
where animalsprice <500;

--животные которых не купили
select basketid from basket
where not exists(
select animalid from animals
where basket.animalid = animals.animalsid);

--покупки
select * from orders
where customerid=(
select customerid from customer
where customername = 'Кирилл Петров');

--добляем заказ  и удаляем
insert into orders ( ordernumber, customerid, staffid, officeid)
  values (109,  101, 101, 101);

delete from orders
where ordernumber like 109

--
create view animalinfo (animalsid,animalsname,animalsprice,animalsinstructs,vetcertificate,units)
as
select animals.animalsid, animals.animalsname, animals.animalsprice, animals.animalsinstructs,
animals.vetcertificate, animals.units from animals
go
drop view animalinfo
--
create view orderinfo(ordernumber,customerid, staffid, ordercities, orderpostofficenumber, orderpostofficeadress)
as
select orders.ordernumber,  orders.customerid, orders.staffid, cities.citname, office.numberOffice, office.street + office.numstreet as 'customerpostofficeadress' 
from orders join office on orders.officeid = office.officeid
join cities on office.cityid = cities.citiesid
go

--
create function countorders()
returns int
begin
declare @count int
set @count=(select COUNT([ordernumber]) from orders)
return @count
end;

select dbo.countorders()

--
create function countanimals()
returns int
begin
declare @count int
set @count=(select COUNT([animalsid]) from animals)
return @count
end;

select dbo.countanimals()
