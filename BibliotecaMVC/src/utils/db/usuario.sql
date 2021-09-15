CREATE TABLE usuario(
	usu_username VARCHAR(40) NOT NULL PRIMARY KEY,
    usu_nombres VARCHAR(20) NULL,
    usu_apellidos VARCHAR(20) NOT NULL,
    usu_email VARCHAR(30) NOT NULL,
    usu_celular BIGINT NOT NULL,
    usu_clave VARCHAR(20) NOT NULL,
    usu_fecha_nacimiento DATE NOT NULL
);
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento) 
	VALUES('lucky', 'Pedro', 'Perez', 'pedroperez@gmail.com', 3136083931, 'pedro123456', '2021-1-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('malopez', 'Maria', 'Lopez', 'marialopez@gmail.com', 3136083932, 'maria123456', '2021-2-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('diva', 'Ana', 'Diaz', 'anadiaz@gmail.com', 3136083933, 'ana123456', '2021-3-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('dreamer', 'Luis', 'Rojas', 'luisrojas@gmail.com', 3136083934, 'luis123456', '2021-4-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('ninja', 'Andres', 'Cruz', 'andrescruz@gmail.com', 3136083935, 'andres123456', '2021-5-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('neon', 'Nelson', 'Ruiz', 'nelsonruiz@gmail.com', 3136083936, 'nelson123456', '2021-6-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('rose', 'Claudia', 'Mendez', 'claudia@gmail.com', 3136083937, 'claudia123456', '2021-7-1');
INSERT INTO usuario(usu_username, usu_nombres, usu_apellidos, usu_email, usu_celular, usu_clave, usu_fecha_nacimiento)
	VALUES('green', 'Jorge', 'Rodriguez', 'jorge@gmail.com', 3136083939, 'jorge123456', '2021-8-1');