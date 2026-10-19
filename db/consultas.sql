-- Consultas de la Parte 2 

USE negocio;

-- 1. ¿Cuáles son los productos con el nombre de su categoría, ordenados por nombre?
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
JOIN categorias c ON c.id = p.categoria_id
ORDER BY p.nombre;

-- 2. ¿Qué productos tienen menos de 5 unidades en stock?
SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

-- 3. ¿Cuál es el precio promedio de los productos por categoría?
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM categorias c
JOIN productos p ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- 4. ¿Cuáles son los pedidos de un cliente (Carlos Mamani) con su fecha y estado?
SELECT cl.nombre AS cliente, pe.id AS pedido, pe.fecha, pe.estado
FROM pedidos pe
JOIN clientes cl ON cl.id = pe.cliente_id
WHERE cl.nombre = 'Carlos Mamani';

-- 5. ¿Cuál es el total en dinero de cada pedido?
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. ¿Qué clientes tienen más de 2 pedidos?
SELECT cl.nombre AS cliente, COUNT(pe.id) AS cantidad_pedidos
FROM clientes cl
JOIN pedidos pe ON pe.cliente_id = cl.id
GROUP BY cl.id, cl.nombre
HAVING COUNT(pe.id) > 2;

-- 7. Eliminar un cliente que no tiene pedidos (Marta Villca, id 6).
DELETE FROM clientes
WHERE id = 6
  AND id NOT IN (SELECT cliente_id FROM pedidos);