use animals
go

create table supplier --поставщик
(
  supplierid int not null,
  suppliername varchar(32) not null unique,
  supplieraddress varchar(50) not null,
  supplieremail varchar(32) not null,
  
  primary key(supplierid)
);

create table animals --животные
(
  animalsid int not null ,
  animalsname varchar(32) not null unique,
  animalsprice int not null,
  animalsinstructs varchar(100) not null,
  vetcertificate varchar(20),
  units int not null,
  
  primary key(animalsid)
);

create table customer --клиент
(
  customerid int not null,
  customername varchar(32) not null,
  customeremail varchar(32) not null,
  
  primary key(customerid) 
);
create table cities
(
	citiesid  int not null,
	citname varchar(32) not null

	primary key(citiesid)
);

create table office
(
	officeid int not null primary key,
	numberOffice int not null,
	street varchar(32) not null,
	numstreet int not null,
	cityid int not null 
	foreign key references cities(citiesid)
);

create table adress
(
	adressid int not null primary key,
	officeid int not null,
	foreign key(officeid) references office(officeid),
)

create table staff --продавец
(
  staffid int not null,
  staffname varchar(32) not null,
  
  primary key(staffid)
);

create table disease --болезнь
(
  diseasename varchar(20) not null,
  diseasedesc varchar(40) not null,
  
  primary key(diseasename)
);

create table vaccination --вакцинация
(
  vaccinationid int not null,
  diseasename varchar(20) not null,
  vaccinationname varchar(20),
  
  primary key(vaccinationid),
  foreign key(diseasename) references disease(diseasename)
);

create table stock --акции
(
  stockid int not null,
  stockname varchar(32) not null,
  sotckdesc varchar(50) not null,
  stockprice int not null,
  stocknumber int not null,
  
  primary key(stockid),
);

create table basket --корзина
(
   basketid int not null,
   animalid int not null,
   stockid int,
   supplierid int,
   numberofunits int not null,
   vaccinationid int not null,

   primary key(basketid),
   foreign key(supplierid) references supplier(supplierid),
   foreign key(animalid) references animals(animalsid),
   foreign key(stockid) references stock(stockid),
   foreign key(vaccinationid) references vaccination(vaccinationid)
);
create table orders --заказы
(
  ordernumber int not null,
  basketid int not null,
  customerid int not null,
  animalsid int,
  staffid int not null,
  adressid int not null,

  primary key(ordernumber),
  foreign key(staffid) references staff(staffid),
  foreign key(basketid) references basket(basketid),
  foreign key(customerid) references customer(customerid),
  foreign key(animalsid) references animals(animalsid),
  foreign key(adressid) references adress(adressid)
);
