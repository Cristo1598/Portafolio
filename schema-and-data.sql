-- =========================================================
-- schema_and_data.sql
-- Portafolio QA — Cristo Solís Jiménez
-- Script para recrear la base de datos practica_qa.db
-- Herramienta: DB Browser for SQLite
-- =========================================================

-- Tabla de usuarios
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    email TEXT NOT NULL,
    ciudad TEXT
);

-- Tabla de pedidos (conectada a usuarios)
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER,
    producto TEXT NOT NULL,
    precio REAL,
    estado TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Datos de ejemplo: usuarios
INSERT INTO usuarios (id, nombre, email, ciudad) VALUES
(1, 'Ana Torres', 'ana@mail.com', 'Lima'),
(2, 'Luis Ramos', 'luis@mail.com', 'Arequipa'),
(3, 'Carla Vega', 'carla@mail.com', 'Lima'),
(4, 'Jorge Paz', 'jorge@mail.com', 'Trujillo');

-- Datos de ejemplo: pedidos (casos válidos)
INSERT INTO pedidos (id, usuario_id, producto, precio, estado) VALUES
(1, 1, 'Laptop', 2500.00, 'entregado'),
(2, 1, 'Mouse', 45.00, 'entregado'),
(3, 2, 'Teclado', 90.00, 'pendiente'),
(4, 3, 'Monitor', 600.00, 'cancelado'),
(5, 4, 'Laptop', 2500.00, 'pendiente');

-- =========================================================
-- Datos "sucios" insertados deliberadamente
-- para practicar verificación de integridad (ver reporte adjunto)
-- =========================================================

-- Caso: pedido con precio inválido (negativo)
INSERT INTO pedidos (id, usuario_id, producto, precio, estado) VALUES
(7, 2, 'Cargador', -10.00, 'entregado');

-- Caso: pedido con estado fuera de dominio (error tipográfico)
INSERT INTO pedidos (id, usuario_id, producto, precio, estado) VALUES
(8, 3, 'Funda', 25.00, 'entregaddo');

-- Caso: pedido huérfano (usuario_id inexistente)
-- Requiere desactivar temporalmente la restricción de llave foránea
PRAGMA foreign_keys = OFF;

INSERT INTO pedidos (id, usuario_id, producto, precio, estado) VALUES
(6, 99, 'Audífonos', 80.00, 'entregado');

PRAGMA foreign_keys = ON;
