USE Auto
GO
IF EXISTS (SELECT name  
    FROM   sysobjects  
    WHERE  name = 'AddInfo' 
    AND    type = 'P') 
    DROP PROCEDURE AddInfo 
GO 
CREATE PROCEDURE AddInfo 
@Name varchar(50),	
@Tell int,	
@WidA varchar(50),	
@Mark varchar(50),	
@Return date
AS
DECLARE @id_KL int
DECLARE @id_WID int
DECLARE @id_MARK int
DECLARE @id_AUT int
DECLARE @CheckDate datetime = GETDATE();  
	IF NOT EXISTS (SELECT id_Klient FROM Klient WHERE kl_firstName = @Name AND kl_tellNumber = @Tell)
		begin
		INSERT INTO Klient(kl_firstName, kl_tellNumber) VALUES (@Name, @Tell)
		end
	SET @id_KL = (SELECT id_Klient FROM Klient WHERE kl_firstName = @Name AND kl_tellNumber = @Tell)
	
	IF NOT EXISTS (SELECT id_widAuto FROM WidAuto WHERE wa_name = @WidA)
		begin
		INSERT INTO WidAuto(wa_name) VALUES (@WidA)
		end
	SET @id_WID = (SELECT id_widAuto FROM WidAuto WHERE wa_name = @WidA)
	
	IF NOT EXISTS (SELECT id_Marka FROM Marka WHERE mk_name = @Mark)
		begin
		INSERT INTO Marka(mk_name) VALUES (@Mark)
		end
	SET @id_MARK = (SELECT id_Marka FROM Marka WHERE mk_name = @Mark)
	
	IF NOT EXISTS (SELECT id_Auto FROM Auto WHERE id_widAuto = @id_WID AND id_Marka = @id_MARK)
		begin
		INSERT INTO Auto(id_widAuto, id_Marka) VALUES (@id_WID, @id_MARK)
		end
	SET @id_AUT = (SELECT id_Auto FROM Auto WHERE id_widAuto = @id_WID AND id_Marka = @id_MARK)
	
	INSERT INTO Procat(id_Klient, id_Auto, pr_inHang, pr_return) VALUES (@id_KL, @id_AUT, @CheckDate, @Return)
	GO