SELECT 'Consulta 1';
SELECT rec_titulo FROM recurso order by rec_titulo;
SELECT 'Consulta 2';
SELECT recurso.rec_titulo, libro.lib_resumen, libro.lib_anio 
FROM recurso 
INNER JOIN libro ON libro.lib_id = recurso.rec_id WHERE libro.lib_anio > 2000 
ORDER BY recurso.rec_titulo; 
SELECT 'Consulta 3';
SELECT recurso.rec_titulo 
FROM ((recurso
INNER JOIN libro ON libro.lib_id = recurso.rec_id)
INNER JOIN autor ON aut_id = lib_autor) WHERE lib_autor = 101;
SELECT 'Consulta 4';
SELECT recurso.rec_titulo
FROM recurso
INNER JOIN prestamo ON rec_id = pre_rec WHERE pre_usuario = 'lucky'
ORDER BY recurso.rec_titulo;
SELECT 'Consulta 5';
SELECT usuario.usu_username, usuario.usu_nombres, usuario.usu_apellidos
FROM ((((usuario
INNER JOIN prestamo ON prestamo.pre_usuario = usuario.usu_username)
INNER JOIN recurso ON recurso.rec_id = prestamo.pre_rec)
INNER JOIN libro ON recurso.rec_id = libro.lib_id) 
INNER JOIN autor ON libro.lib_autor = autor.aut_id) WHERE recurso.rec_titulo = 'La vida de pi';
SELECT 'Consulta 6';
SELECT count(lib_anio) FROM libro WHERE lib_anio > 2000;

