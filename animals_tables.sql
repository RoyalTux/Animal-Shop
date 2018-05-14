use animals
go

drop table cities;--������
drop table office;--����� 
drop table adress;
drop table orders;--������
drop table animals;--��������
drop table stock;--�����
drop table purchase;--�������
drop table is_diseased;--������ ��
drop table disease;--�������
drop table treatment;--�������
drop table staff;--����������
drop table customer;--������
drop table species;--���
drop table supplier;--���������

create table supplier --���������
(
  supplierid int not null,
  suppliername varchar(32) not null unique,
  supplieraddress varchar(50) not null,
  supplieremail varchar(32) not null,
  
  primary key(supplierid)
);

create table species --����
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

create table customer --������
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


create table staff --����������
(
  staffid int not null,
  staffname varchar(32) not null,
  
  primary key(staffid)
);



create table treatment --�������
(
  treatmentnumber int not null,
  treatmentresult varchar(20) ,
  
  primary key(treatmentnumber)
);


create table disease --�������
(

  diseasename varchar(20),
  diseasedesc varchar(40) not null,
  
  primary key(diseasename)
);

create table is_diseased --������ ��
(

  isdiseased int not null,
  treatmentnumber int,
  diseasename varchar(20),
  
  primary key(isdiseased),
  foreign key(treatmentnumber) references treatment(treatmentnumber),
  foreign key(diseasename) references disease(diseasename)
);
drop table purchase
create table purchase --�������
(
   purchaseid int not null,
   staffid int not null,
   customerid int not null,
   
   primary key(purchaseid),
   foreign key(staffid) references staff(staffid),
   foreign key(customerid) references customer(customerid)
   foreign key(animalid) references ani,al(animalid)
);

create table stock --�����
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


create table animals --��������
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

create table orders --������
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