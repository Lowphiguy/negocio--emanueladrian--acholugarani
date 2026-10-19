-- Datos de ejemplo: 3 categorías, 12 productos, 6 clientes, 10 pedidos y 25 líneas de detalle

USE negocio;

INSERT INTO categorias (nombre) VALUES
  ('Electrónica'),
  ('Hogar'),
  ('Papelería');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
  ('Audífonos Bluetooth',      1, 150.00, 25),
  ('Cargador USB-C 20W',       1,  80.00, 40),
  ('Mouse inalámbrico',        1,  95.00,  3),
  ('Teclado mecánico',         1, 320.00, 12),
  ('Lámpara de escritorio',    2, 120.00,  4),
  ('Juego de sábanas',         2, 210.00, 15),
  ('Termo de acero 1L',        2,  85.00, 30),
  ('Organizador de cajones',   2,  45.00,  2),
  ('Cuaderno universitario',   3,  12.00, 100),
  ('Set de bolígrafos x10',    3,  25.00, 60),
  ('Calculadora científica',   3, 110.00,  8),
  ('Marcadores fluorescentes', 3,  18.00, 45);

INSERT INTO clientes (nombre, telefono, email) VALUES
  ('Carlos Mamani', '71234567', 'carlos.mamani@email.com'),
  ('Lucía Quispe',  '72345678', 'lucia.quispe@email.com'),
  ('Jorge Condori', '73456789', 'jorge.condori@email.com'),
  ('Ana Flores',    '74567890', 'ana.flores@email.com'),
  ('Pedro Choque',  '75678901', 'pedro.choque@email.com'),
  ('Marta Villca',  '76789012', 'marta.villca@email.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
  (1, '2026-09-02', 'entregado'),
  (1, '2026-09-10', 'entregado'),
  (1, '2026-09-25', 'pendiente'),
  (2, '2026-09-05', 'entregado'),
  (2, '2026-09-18', 'entregado'),
  (2, '2026-10-01', 'enviado'),
  (3, '2026-09-12', 'entregado'),
  (3, '2026-10-05', 'pendiente'),
  (4, '2026-09-28', 'cancelado'),
  (5, '2026-10-08', 'enviado');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
  (1,  1,  1, 150.00),
  (1,  9,  5,  12.00),
  (1, 10,  2,  25.00),
  (2,  2,  2,  80.00),
  (2,  7,  1,  85.00),
  (2, 12,  3,  18.00),
  (3,  4,  1, 320.00),
  (3,  3,  1,  95.00),
  (4,  6,  1, 210.00),
  (4,  5,  1, 120.00),
  (4,  8,  2,  45.00),
  (5,  9, 10,  12.00),
  (5, 11,  1, 110.00),
  (6,  1,  2, 150.00),
  (6,  2,  1,  80.00),
  (6, 10,  4,  25.00),
  (7,  7,  2,  85.00),
  (7, 12,  5,  18.00),
  (7,  9,  3,  12.00),
  (8,  4,  1, 320.00),
  (8,  2,  1,  80.00),
  (9,  3,  2,  95.00),
  (9, 11,  1, 110.00),
  (10, 6,  2, 210.00),
  (10, 5,  1, 120.00);