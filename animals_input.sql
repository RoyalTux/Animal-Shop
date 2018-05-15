use animals
go
--��������� ��������� ����������
create procedure insert_supplier
  @supplierid int,
  @suppliername varchar(32),
  @supplieraddress varchar(50),
  @supplieremail varchar(32)
  as
  insert supplier(supplierid, suppliername, supplieraddress, supplieremail)
  values(@supplierid, @suppliername, @supplieraddress, @supplieremail)

  exec insert_supplier @supplierid = 101, @suppliername = '��� ������',
  @supplieraddress = '��. �������� 134', @supplieremail = 'zoo_fairytales@gmail.com'
  exec insert_supplier @supplierid = 102, @suppliername = '������ ������',
  @supplieraddress = '��. ���������� 23', @supplieremail = 'fish_masters@gmail.com'
  exec insert_supplier @supplierid = 103, @suppliername = '�������� �������',
  @supplieraddress = '��. ��������� 33', @supplieremail = 'pet_stop@gmail.com'
  exec insert_supplier @supplierid = 104, @suppliername = '� ������ � ��������',
  @supplieraddress = '��. ��������� 13', @supplieremail = 'animal_nation@gmail.com'
  exec insert_supplier @supplierid = 105, @suppliername = '����� ��� ��������',
  @supplieraddress = '��. ����������� 7', @supplieremail = 'veed_goods@gmail.com'

--��������
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

exec insert_animals @animalsid = 101, @animalsname = '������', @animalsprice = 300, 
@animalsinstructs = '������� 2 ���� � ����', @vetcertificate = '��', @units = 3
exec insert_animals @animalsid = 102, @animalsname = '������', @animalsprice = 450, 
@animalsinstructs = '������� 5 ���� � ����', @vetcertificate = '��', @units = 5
exec insert_animals @animalsid = 103, @animalsname = '��������� �������', @animalsprice = 200, 
@animalsinstructs = '������� 2 ���� � ����', @vetcertificate = '���', @units = 8
exec insert_animals @animalsid = 104, @animalsname = '�������', @animalsprice = 500, 
@animalsinstructs = '������� 5 ���� � ����', @vetcertificate = '��', @units = 20
exec insert_animals @animalsid = 105, @animalsname = '����� ����', @animalsprice = 750, 
@animalsinstructs = '������� 4 ���� � ����', @vetcertificate = '���', @units = 30
exec insert_animals @animalsid = 106, @animalsname = '���', @animalsprice = 230, 
@animalsinstructs = '������� 3 ���� � ����', @vetcertificate = '��', @units = 5

  --�������
create procedure insert_customer
@customerid int,
@customername varchar(32),
@customeremail varchar(32)
as
insert customer(customerid, customername, customeremail)
values(@customerid, @customername, @customeremail)

exec insert_customer @customerid = 101, @customername = '������ ������', @customeremail = 'kirill_petrov@gmail.com'
exec insert_customer @customerid = 102, @customername = '����� ������', @customeremail = 'mary_black@gmail.com'
exec insert_customer @customerid = 103, @customername = '�������� �������', @customeremail = 'kris_zai@gmail.com'
exec insert_customer @customerid = 104, @customername = '���� ����', @customeremail = 'p_m@gmail.com'
exec insert_customer @customerid = 105, @customername = '���� ����', @customeremail = 'd_sina@gmail.com'

  --�����
create procedure insert_stock
@stockid int,
@stockname varchar(32),
@sotckdesc varchar(50),
@stockprice int,
@stocknumber int
as
insert stock(stockid, stockname, sotckdesc, stockprice, stocknumber)
values(@stockid, @stockname, @sotckdesc, @stockprice, @stocknumber)

exec insert_stock @stockid = 101, @stockname = '��� ��� ��������', @sotckdesc = '������', 
@stockprice = 444, @stocknumber = 5
exec insert_stock @stockid = 102, @stockname = '��������� ������ �������', @sotckdesc = '�������� + ����', 
@stockprice = 550, @stocknumber = 3
exec insert_stock @stockid = 103, @stockname = '������ �� ����', @sotckdesc = '��� ��� �����', 
@stockprice = 230, @stocknumber = 15
exec insert_stock @stockid = 104, @stockname = '��������� ����', @sotckdesc = '������� ��� ������', 
@stockprice = 220, @stocknumber = 20
exec insert_stock @stockid = 105, @stockname = 'whiskas', @sotckdesc = '������� ������', 
@stockprice = 111, @stocknumber = 3

--����������
create procedure insert_staff
@staffid int,
@staffname varchar(32)
as
insert staff(staffid, staffname)
values(@staffid, @staffname)

exec insert_staff @staffid = 101, @staffname = '���� ������'
exec insert_staff @staffid = 102, @staffname = '����� ��������'

--�������
create procedure insert_disease
@diseasename varchar(20),
@diseasedesc varchar(40)
as
insert disease(diseasename, diseasedesc)
values(@diseasename, @diseasedesc)

exec insert_disease @diseasename = '���������', @diseasedesc = '�������������� ���'
exec insert_disease @diseasename = '��������', @diseasedesc = '������ � ��������'
exec insert_disease @diseasename = '���������', @diseasedesc = '�������� �������, �������� ��������'

--�������
create procedure insert_vaccination
@vaccinationid int,
@diseasename varchar(20),
@vaccinationname varchar(20)
as
insert vaccination(vaccinationid, diseasename, vaccinationname)
values(@vaccinationid, @diseasename, @vaccinationname)

exec insert_vaccination @vaccinationid = 101, @diseasename = '���������', @vaccinationname = '���������'
exec insert_vaccination @vaccinationid = 102, @diseasename = '��������', @vaccinationname = '����������'
exec insert_vaccination @vaccinationid = 103, @diseasename = '���������', @vaccinationname = '��������'

--�������
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

--�����
create procedure insert_adress
@adressid int,
@officeid int
as
insert adress(adressid, officeid)
values(@adressid, @officeid)

exec insert_adress @adressid = 101, @officeid = 101

--������
create procedure insert_cities
@citiesid  int,
@citname varchar(32)
as
insert cities(citiesid, citname)
values(@citiesid, @citname)

exec insert_cities @citiesid = 101, @citname = '������'
exec insert_cities @citiesid = 102, @citname = '����'

--����� ������
create procedure insert_office
@officeid int,
@numberOffice int,
@street varchar(32),
@numstreet int,
@cityid int
as
insert office(officeid, numberOffice, street, numstreet, cityid)
values(@officeid, @numberOffice, @street, @numstreet, @cityid)

exec insert_office @officeid = 101, @numberOffice = 23, @street = '���������', @numstreet = 6, @cityid = 101
exec insert_office @officeid = 102, @numberOffice = 25, @street = '�������', @numstreet = 8, @cityid = 102

--������
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