<?php
    //si el usuario ya ha iniciado sesión y está la cookie almacenada con su nombre de usuario, se muestran los botones y opciones de compra, si no, se le redirige a index.php

    if(!isset($_COOKIE['User'])) {
        header('Location:index.php');
    } else {
        $usuario = $_COOKIE['User'];
        session_name($usuario);
        session_start();
    }
    
    if (isset($_COOKIE['categoria']) && isset($_GET['categoria'])) {
        setcookie("categoria", $_GET['categoria'], time()+3600, "/");
    } else {
        setcookie("categoria", "todos", time()+3600, "/");
    }
    
    require_once("funciones/funcionesProductos.php"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bienvenido <?php echo $usuario;?></title>
    <link rel="icon" type="image/png" href="style/logo.png">
    <link rel="stylesheet" href="style/styleShop.css">
    <script type="text/javascript" src="js/ajax.js"></script>
	<script type="text/javascript" src="js/ajax-dynamic-content.js"></script>
	<script type="text/javascript" src="js/ajax-dynamic-pages.js"></script>
    <script type="text/javascript" src="js/funciones.js"></script>
    <script>
        function order(){
            value = document.getElementById("orden").value;
            document.cookie = "orden="+encodeURIComponent(value);
            location.reload();
        }

        function buscar() {
            var busqueda = document.getElementById("buscar").value;
            console.log(busqueda);
            var xhttp;

            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("busqueda").innerHTML = this.responseText;
                    document.getElementById("busqueda").style.display = "inline";
                }
            };

            var datos = "busqueda=" + busqueda;
                    
            xhttp.open("POST", "js/buscar.php", true);
            xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xhttp.send(datos);
        }
    </script>
</head>
<body>
    <div class="top sticky">
        <p class="title"><img src="style/logo.png" alt=""></p>
        <p class="sessionName">
            <a class='user' href='opciones.php'><?php echo session_name();?></a>
            <br>
            <a class='sesion' href='cerrarSesion.php?usuario=<?php echo $usuario ?>'>Cerrar sesión</a>
        </p>
        <p class="cart" onmouseover='mostrarCesta(usuario="<?php echo $usuario ?>");' onmouseleave='ocultar()'><a href="fin.php?usuario=<?php echo $usuario ?>"><img src="style/cart.png"></a><span class="res" id="resultado"></span></p>
        <div id="divCesta"></div>
    </div>

    <div class="container"> 

        <div class="menu"><?php categorias(); ?></div>
        <span class="target"></span>

        <div id="mainContainer">

            <!-- <label>Buscar: </label><input type="text" id="buscar" onkeyup="buscar()">
            <div id="busqueda"></div> -->

            <div class="orden">
                <select name="orden" id="orden" onchange='order()'>
                    <option value="">Ordenar por:</option>
                    <option value="precioAsc">Precio de menor a mayor</option>
                    <option value="precioDesc">Precio de mayor a menor</option>
                    <option value="nombreAsc">Nombre de la A a la Z</option>
                    <option value="nombreDesc">Nombre de la Z a la A</option>
                </select>
                <i></i>
            </div>
            
            <div class="prod">
                <div id="header"><img src=""></div>
                <div id="pageContainer"></div>
            </div> 
        </div>
    </div>
    
    <script type="text/javascript">
        var dynPageObj = new DHTMLgoodies_scrollingPages();
        dynPageObj.setTargetId('pageContainer');
        dynPageObj.setUrl('getPage.php?pageNo=0');
        dynPageObj.setScrollSpeed(200);
        dynPageObj.loadPage();
    </script>
</body>
</html>