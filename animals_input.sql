use animals
go
--процедура добвления поставщика
create procedure insert_supplier
  @supplierid int,
  @suppliername varchar(32),
  @supplieraddress varchar(50),
  @supplieremail varchar(32)
  as
  insert supplier(supplierid, suppliername, supplieraddress, supplieremail)
  values(@supplierid, @suppliername, @supplieraddress, @supplieremail)

  exec insert_supplier @supplierid = 101, @suppliername = 'Зоо сказки',
  @supplieraddress = 'ул. канатная 134', @supplieremail = 'zoo_fairytales@gmail.com'
  exec insert_supplier @supplierid = 102, @suppliername = 'Рыбный мастер',
  @supplieraddress = 'ул. приморская 23', @supplieremail = 'fish_masters@gmail.com'
  exec insert_supplier @supplierid = 103, @suppliername = 'Домашний любимец',
  @supplieraddress = 'ул. питерсона 33', @supplieremail = 'pet_stop@gmail.com'
  exec insert_supplier @supplierid = 104, @suppliername = 'В гостях у зверюшек',
  @supplieraddress = 'ул. зверинная 13', @supplieremail = 'animal_nation@gmail.com'
  exec insert_supplier @supplierid = 105, @suppliername = 'Бутик для зайчиков',
  @supplieraddress = 'ул. коноплянная 7', @supplieremail = 'veed_goods@gmail.com'

--животные
create procedure insert_animals
@animalsid int,
@animalsname varchar(32),
@animalsprice int,
@animalsinstructs varchar(100),
@vetcertificate varchar(20),
@units int
as
insert animals(animalsid,animalsname,animalsprice,animalsinstructs,vetcertificate,units)
values(@animalsid,@animalsname,@animalsprice,@animalsinstructs,@vetcertificate,@units)

exec insert_animals @animalsid = 101, @animalsname = 'пинчер', @animalsprice = 300, 
@animalsinstructs = 'кормить 2 раза в день', @vetcertificate = 'да', @units = 3
exec insert_animals @animalsid = 102, @animalsname = 'кролик', @animalsprice = 450, 
@animalsinstructs = 'кормить 5 раза в день', @vetcertificate = 'да', @units = 5
exec insert_animals @animalsid = 103, @animalsname = 'волнистый попугай', @animalsprice = 200, 
@animalsinstructs = 'кормить 2 раза в день', @vetcertificate = 'нет', @units = 8
exec insert_animals @animalsid = 104, @animalsname = 'хомячок', @animalsprice = 500, 
@animalsinstructs = 'кормить 5 раза в день', @vetcertificate = 'да', @units = 20
exec insert_animals @animalsid = 105, @animalsname = 'белая мышь', @animalsprice = 750, 
@animalsinstructs = 'кормить 4 раза в день', @vetcertificate = 'нет', @units = 30
exec insert_animals @animalsid = 106, @animalsname = 'дог', @animalsprice = 230, 
@animalsinstructs = 'кормить 3 раза в день', @vetcertificate = 'да', @units = 5

  --клиенты
create procedure insert_customer
@customerid int,
@customername varchar(32),
@customeremail varchar(32)
as
insert customer(customerid, customername, customeremail)
values(@customerid, @customername, @customeremail)

exec insert_customer @customerid = 101, @customername = 'Кирилл Петров', @customeremail = 'kirill_petrov@gmail.com'
exec insert_customer @customerid = 102, @customername = 'Мария Черная', @customeremail = 'mary_black@gmail.com'
exec insert_customer @customerid = 103, @customername = 'Кристина Зайцева', @customeremail = 'kris_zai@gmail.com'
exec insert_customer @customerid = 104, @customername = 'Пуся Муся', @customeremail = 'p_m@gmail.com'
exec insert_customer @customerid = 105, @customername = 'Джон Сина', @customeremail = 'd_sina@gmail.com'

  --акции
create procedure insert_stock
@stockid int,
@stockname varchar(32),
@sotckdesc varchar(50),
@stockprice int,
@stocknumber int
as
insert stock(stockid, stockname, sotckdesc, stockprice, stocknumber)
values(@stockid, @stockname, @sotckdesc, @stockprice, @stocknumber)

exec insert_stock @stockid = 101, @stockname = 'дом для пернатых', @sotckdesc = 'клетка', 
@stockprice = 444, @stocknumber = 5
exec insert_stock @stockid = 102, @stockname = 'аквариумы только сегодня', @sotckdesc = 'аквариум + корм', 
@stockprice = 550, @stocknumber = 3
exec insert_stock @stockid = 103, @stockname = 'скидка на корм', @sotckdesc = 'еда для кошек', 
@stockprice = 230, @stocknumber = 15
exec insert_stock @stockid = 104, @stockname = 'лекарства плюс', @sotckdesc = 'аптечка для собаки', 
@stockprice = 220, @stocknumber = 20
exec insert_stock @stockid = 105, @stockname = 'whiskas', @sotckdesc = 'кошачий супчик', 
@stockprice = 111, @stocknumber = 3

--сотрудники
create procedure insert_staff
@staffid int,
@staffname varchar(32)
as
insert staff(staffid, staffname)
values(@staffid, @staffname)

exec insert_staff @staffid = 101, @staffname = 'Вася Пупкин'
exec insert_staff @staffid = 102, @staffname = 'Козел Козлович'

--болезни
create procedure insert_disease
@diseasename varchar(20),
@diseasedesc varchar(40)
as
insert disease(diseasename, diseasedesc)
values(@diseasename, @diseasedesc)

exec insert_disease @diseasename = 'отраление', @diseasedesc = 'некачественная еда'
exec insert_disease @diseasename = 'простуда', @diseasedesc = 'вирусы и бактерии'
exec insert_disease @diseasename = 'бешенство', @diseasedesc = 'вирусная болезнь, вызывает инфляцию'

--вакцина
create procedure insert_vaccination
@vaccinationid int,
@diseasename varchar(20),
@vaccinationname varchar(20)
as
insert vaccination(vaccinationid, diseasename, vaccinationname)
values(@vaccinationid, @diseasename, @vaccinationname)

exec insert_vaccination @vaccinationid = 101, @diseasename = 'отраление', @vaccinationname = 'мусорипил'
exec insert_vaccination @vaccinationid = 102, @diseasename = 'простуда', @vaccinationname = 'хлорозалам'
exec insert_vaccination @vaccinationid = 103, @diseasename = 'бешенство', @vaccinationname = 'фриолепт'

--корзина
create procedure insert_basket
@basketid int,
@animalid int,
@stockid int,
@supplierid int,
@numberofunits int,
@vaccinationid int
as
insert basket(basketid, animalid, stockid, supplierid, numberofunits, vaccinationid)
values(@basketid, @animalid, @stockid, @supplierid, @numberofunits, @vaccinationid)

exec insert_basket @basketid = 101, @animalid = 101, @stockid = 104,
@supplierid = 101, @numberofunits = 3, @vaccinationid = 101

--адрес
create procedure insert_adress
@adressid int,
@officeid int
as
insert adress(adressid, officeid)
values(@adressid, @officeid)

exec insert_adress @adressid = 101, @officeid = 101

--города
create procedure insert_cities
@citiesid  int,
@citname varchar(32)
as
insert cities(citiesid, citname)
values(@citiesid, @citname)

exec insert_cities @citiesid = 101, @citname = 'Одесса'
exec insert_cities @citiesid = 102, @citname = 'Киев'

--точки выдачи
create procedure insert_office
@officeid int,
@numberOffice int,
@street varchar(32),
@numstreet int,
@cityid int
as
insert office(officeid, numberOffice, street, numstreet, cityid)
values(@officeid, @numberOffice, @street, @numstreet, @cityid)

exec insert_office @officeid = 101, @numberOffice = 23, @street = 'княжеская', @numstreet = 6, @cityid = 101
exec insert_office @officeid = 102, @numberOffice = 25, @street = 'рижская', @numstreet = 8, @cityid = 102

--заказы
create procedure insert_orders
@ordernumber int,
@basketid int,
@customerid int,
@animalsid int,
@staffid int,
@adressid int
as
insert orders(ordernumber, basketid, customerid, animalsid, staffid, adressid)
values(@ordernumber, @basketid, @customerid, @animalsid, @staffid, @adressid)

exec insert_orders @ordernumber = 101, @basketid = 101, 
@customerid = 101, @animalsid = 101, @staffid = 101, @adressid = 101