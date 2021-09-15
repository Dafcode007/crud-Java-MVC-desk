CREATE TABLE revista(
	rev_id INT NOT NULL PRIMARY KEY,
    rev_volumen VARCHAR(20) NOT NULL,
    rev_serie VARCHAR(20) NOT NULL,
    FOREIGN KEY(rev_id) REFERENCES recurso(rec_id)    
);
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(7, '30 volúmenes', '3 números');
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(8, ' 31 volúmenes', '4 números');
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(9, '25 volúmenes', ' 8 números');
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(10, '170 volúmenes', '8 números');
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(11, '279 volúmenes', '12 números');
INSERT INTO revista(rev_id, rev_volumen, rev_serie) 
	VALUES(12, '79 volúmenes', '6 números');

