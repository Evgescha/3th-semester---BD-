SELECT mk_name AS ['�����'], wa_name AS ['���'], au_stoumostProcata AS ['���������']FROM (Auto INNER JOIN WidAuto ON Auto.id_widAuto = WidAuto.id_widAuto) INNER JOIN Marka ON Auto.id_Marka=Marka.id_Marka GROUP BY au_stoumostProcata, wa_name, mk_name HAVING au_stoumostProcata>300
 
 