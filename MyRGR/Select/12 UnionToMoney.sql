SELECT DISTINCT Procat.id_Klient as [Номер клиента], 'Рассчитывать' as [Новый заказ] FROM Procat WHERE DateDiff("d",pr_inHang,pr_return) > 500
UNION
SELECT DISTINCT Procat.id_Klient as [Номер клиента],'Возможно' as [Новый заказ] FROM Procat WHERE DateDiff("d",pr_inHang,pr_return) BETWEEN 300 AND 500
UNION
SELECT DISTINCT Procat.id_Klient as [Номер клиента],'Спорно' as [Новый заказ] FROM Procat
WHERE DateDiff("d",pr_inHang,pr_return) < 300
