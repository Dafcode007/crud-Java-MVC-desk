CREATE TABLE autor(
	aut_id INT PRIMARY KEY,
    aut_nombres VARCHAR(20) NOT NULL,
    aut_apellidos VARCHAR(20) NOT NULL,
    aut_nacionalidad VARCHAR(20) NOT NULL    
);
INSERT INTO autor(aut_id, aut_nombres, aut_apellidos, aut_nacionalidad) 
	values (101, "JK"," Rowling", " británica");
INSERT INTO autor(aut_id, aut_nombres, aut_apellidos, aut_nacionalidad) 
	values (102, " Yann", " Martel", " canadiense");
INSERT INTO autor(aut_id, aut_nombres, aut_apellidos, aut_nacionalidad) 
	values (103, " Arthur", " Conan", " británico");
INSERT INTO autor(aut_id, aut_nombres, aut_apellidos, aut_nacionalidad) 
	values (104, " Michael", " Ende", " alemán");
INSERT INTO autor(aut_id, aut_nombres, aut_apellidos, aut_nacionalidad)
	values (105, " Antoine", " de Saint-Exupery", " francés");
