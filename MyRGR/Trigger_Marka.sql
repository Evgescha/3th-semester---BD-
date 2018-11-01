IF EXISTS (SELECT name  
     FROM   sysobjects  
     WHERE  name = 'TrgInsMarka'  
     AND     type = 'TR') 
    DROP TRIGGER TrgInsMarka 
GO 

CREATE TRIGGER TrgInsMarka 
ON Marka 
FOR INSERT 
AS  
BEGIN 
IF EXISTS(SELECT * FROM Marka WHERE mk_name = (SELECT INSERTED.mk_name FROM INSERTED))
begin
ROLLBACK TRANSACTION
end
END

