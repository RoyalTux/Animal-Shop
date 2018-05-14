use animals
go

--поставщики
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (101,'Зоо сказки','ул. канатная 134', 'zoo_fairytales@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (102,'Рыбный мастер','ул. приморская 23', 'fish_masters@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (103,'Домашний любимец','ул. питерсона 33', 'pet_stop@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (104,'В гостях у зверюшек','ул. зверинная 13','animal_nation@gmail.com');
insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (105,'Бутик для зайчиков','ул. коноплянная 7', 'veed_goods@gmail.com');
  insert into supplier (supplierid,suppliername, supplieraddress, supplieremail) 
  values (108,'Рыбный мир','ул. коноплянная 7', 'veed_goods@gmail.com');

  --виды
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1011, 'пинчер', 300, 'сильно', 'кормить два раза в день', 'да', 3);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1012, 'кролик', 20, 'средне', 'кормить каждый день, чистить клетку раз в неделю', 'нет', 8);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1013, 'золотая рыбка', 6, 'незаражен', 'кормить каждый день, чистить клетку раз в месяц', 'нет', 45);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, units) 
  values (1014, 'попугай', 25, 'незаражен', 'кормить каждый день, чистить клетку раз в неделю', 4);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1015,'кот', 35, 'незаражен', 'кормить каждый день', 'да', 12);
insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1016,'обезьянка', 395, 'заражен', 'кормить каждый день', 'да', 3);
  insert into species (speciesid, speciestype, speciesprice, cagesize, speciesinstructs, vetcertificate, units) 
  values (1017,'крокодил', 395, 'заражен', 'кормить каждый день', 'да', 3);

  --клиенты
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2001, 'Кирилл Петров', 'kirill_petrov@gmail.com', 'ул. архитекторская 10');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2002, 'Мария Черная', 'mary_black@gmail.com', 'ул. ромашек 2');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2003, 'Кристина Зайцева', 'kris_zai@gmail.com', 'ул. дидирихсона 24');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2004, 'Пуся Муся', 'p_m@gmail.com', 'ул. умников 5');
insert into customer (customerid,customername,customeremail,customeraddress)
  values (2005, 'Джон Сина', 'd_sina@gmail.com', 'ул. силы 3');

  --акции
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3001, 'дом для пернатых','клетка', 4.5, 15);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3002, 'аквариумы только сегодня','аквариум + рыбка', 2, 20);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3003, 'скидка на корм','еда для кошек', 7, 10);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3004, 'лекарства плюс','аптечка для собаки', 6, 2);
insert into stock (stockid, stockname, sotckdesc, stockprice, stocklevels)
  values(3005, 'whiskas','кошачиц супчик', 3, 10);

--сотрудники
insert into staff (staffid,staffname)
  values(001, 'Вася Пупкин');
insert into staff (staffid,staffname)
  values(002, 'Козел Козлович');

--болезни
insert into disease(diseasename,diseasedesc)
values('','кишечное заболевание');
insert into disease(diseasename,diseasedesc)
values('зеленый язык','непатогенное вирусное заболевание');
insert into disease(diseasename,diseasedesc)
values('домашняя оспа','вирусное заболевание');
insert into disease(diseasename,diseasedesc)
values('отраление','некачественная еда');
insert into disease(diseasename,diseasedesc)
values('простуда','вирусы и бактерии');
insert into disease(diseasename,diseasedesc)
values('бешенство','вирусная болезнь, вызывает инфляцию');

--лечение
insert into treatment(treatmentnumber,treatmentresult)
values(100, 'положительно');
insert into treatment(treatmentnumber,treatmentresult)
values(200 , 'отрицательно');
insert into treatment(treatmentnumber,treatmentresult)
values(300 , 'положительно');
insert into treatment(treatmentnumber,treatmentresult)
values(400 , 'положительно');

--is_diseased
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(1,100,'бешенство');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(0,null ,null);
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(2,200,'простуда');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(3,300,'сибирская язва');
insert into is_diseased(isdiseased,treatmentnumber,diseasename)
values(4,null,'отраление');

--покупка
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
  
--животные
insert into animals(animalid,purchaseid,speciesid,isdiseased,animaltype)
values(001,002,1001,0,'попугайчик');
insert into animals(animalid,purchaseid,speciesid,isdiseased,animaltype)
values(002,003,1002, 3,'кот');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(003,004,1003 , 2,'кролик');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(004,001,1004, 4,'ящерка');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(005,005,1005, 1,'хомячек');
insert into animals(animalid,purchaseid, speciesid,isdiseased,animaltype)
values(006,null,1006, 0,'пума');


  
--заказы
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