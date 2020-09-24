<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion Pedidos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Gestión Pedidos</h1>
    <?php 
    include 'db/conexion.php';
    $consulta = 'SELECT * FROM productos';
    $datos = mysqli_query($conexion, $consulta);
        echo '<ul>';
        while($fila = mysqli_fetch_array($datos)){
            echo '<li>'.$fila['nombre_producto'].$fila['precio_producto'].'</li>''<input type="checkbox">';
        }
        echo '</ul>';
    ?>
<form method="post" action="ingreso-usuario.php">
<label for="nombre">Nombre</label>
<input type="text" name="nombre_usuario" id="nombre">

<label for="email">Email</label>
<input type="email" name="email_usuario" id="email">

<button type="submit">Realizar pedido</button>
</form>




</body>
</html>