--create database Company_2
--use Company_2

--create table Employees(
--Id int primary key identity(1,1),
--[Name] nvarchar(50) not null,
--Surname nvarchar(50) default 'XXX',
--Age int,
--Salary decimal,
--Position nvarchar(50) not null,
--IsDeleted bit default '0'
--)

--insert into Employees([Name], Surname, Age, Salary, Position, IsDeleted)
--values
--('Cavid','Bashirov', 29, 7000, 'Boss', '0'),
--('Emil',  'Abdullayev',20, 3900, 'Deputy', '0'),
--('Orkhan', 'Akberov', 26, 1900, 'Reception', '0'),
--('Fidan', 'Mardanli', 18, 1700, 'Assistant', '0'),
--('Said', 'Nuraliyev', 33, 3500, 'Manager', '0')

--UPDATE Employees
--SET CitiesId = 5
--WHERE Id = 5

--alter table Employees
--add CountryId int foreign key references Countries(Id)

--alter table Employees
--add CitiesId int foreign key references Cities(Id)

--create table Countries(
--Id int primary key identity(1,1),
--CountryName nvarchar(50) not null
--)

--insert into Countries([Name])
--values
--('Azerbaijan'), ('Turkey'), ('Russian'), ('Georgia'), ('Spain')

--create table Cities(
--Id int primary key identity(1,1),
--CityName nvarchar(50) not null
--)

--alter table Cities
--add CountryId int foreign key references Countries(Id)

--insert into Cities([Name])
--values
--('Baku'), ('Ankara'), ('Moskva'), ('Tbilisi'), ('Madrid')

--UPDATE Cities
--SET CountryId = 5
--WHERE Id = 5

--select * from Countries
--inner join Cities
--on Countries.CountryId = Cities.CountryId

--select Employees.Id, Employees.[Name], Employees.Surname, Countries.CountryId, Countries.CountryName, Cities.CityId, Cities.CityName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId

--select Employees.Id, Employees.[Name], Countries.CountryId, Countries.CountryName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where Salary > 2000

--select Employees.[Name], Employees.Surname, Employees.Age, Employees.Salary, Employees.Position, Employees.IsDeleted, Cities.CityName, Countries.CountryName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where Position = 'Reception'

--select Employees.Id, Employees.[Name], Employees.Surname, Countries.CountryId, Countries.CountryName, Cities.CityId, Cities.CityName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where IsDeleted = 'True'
