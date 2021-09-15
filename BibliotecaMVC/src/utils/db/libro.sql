CREATE TABLE libro(
	lib_id INT NOT NULL PRIMARY KEY,
    lib_resumen VARCHAR(500) NOT NULL,
    lib_anio INTEGER NOT NULL,
    lib_autor INTEGER NOT NULL,
	FOREIGN KEY(lib_id) REFERENCES recurso(rec_id),
    FOREIGN KEY(lib_autor) REFERENCES autor(aut_id)
);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(1, 'Un ejemplar que cierra la saga Harry
    Potter y que nos traslada al momento en el 
    que su protagonista cumple 17 años y con ello,
    pierde el encantamiento protector que lo mantiene a salvo.', 2007, 101);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(2, 'contiene la historia de la magizoología
    y describe las 75 especies mágicas encontradas
    alrededor del mundo. Scamander dice que recolectó 
    la mayoría de la información encontrada en el libro
    a través de observaciones hechas en años de viajes 
    por los cinco continentes.', 2001, 101);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(3, 'Pi vive en la India con su padre, quien es 
    propietario de un zoo. Pero deciden emigrar a Canadá 
    para tener una vida mejor vendiendo animales.', 2001, 102);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(4, 'Ned Malone es un periodista que entrevista 
    al excéntrico profesor Chanller. Tras su reunión el 
    joven queda asombrado por él y termina uniéndose a
    la expedición que organiza para llegar a la llamada Tierra de Maple', 1912, 103);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(5, 'La Emperatriz Infantil está mortalmente enferma 
    y su reino corre un grave peligro. La salvación depende 
    de Atreyu, un valiente guerrero de la tribu de los pieles 
    verdes, y Bastián, un niño tímido que lee con pasión un libro mágico.', 1979, 104);
INSERT INTO libro(lib_id, lib_resumen, lib_anio, lib_autor) 
	VALUES(6, 'La moraleja de El Principito. Podemos comenzar destacando el valor de
			la amistad que encontramos en cada rincón de El Principito, sobre todo a través
			de su mascota.', 1943, 105);

