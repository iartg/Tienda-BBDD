<?php
    //se recoge por GET el nombre de usuario para destruir su sesión y las cookies que guardan su usuario y contraseña.
    $usuario = $_GET['usuario'];
    session_name($usuario);
    session_start();
    $_SESSION = array();
    setcookie("Pass", '', time()-3600, '/'); 
    setcookie("User", '', time()-3600, '/'); 
    session_destroy();   
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>El Corte PseudoInglés</title>
    <link rel="icon" type="image/png" href="style/logo.png">
    <link rel="stylesheet" href="style/styleEnd.css">
</head>
<body>
    <div class="top">
        <p class="title"><img src="style/logo.png" alt=""></p>
    </div>

    <div class="container">
        <p>Has cerrado sesión correctamente</p>
        <a href="index.php">Volver</a>
    </div> 
    
</body>
</html>