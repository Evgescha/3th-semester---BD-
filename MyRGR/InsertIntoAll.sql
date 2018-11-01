USE Auto 
GO

Delete FROM Procat;
GO
Delete FROM Auto;
GO
Delete FROM WidAuto;
GO
Delete FROM Marka;
GO
Delete FROM Klient;
GO

INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Наруто','Узумаки','Минатович','Центр Конохи, дом 17',4587926);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber) VALUES ('Саске','Учиха','Микотович','Коноха, серевные врата',1234867);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Сакура','Харуно','Мушуановна','Коноха, центральная плозадь 2',4519735);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Гаара','Собаку','Казекагович','Деревня скрытого песка',1236544);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Би','Киллер','Репович','Деревня скрытого камня',8695183);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Итачи','Учиха','Микотович','Акацуки 2',2189474);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Нагато','Яхико','Конанавич','Деревня скрытого дождя',2348948);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Ичиго', 'Куросаки', 'Батькович', 'Минск, улица Пушкина, дом Колотушкина',3479854);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ('Рукия', 'Кучики', 'Савановна', 'Сообщество душ, Сейритейл',7898745);
GO
INSERT INTO Klient   (kl_firstName,kl_lastName,kl_otherName,kl_adres,kl_tellNumber)VALUES ( 'Нацу', 'Драгнил', 'ФейриТейлович', 'Королевство Фиора, гильдия ФейриТейл', 2323458);
GO


INSERT INTO Marka(mk_name) VALUES ('BMW');
GO
INSERT INTO Marka(mk_name) VALUES ('VOLVO');
GO
INSERT INTO Marka(mk_name) VALUES ('AUDI');
GO
INSERT INTO Marka(mk_name) VALUES ('FORD'); 
GO
INSERT INTO Marka(mk_name) VALUES ('MUSTANG');
GO
INSERT INTO Marka(mk_name) VALUES ('JAVA');
GO
INSERT INTO Marka(mk_name) VALUES ('MERSEDES');
GO
INSERT INTO Marka(mk_name) VALUES ('TOYOTA');
GO
INSERT INTO Marka(mk_name) VALUES ('MAZDA');
GO
INSERT INTO Marka(mk_name) VALUES ('VOLKSVAGEN');
GO


INSERT INTO WidAuto(wa_name) VALUES ('Автобус');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Троллейбус');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Легковой автомобиль');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Камаз');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Мини-Автобус');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('СпортКар');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Трамвай');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Молоковоз');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Скорая');
GO
INSERT INTO WidAuto(wa_name)  VALUES ('Катафалк');
GO


INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata) VALUES (2,10,100);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (4,9,30);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (6,8,10);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (8,7,300);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (10,6,1000);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (9,5,2);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (7,4,102);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (5,3,200);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (3,2,300);
GO
INSERT INTO Auto(id_widAuto, id_Marka, au_stoumostProcata)  VALUES (1,1,740);
GO



INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return) VALUES (10,6, ' 2018-03-29', '2018-11-08');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (9,7, '2018-05-18', '2018-12-28');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (8,8, ' 2018-08-24', '2020-05-12');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (7,9, ' 2018-10-02', '2020-06-02' );
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (6,10, ' 2018-11-28', '2020-12-01');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (5,1, ' 2018-03-20', '2019-04-23');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (4,2, ' 2018-06-08', '2019-07-19');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (3,3, '2018-08-02', '2019-09-05');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (2,4, '2018-10-12', '2020-01-02');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return)  VALUES (1,5, '2018-10-16', '2020-07-18');
GO
INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return) VALUES (2,9, '2018-10-16', '2020-12-01');
GO
