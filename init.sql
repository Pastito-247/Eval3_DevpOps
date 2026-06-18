-- Crear bases de datos
CREATE DATABASE IF NOT EXISTS products_db;
CREATE DATABASE IF NOT EXISTS users_db;

-- Crear tabla de productos
USE products_db;
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    icon VARCHAR(255)
);

-- Insertar unos productos de prueba para que tu frontend no se vea vacío
INSERT INTO products (name, description, price, stock, icon) VALUES 
('Laptop HP Pavilion', 'Laptop de 15.6 pulgadas, Intel Core i5', 899.99, 15, '💻'),
('Smartphone Samsung Galaxy', 'Samsung Galaxy S23, 128GB', 799.99, 25, '📱'),
('Auriculares Sony', 'Auriculares inalámbricos con cancelación de ruido', 349.99, 30, '🎧');

-- Crear tabla de usuarios
USE users_db;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);