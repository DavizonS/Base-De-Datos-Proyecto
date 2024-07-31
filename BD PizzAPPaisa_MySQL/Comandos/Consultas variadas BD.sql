-- Obtener el nombre y existencias de los ingredientes ordenados por existencias en orden descendente
SELECT Descripcion, Existencias FROM ingrediente ORDER BY Existencias DESC;

-- Obtener el promedio de existencias de todos los ingredientes
SELECT AVG(Existencias) AS promedio_existencias FROM ingrediente;

-- Obtener los ingredientes con existencias por debajo de un cierto umbral (por ejemplo, 10)
SELECT * FROM ingrediente WHERE Existencias < 10;

-- Listar todas las órdenes con el sabor y el número de porciones, ordenadas por número de porciones en orden descendente
SELECT idSabor, numeroPorciones FROM linea ORDER BY numeroPorciones DESC;

-- Contar cuántos tipos diferentes de sabores de pizza han sido ordenados
SELECT COUNT(DISTINCT idSabor) AS total_sabores FROM linea;

-- Encontrar el sabor de pizza más popular (el que tiene más órdenes)
SELECT idSabor, COUNT(*) AS total_ordenes 
FROM linea 
GROUP BY idSabor 
ORDER BY total_ordenes DESC 
LIMIT 1;

-- Encontrar el sabor de pizza menos popular (el que tiene menos órdenes)
SELECT idSabor, COUNT(*) AS total_ordenes 
FROM linea 
GROUP BY idSabor 
ORDER BY total_ordenes ASC 
LIMIT 1;

-- Obtener todas las órdenes para un sabor específico (por ejemplo, "CTR" para Carne Tradicional)
SELECT * FROM linea WHERE idSabor = 'CTR';

-- Contar el número de órdenes que tienen exactamente 3 porciones
SELECT COUNT(*) AS total_ordenes_3_porciones FROM linea WHERE numeroPorciones = 3;

-- Obtener el total de porciones ordenadas para cada sabor
SELECT idSabor, SUM(numeroPorciones) AS total_porciones 
FROM linea 
GROUP BY idSabor;

-- Verificar los ingredientes que tienen existencias igual a 0
SELECT * FROM ingrediente WHERE Existencias = 0;

-- Obtener el número total de ingredientes
SELECT COUNT(*) AS total_ingredientes FROM ingrediente;

-- Obtener las descripciones de los ingredientes que contienen "salsa" en su descripción
SELECT * FROM ingrediente WHERE Descripcion LIKE '%salsa%';

-- Contar cuántas órdenes hay para cada sabor
SELECT idSabor, COUNT(*) AS total_ordenes FROM linea GROUP BY idSabor;

-- Mostrar todas las órdenes que tienen más de 2 porciones
SELECT * FROM linea WHERE numeroPorciones > 2;

-- Listar los sabores de pizza con al menos una orden
SELECT DISTINCT idSabor FROM linea;

-- Obtener el número total de órdenes
SELECT COUNT(*) AS total_ordenes FROM linea;

-- obtener la informacion de quien hiso cada orden
select usuario.UsuarioNombre, Usuario.UsuarioApellido, ordencompra.idOrden from ordencompra inner join usuario on usuario.usuarioTelefono =ordencompra.usuarioTelefono;

-- Mostrar los usuarios por tipo de documento

select usuario.usuarioNombre, usuario.usuarioApellido, usuario.idTipoDocumento, usuario.numeroDocumento from tipodocumento inner join usuario on usuario.idTipoDocumento = tipodocumento.idTipoDocumento;
