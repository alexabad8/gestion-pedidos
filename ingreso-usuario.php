<?php 
//recogemos datos del formulario
//e insertamos en la base de datos
$nombre_usuario = $_POST["nombre_usuario"];
$email_usuario = $_POST["email_usuario"];
include "db/conexion.php";

//sql para insertar usuarios
$insertar_usuario = "insert into usuarios values(null,'$nombre_usuario','$email_usuario')";

//ejecuto inserción de usuario
mysqli_query($conexion, $insertar_usuario);

//obtengo el id usuario
$id_usuario = mysqli_insert_id($conexion);

//sql para insertar pedidos
$insertar_pedido = "insert into usuarios values (null,'$nombre_usuario','$email_usuario')";

//ejecuto insertar pedido
mysqli_query($conexion, $insertar_pedido);

//obtengo el id pedido
$id_pedido = mysqli_insert_id($conexion);

//saco por pantalla como prueba
echo "Hola $nombre_usuario tienes id $id_usuario y tu numero de pedido es $id_pedido";

?>