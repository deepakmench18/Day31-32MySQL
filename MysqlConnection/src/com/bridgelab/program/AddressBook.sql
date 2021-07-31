CREATE DATABASE AddressBookService;
USE AddressBookService;
CREATE TABLE AddressBook
(
NumOfContact INT NOT NULL AUTO_INCREMENT,
FirstName Varchar(255),
LastName Varchar(255),
PhoneNumber Varchar(255),
Address Varchar(255),
State Varchar(255),
City Varchar(255),
ZipCode Varchar(255),
PRIMARY KEY (FirstName)
);

SELECT * FROM AddressBook

INSERT INTO  AddressBook (FirstName,LastName,PhoneNumber,Address,State,City,ZipCode) 
		VALUES ('Deepak','Mench','7038716093','Solapur','Maharashtra','Solapur','413006');
UPDATE AddressBook SET FirstName = 'Dhiraj' WHERE FirstName = 'Deepak' GROUP BY FirstName;
DELETE FROM AddressBook WHERE [FirstName = 'Deepak',LastName = 'Mench'];

     
     