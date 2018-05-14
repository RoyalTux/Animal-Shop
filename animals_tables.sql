use animals
go

drop table cities;--города
drop table office;--оффис 
drop table adress;
drop table orders;--заказы
drop table animals;--животные
drop table stock;--акции
drop table purchase;--покупка
drop table is_diseased;--болеет ли
drop table disease;--болезнь
drop table treatment;--лечение
drop table staff;--сотрудники
drop table customer;--клиент
drop table species;--вид
drop table supplier;--поставщик

create table supplier --поставщик
(
  supplierid int not null,
  suppliername varchar(32) not null unique,
  supplieraddress varchar(50) not null,
  supplieremail varchar(32) not null,
  
  primary key(supplierid)
);

create table species --виды
(
  speciesid int not null ,
  speciestype varchar(32) not null unique,
  speciesprice int not null,
  cagesize varchar(20) not null,
  speciesinstructs varchar(100) not null,
  vetcertificate varchar(20),
  units int not null,
  
  primary key(speciesid)
);

create table customer --клиент
(
  customerid int not null,
  customername varchar(32) not null,
  customeremail varchar(32) not null,
 -- customeraddress varchar(50) not null,
  
  primary key(customerid)
  
);
create table cities
(

	id  int not null primary key,
	citname varchar(32) not null
);

create table office
(
	id int not null identity(1,1) primary key,
	--customerid int not null,
	--foreign key(customerid) references customer(customerid),
	numberOffice int not null,
	street varchar(32) not null,
	numstreet int not null,
	cityid int not null foreign key references cities(id)
);

create table adress
(
		id int not null identity(1,1) primary key,
		customerid int not null,
	foreign key(customerid) references customer(customerid),
	officeid int not null,
	foreign key(officeid) references office(id)
)


create table staff --сотрудники
(
  staffid int not null,
  staffname varchar(32) not null,
  
  primary key(staffid)
);



create table treatment --лечение
(
  treatmentnumber int not null,
  treatmentresult varchar(20) ,
  
  primary key(treatmentnumber)
);


create table disease --болезнь
(

  diseasename varchar(20),
  diseasedesc varchar(40) not null,
  
  primary key(diseasename)
);

create table is_diseased --болеет ли
(

  isdiseased int not null,
  treatmentnumber int,
  diseasename varchar(20),
  
  primary key(isdiseased),
  foreign key(treatmentnumber) references treatment(treatmentnumber),
  foreign key(diseasename) references disease(diseasename)
);
drop table purchase
create table purchase --покупка
(
   purchaseid int not null,
   staffid int not null,
   customerid int not null,
   
   primary key(purchaseid),
   foreign key(staffid) references staff(staffid),
   foreign key(customerid) references customer(customerid)
   foreign key(animalid) references ani,al(animalid)
);

create table stock --акции
(
  stockid int not null,
  stockname varchar(32) not null,
  sotckdesc varchar(50) not null,
  stockprice int not null,
  stocklevels int not null,
  purchaseid int,
  
  primary key(stockid),
  foreign key(purchaseid) references purchase(purchaseid)
);


create table animals --животные
(
  animalid int not null,
  --purchaseid int,
  animalname varchar(32),
  speciesid int not null,
  isdiseased int not null,
  animaltype varchar(32) not null,
  
  
  primary key(animalid),
  foreign key(speciesid) references species(speciesid),
  foreign key(isdiseased) references is_diseased(isdiseased),
 -- foreign key(purchaseid) references purchase(purchaseid)
);

create table orders --заказы
(
  ordernumber int not null,
  speciesid int,
  stockid int,
  supplierid int,
  staffid int not null,
  numberofunits int ,
  numberofspecies int ,
  
  foreign key(stockid) references stock(stockid),
  foreign key(staffid) references staff(staffid),
  foreign key(supplierid) references supplier(supplierid),
  foreign key(speciesid) references species(speciesid)
);