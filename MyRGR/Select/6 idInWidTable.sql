SELECT id_Auto, au_stoumostProcata FROM Auto WHERE id_Auto = ANY (SELECT id_widAuto FROM WidAuto)