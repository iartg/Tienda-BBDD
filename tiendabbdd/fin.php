<?php
    //muestra los productos seleccionados, un icono para eliminar y el botón de comprar
    $usuario = $_GET['usuario'];
    session_name($usuario);
    session_start();

    require_once("funciones/conexion.php");
    require_once("funciones/funcionesProductos.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resumen de tu compra</title>
    <link rel="icon" type="image/png" href="style/logo.png">
    <link rel="stylesheet" href="style/styleCart.css">
    <script src="js/funciones.js"></script>
</head>
<body>
    <div class="top sticky">
        <p class="title"><img src="style/logo.png" alt=""></p>
        <p class="sessionName"><?php echo session_name();?><br><?php echo "<a href='cerrarSesion.php?usuario=" . $usuario . "'>Cerrar sesión</a>"; ?></p>
        <a class="back" href="tienda.php?user=<?php echo $usuario ?>"><img src="style/back.png">Volver a la tienda</a>
    </div>

    <div class="container">
        <div id="resultado">
            <?php productosFin($usuario); ?>
        </div>
    </div> 
    
</body>
</html>

