USE ventas_tech_db;

-- CONSULTA 1: Vista base del proyecto (INNER JOIN)
-- Propósito: Visualización general de las tablas
SELECT
id_venta,
V.id_cliente,
ciudad,
nombre,
nombre_producto,
cantidad,
precio_unitario,
fecha_venta,
precio_unitario*cantidad AS total_venta,
nombre_categoria
FROM ventas V INNER JOIN clientes C ON V.id_cliente = C.id_cliente
	INNER JOIN productos P ON V.id_producto = P.id_producto
	INNER JOIN categorias CT ON P.id_categoria = CT.id_categoria;
-- Hallazgo: nos compra sólo un cliente por ciudad.

-- CONSULTA 2: Clientes sin ventas (LEFT JOIN)
-- Propósito: Mostrar los clientes que no realizaron ninguna compra, para mandarles mail con promociones.
SELECT nombre, email, fecha_registro
FROM clientes C LEFT JOIN ventas V ON C.id_cliente = V.id_cliente
WHERE V.id_venta IS NULL;
-- Hallazgo: sólo 1 cliente no registra ninguna compra, y es el cliente más reciente.
--           CRM podría idear alguna promoción para la primer compra de cada cliente.

-- CONSULTA 3: Productos sin ventas (LEFT JOIN)
-- Propósito: Detectar los productos que no registran ventas, para idear ofertas y estimular su compra.
SELECT nombre_producto, id_categoria, precio
FROM productos P LEFT JOIN ventas V ON P.id_producto = V.id_producto
WHERE id_venta IS NULL;
-- Hallazgo: casi todos los productos fueron comprados, sólo 2 no.
--           El área de producto podría contemplar hacer un combo con ambos.

-- CONSULTA 4: Consolidado por canal (UNION ALL)
-- Propósito: Filtra las ventas por canal de venta y así identificar en dónde hacer foco.
SELECT canal, SUM(total) AS total_canal
FROM (
    SELECT fecha_venta, cantidad * precio_unitario AS total, 'Online' AS canal
    FROM ventas WHERE cantidad < 2
    UNION ALL
    SELECT fecha_venta, cantidad * precio_unitario AS total, 'Presencial' AS canal
    FROM ventas WHERE cantidad >= 2
) AS consolidado
GROUP BY canal;
-- Hallazgo: el canal presencial es el preferido por los clientes.
