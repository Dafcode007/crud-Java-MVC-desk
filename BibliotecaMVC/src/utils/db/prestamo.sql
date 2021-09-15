CREATE TABLE prestamo(
	pre_id INTEGER PRIMARY KEY AUTOINCREMENT,
    pre_usuario VARCHAR(40) NOT NULL,
    pre_rec INT NOT NULL,
    pre_fecha DATETIME NOT NULL,
	FOREIGN KEY(pre_usuario) REFERENCES usuario(usu_username),
    FOREIGN KEY(pre_rec) REFERENCES recurso(rec_id)
);
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('lucky', 1, '2017-10-25 20:00:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('lucky', 2, '2019-03-15 18:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('lucky', 4, '2019-05-20 20:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('malopez', 3, '2018-05-20 20:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('malopez', 2, '2020-01-20 20:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('diva', 5, '2019-05-20 20:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('diva', 6, '2018-06-22 21:30:00');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('diva', 8, '2020-03-17 15:30:2');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('dreame', 9, '2020-03-17 15:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('dreame', 11, '2020-04-10 18:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('ninja', 11, '2020-02-17 20:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('ninja', 3, '2020-02-20 16:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('ninja', 8, '2020-03-27 18:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('rose', 5, '2020-03-20 21:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('green', 12, '2020-01-10 17:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('green', 10, '2020-02-15 20:30:20');
INSERT INTO prestamo(pre_usuario, pre_rec, pre_fecha) 
	VALUES('green', 4, '2020-03-17 18:30:20');
