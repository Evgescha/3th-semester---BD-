USE Auto 
 if exists ( SELECT name FROM sysobjects WHERE name = 'Procat' AND type = 'U' ) 
DROP TABLE Procat 

 if exists ( SELECT name FROM sysobjects WHERE name = 'Auto' AND type = 'U' ) 
DROP TABLE Auto 

 if exists ( SELECT name FROM sysobjects WHERE name = 'WidAuto' AND type = 'U' ) 
DROP TABLE WidAuto 

 if exists ( SELECT name FROM sysobjects WHERE name = 'Marka' AND type = 'U' ) 
DROP TABLE Marka 

 if exists ( SELECT name FROM sysobjects WHERE name = 'Klient' AND type = 'U' ) 
DROP TABLE Klient 


Create Table Klient(
id_Klient INT NOT NULL PRIMARY KEY Identity ,
kl_firstName char(50),
kl_lastName char(50),
kl_otherName char(50),
kl_adres char(50),
kl_tellNumber int
)


Create Table Marka(
id_Marka INT NOT NULL PRIMARY KEY Identity,
mk_name char(50)
)


Create Table WidAuto(
id_widAuto INT NOT NULL PRIMARY KEY Identity,
wa_name char(50)
)


Create Table Auto(
id_Auto INT NOT NULL PRIMARY KEY Identity,
id_widAuto integer,
id_Marka integer,
au_stoumostProcata float ,
FOREIGN KEY (id_Marka)  REFERENCES Marka(id_Marka),
FOREIGN KEY (id_widAuto)  REFERENCES WidAuto(id_widAuto)
)


CREATE TABLE Procat(
id_Procat INT NOT NULL PRIMARY KEY Identity,
id_Klient integer ,
id_Auto integer  ,
pr_inHang date,
pr_return date,
FOREIGN KEY (id_Klient) REFERENCES Klient(id_Klient),
FOREIGN KEY (id_Auto)  REFERENCES Auto(id_Auto)
)

GO 

