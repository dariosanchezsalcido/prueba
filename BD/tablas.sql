CREATE DATABASE pruebaWeb;

USE pruebaWeb;

CREATE TABLE clientes(
    id INT IDENTITY(1,1),
    foto VARCHAR(10) NOT NULL,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE productos(
    id INT IDENTITY(1,1) NOT NULL,
    articulo VARCHAR(20) NOT NULL,
    idProveedor INT NOT NULL,
    precio FLOAT NOT NULL,
    cantida INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE proveedores(
    id INT IDENTITY(1,1),
    razonSocial VARCHAR(20) NOT NULL,
    rfc VARCHAR(13) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    email VARCHAR(30) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ventas(
    id INT IDENTITY(1,1),
    idCliente INT NOT NULL,
    total FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ventasDet(
    id INT IDENTITY(1,1),
    idProducto INT NOT NULL,
    cantidad INT NOT NULL,
    total FLOAT NOT NULL,
    idVenta INT NOT NULL,
    PRIMARY KEY (id)
);