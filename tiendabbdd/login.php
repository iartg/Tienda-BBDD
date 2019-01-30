<?php
    //si las cookies de nombre de usuario y contraseña están establecidas, se redirige automáticamente a la tienda, si no, podrá iniciar sesión.
    if (isset($_COOKIE['User'])) {
        $usuario = $_COOKIE['User'];
        $pass = "";
        if (isset($_COOKIE['Pass'])) {
            $pass = $_COOKIE['Pass'];
            header('Location:tienda.php?user='.$usuario);
        }
    } else {
        $usuario = "";
        $pass = "";
    }
    require_once("funciones/funcionesUsuarios.php");

    $mensaje = "";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        if (isset($_POST['user']) && isset($_POST['pass'])) {
            $usuario = $_POST['user'];
            $pass = $_POST['pass'];

            if(iniciarSesion($usuario, $pass) === true) {
                $mensaje = "Sesión iniciada correctamente";
                if (isset($_POST['recordar'])) {
                    //guarda el nombre y la contraseña del usuario durante 1 semana
                    setcookie("User", $usuario, time()+(60*60*24*7), "/");
                    setcookie("Pass", $pass, time()+(60*60*24*7), "/");
                } else {
                    setcookie("User", $usuario, time()+(60*60*24), "/"); //el nombre de usuario se guarda 1 día
                }
                header('Location:tienda.php?user='.$usuario);
            } else {
                $mensaje = "Usuario o contraseña incorrectos";
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
    <link rel="stylesheet" href="style/styleLogin.css">
    <title>El Corte PseudoInglés</title>
    <link rel="icon" type="image/png" href="style/logo.png">
</head>
<body>    
    <div class="login">
        <div class="registro">
            <img src="style/logo.png" alt="">
            <form action="" method="post">
                <input type="text" name="user" id="" placeholder="Nombre de usuario" value="<?php echo $usuario;?>" required>
                <input type="password" name="pass" id="" placeholder="Contraseña" value="<?php echo $pass;?>" required>
                <input type="submit" value="Iniciar sesión">
                <label class="container"><span class="msg">Recordar mis datos</span>
                <input type="checkbox" name="recordar">
                <span class="checkmark"></span>
                </label>
            </form>
            <p><?php echo $mensaje; ?></p>
            <p class="nuevo">¿No registrado? <a href="nuevoUsuario.php">Crear una cuenta</a></p> 
        </div>
    </div>
</body>
</html>