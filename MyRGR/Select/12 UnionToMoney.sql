SELECT DISTINCT Procat.id_Klient as [����� �������], '������������' as [����� �����] FROM Procat WHERE DateDiff("d",pr_inHang,pr_return) > 500
UNION
SELECT DISTINCT Procat.id_Klient as [����� �������],'��������' as [����� �����] FROM Procat WHERE DateDiff("d",pr_inHang,pr_return) BETWEEN 300 AND 500
UNION
SELECT DISTINCT Procat.id_Klient as [����� �������],'������' as [����� �����] FROM Procat
WHERE DateDiff("d",pr_inHang,pr_return) < 300
