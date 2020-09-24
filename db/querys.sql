--1. insertamos productos
insert into productos values 
(1,'margarita',21.50),
(2,'carbonara',30.35),
(3,'barbacoa',10.00),
(4,'cuatro quesos',85.90),
(5,'parmesana',5.20);

--2. comprobamos
select * from productos;

--3. insertar usuarios
select * from usuarios;

insert into usuarios values
(null,'Pepe','Pepe@gmail.com');

insert into usuarios values
(null,'Paco','Paco@gmail.com');

insert into usuarios values
(null,'Pollo','Pollo@gmail.com');

insert into usuarios values
(null,'Pili','Pili@gmail.com');

--4. comprobamos
select * from usuarios order by id_usuario desc limit 1;

--5. iniciamos un pedido
insert into pedidos values 
(null,1,null,'no');

--6. comprobamos
select * from pedidos;

--.7 ver los productos que tenemos
insert into detalles values
(null,1,3,2),
(null,1,4,1);

--8. comprobamos
select * from detalles;

select * from productos join detalles
on productos.id_producto = detalles.id_producto
join pedidos
on pedidos.id_pedido = detalles.id_pedido;
