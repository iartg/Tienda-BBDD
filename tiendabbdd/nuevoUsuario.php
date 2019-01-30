<?php
    require_once("funciones/funcionesUsuarios.php");
    
    $mensaje = "";

    if($_SERVER['REQUEST_METHOD'] == "POST") {

        if ($conexion->connect_error) {
            die("Error en la conexión: ". $conexion->connect_error);
        }

        if (isset($_POST['usuario']) && isset($_POST['pass1']) && isset($_POST['pass2'])) {
            $usuario = trim($_POST['usuario']);
            $pass1 = trim($_POST['pass1']);
            $pass2 = trim($_POST['pass2']);

            if (validarPass($pass1, $pass2, $mensaje) === true && validarUsuario($usuario, $mensaje) === true) {
                if (nuevoUsuario($usuario, $pass1) === true) {
                    $mensaje = "Registro correcto";
                } else {
                    $mensaje = "No se ha podido completar el registro";
                }
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>El Corte PseudoInglés</title>
    <link rel="icon" type="image/png" href="style/logo.png">
    <link rel="stylesheet" href="style/styleLogin.css">
</head>
<body>
    <div class="login">
        <div class="registro">
        <img src="style/logo.png" alt="">
            <form action="" method="post">
                <input type="text" name="usuario" placeholder="Nombre de usuario" required>
                <input type="password" name="pass1" placeholder="Contraseña" required>
                <input type="password" name="pass2" placeholder="Confirmar contraseña" required>
                <input type="submit" value="Registrar">
            </form>
            <p><?php echo $mensaje; ?></p>
        </div>
    </div>
</body>
</html>