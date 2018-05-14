use animals
go

--����������
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (101,'��� ������','��. �������� 134', 'zoo_fairytales@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (102,'������ ������','��. ���������� 23', 'fish_masters@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (103,'�������� �������','��. ��������� 33', 'pet_stop@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (104,'� ������ � ��������','��. ��������� 13','animal_nation@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (105,'����� ��� ��������','��. ����������� 7', 'veed_goods@gmail.com');
  insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (108,'������ ���','��. ����������� 7', 'veed_goods@gmail.com');

  --����
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1011, '������', 300, '������', '������� ��� ���� � ����', '��', 3);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1012, '������', 20, '������', '������� ������ ����, ������� ������ ��� � ������', '���', 8);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1013, '������� �����', 6, '���������', '������� ������ ����, ������� ������ ��� � �����', '���', 45);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, units) 
  values (1014, '�������', 25, '���������', '������� ������ ����, ������� ������ ��� � ������', 4);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1015,'���', 35, '���������', '������� ������ ����', '��', 12);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1016,'���������', 395, '�������', '������� ������ ����', '��', 3);
  insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1017,'��������', 395, '�������', '������� ������ ����', '��', 3);

  --�������
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2001, '������ ������', 'kirill_petrov@gmail.com', '��. �������������� 10');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2002, '����� ������', 'mary_black@gmail.com', '��. ������� 2');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2003, '�������� �������', 'kris_zai@gmail.com', '��. ����������� 24');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2004, '���� ����', 'p_m@gmail.com', '��. ������� 5');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2005, '���� ����', 'd_sina@gmail.com', '��. ���� 3');

  --�����
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3001, '��� ��� ��������','������', 4.5, 15);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3002, '��������� ������ �������','�������� + �����', 2, 20);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3003, '������ �� ����','��� ��� �����', 7, 10);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3004, '��������� ����','������� ��� ������', 6, 2);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3005, 'whiskas','������� ������', 3, 10);

--����������
insert into staff (staffid,staffname)
  values(001, '���� ������');
insert into staff (staffid,staffname)
  values(002, '����� ��������');

--�������
insert into disease(diseasename,diseasedesc)
values('','�������� �����������');
insert into disease(diseasename,diseasedesc)
values('������� ����','������������ �������� �����������');
insert into disease(diseasename,diseasedesc)
values('�������� ����','�������� �����������');
insert into disease(diseasename,diseasedesc)
values('���������','�������������� ���');
insert into disease(diseasename,diseasedesc)
values('��������','������ � ��������');
insert into disease(diseasename,diseasedesc)
values('���������','�������� �������, �������� ��������');

--�������
insert into treatment(treatmentnumber,treatmentresult)
values(100, '������������');
insert into treatment(treatmentnumber,treatmentresult)
values(200 , '������������');
insert into treatment(treatmentnumber,treatmentresult)
values(300 , '������������');
insert into treatment(treatmentnumber,treatmentresult)
values(400 , '������������');

--is_diseased
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(1,100,'���������');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(0,null ,null);
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(2,200,'��������');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(3,300,'��������� ����');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(4,null,'���������');

--�������
insert into purchase (purchaseid, staffid, customerid)
  values (001, 002, 2001);
insert into purchase (purchaseid, staffid, customerid)
  values (002, 002, 2002);
insert into purchase (purchaseid, staffid, customerid)
  values (003, 002, 2001);
insert into purchase (purchaseid, staffid, customerid)
  values (004, 001, 2005);
insert into purchase (purchaseid, staffid, customerid)
  values (005, 001, 2004);
  
--��������
insert into animals(animalid,purchaseid,speciesid,isdiseased,animaltype)
values(001,002,1001,0,'����������');
insert into animals(animalid,purchaseid,speciesid,isdiseased,animaltype)
values(002,003,1002, 3,'���');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(003,004,1003 , 2,'������');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(004,001,1004, 4,'������');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(005,005,1005, 1,'�������');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(006,null,1006, 0,'����');


  
--������
insert into orders (ordernumber, stockid, supplierid, staffid, numberofunits)
  values (001, 3001, 103, 002, 10);
insert into orders (ordernumber, stockid, supplierid, staffid, numberofunits)
  values (002, 3002, 102, 002, 5);
insert into orders (ordernumber, speciesid, supplierid, staffid,  numberofspecies)
  values (003,1003,102, 001, 10);
insert into orders (ordernumber, speciesid, supplierid, staffid,  numberofspecies)
  values (004,1004,103, 001, 3);
insert into orders (ordernumber, speciesid,stockid, supplierid, staffid,  numberofspecies)
  values (004,1001,3001,103, 001, 3);