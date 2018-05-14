create database animals
on
(
	name = 'animals',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\animals.mdf',
	size = 10mb,
	maxsize = 100mb,
	filegrowth = 10mb
)

log on
(
	name = 'loganimals',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\animals.ldf',
	size = 5mb,
	maxsize = 50mb,
	filegrowth = 5mb
)

collate cyrillic_general_ci_as
go