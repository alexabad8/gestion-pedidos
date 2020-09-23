DROP DATABASE IF EXISTS gestionpedidos;
CREATE DATABASE gestionpedidos;
USE gestionpedidos;

DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
    id_producto int auto_increment,
    nombre_producto varchar(99),
    precio_producto decimal(6,2) unsigned,
    primary key (id_producto)
);

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios(
    id_usuario int auto_increment,
    nombre_usuario varchar(99),
    email_usuario varchar(99),
    primary key (id_usuario)
);

DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos(
    id_pedido int auto_increment,
    id_usuario int not null,
    fecha_pedido timestamp,
    confirmar_pedido char(2) default 'no',
    primary key (id_pedido)
);

DROP TABLE IF EXISTS detalles;
CREATE TABLE detalles(
    id_detalle int auto_increment,
    id_pedido int not null,
    id_producto int not null,
    cantidad int not null,
    primary key (id_detalle)
);
