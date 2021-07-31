CREATE DATABASE Address_BookService;
USE AddressBookService;
CREATE TABLE AddressBook
(
NumOfContact INT NOT NULL AUTO_INCREMENT,
FirstName Varchar(255) NOT NULL,
LastName Varchar(255) NOT NULL,
PhoneNumber Varchar(255),
Address Varchar(255),
State Varchar(255),
City Varchar(255),
ZipCode Varchar(255),
primary key(NumOfContact)
);
SELECT * FROM AddressBook;
insert into AddressBook (FirstName,LastName,PhoneNumber,Address,State,City,ZipCode,Email_ID)
			values('Deepak','Mench','7038716093','Solapur','Maharashtra','Solapur','413006','deepakmench18@gmail.com');
insert into AddressBook (FirstName,LastName,PhoneNumber,Address,State,City,ZipCode)
			values('Dhiraj','Mench','1234567890','Solapur','Maharashtra','Solapur','413006');
insert into AddressBook (FirstName,LastName,PhoneNumber,Address,State,City,ZipCode)
			values('Shridhar','Mench','1234567890','Solapur','Maharashtra','Solapur','413006');
insert into AddressBook (FirstName,LastName,PhoneNumber,Address,State,City,ZipCode)
			values('Vidyadhar','Mench','1234567890','Solapur','Maharashtra','Solapur','413006');
SELECT * FROM AddressBook;
UPDATE AddressBook set PhoneNumber = '93261960111' WHERE NumOfContact = '4';
ALTER TABLE AddressBook ADD Email_ID Varchar(255); 
DELETE FROM AddressBook WHERE NumOfContact = '5';
UPDATE AddressBook SET Email_ID = 'deepakmench18@gmail.com' where NumOfContact = '1';
UPDATE AddressBook SET Email_ID = 'xyz18@gmail.com' where NumOfContact = '2';
UPDATE AddressBook SET Email_ID = 'ABC18@gmail.com' where NumOfContact = '3';
UPDATE AddressBook SET Email_ID = 'FAWXY18@gmail.com' where NumOfContact = '4';
SELECT City,State FROM AddressBook WHERE City = 'Solapur' OR State = 'Maharashtra';
SELECT count(City OR State) FROM AddressBook;
SELECT count(City) FROM AddressBook Where State = 'Maharashtra';
UPDATE AddressBook SET State = 'Karanataka' WHERE NumOfContact = '2';
UPDATE AddressBook SET State = 'Goa' WHERE NumOfContact = '3';
UPDATE AddressBook SET State = 'Delhi' WHERE NumOfContact = '4';
SELECT * FROM AddressBook;
SELECT FirstName FROM AddressBook order by FirstName OR LastName;
ALTER TABLE AddressBook ADD Type varchar(255) after FirstName;
ALTER TABLE AddressBook DROP COLUMN Type;
ALTER TABLE AddressBook ADD Type varchar(255) after NumOfContact;
UPDATE AddressBook SET Type = 'FAMILY' WHERE NumOfContact = '1';
UPDATE AddressBook SET Type = 'Friend' WHERE NumOfContact = '2';
UPDATE AddressBook SET Type = 'Friend' WHERE NumOfContact = '3';
UPDATE AddressBook SET Type = 'Professional' WHERE NumOfContact = '4';
SELECT count(Type) from AddressBook;
SELECT * FROM AddressBook;
CREATE TABLE PersonName (NumId int not null auto_increment,FirstName Varchar(150),LastName Varchar(150),ContactNumber varchar(150),primary key(NumId));
SELECT * FROM PersonName;
Insert into PersonName (FirstName,LastName,ContactNumber) values ('Deepak','Mench','07038716093');
insert into PersonName values ('2','Dhiraj','Mench','1234567890');
insert into PersonName values ('3','Raj','Dhanshetty','145263789');
CREATE TABLE Address 
(Id int ,
StreetName varchar(255),
City varchar(20),
State varchar(25),
Pincode int,
foreign key(Pincode) references PersonName(NumId));
insert into Address (StreetName,City,State,Pincode) values ('Sangmeshwar','Solapur','Maharashtra','413006');
insert into Address values ('2','Malikargun','Solapur','Maharashtra','413005');
insert into Address values ('3','Kumbari','Solapur','Maharashtra','413004');
SELECT * FROM Address;
ALTER TABLE Address ADD FOREIGN KEY(Pincode) references PersonName(NumId);

ALTER TABLE PersonName ADD FOREIGN KEY(NumId) references Address(Id);

SELECT PersonName.NumId,Address.Id From PersonName inner join Address on PersonName.NumId = Address.Id;
SELECT PersonName.FirstName,Address.City From PersonName left join Address on PersonName.FirstName = Address.City;
