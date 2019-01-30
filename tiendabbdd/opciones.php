<?php   
    //muestra el listado de compras que el usuario ya ha realizado

    if (isset($_COOKIE['User'])) {
        $usuario = $_COOKIE['User'];
    }
    require_once("funciones/conexion.php");
    require_once("funciones/funcionesUsuarios.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Compras</title>
    <link rel="icon" type="image/png" href="style/logo.png">
    <link rel="stylesheet" href="style/styleOptions.css">
    <script type="text/javascript" src="js/funciones.js"></script>
</head>
<body>

    <div class="top sticky">
    <p class="title"><img class='logo' src="style/logo.png" alt=""></p>
        <p class="sessionName" style="top:10px;">
            <i><?php echo $usuario; ?></i>
            <br>
            <a class='sesion' href='cerrarSesion.php?usuario=<?php echo $usuario ?>'>Cerrar sesión</a>
        </p>
        <a class="back" href="tienda.php?user=<?php echo $usuario ?>"><img src="style/back.png">Volver a la tienda</a>
    </div>

    <div class="container">
        <div id="resultado">
            <?php listadoCompras($usuario); ?>
        </div>
        <div id='compra'></div>
    </div> 
</body>
</html>