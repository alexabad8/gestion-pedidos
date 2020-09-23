select * from productos;

insert into usuarios values 
(null,'Pepe','Pepe@gmail.com');

insert into pedidos values 
(null,1,null,'no');

insert into productos values 
(1,'reloj',21.50),
(2,'pantalón',30.35),
(3,'camisa',10.00),
(4,'chaqueta',85.90),
(5,'calcetines',5.20);

insert into detalles values
(1,1,3,2),
(2,1,4,1);

select 
pedidos.id_pedido as pedido, 
productos.nombre_producto as articulo,
detalles.cantidad as cantidad, 
productos.precio_producto as precio
from pedidos
join detalles
on pedidos.id_pedido = detalles.id_pedido
join productos
on productos.id_producto = detalles.id_producto;