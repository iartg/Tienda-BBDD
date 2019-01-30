<?php
    //muestra los productos sin la opción de comprarlos
    
    if (isset($_COOKIE['User']) && isset($_COOKIE['Pass'])) {
        header('Location:tienda.php?user='.$_COOKIE['User']);
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
    <title>El Corte PseudoInglés</title>
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
    </script>
</head>
<body>
    <div class="top sticky">
        <p class="title"><img src="style/logo.png" alt=""></p>
        <p class="sessionName"><a class='login' href="login.php">Iniciar sesión</a></p>
    </div>

    <div class="container"> 
        <div class="menu"><?php categoriasShop(); ?></div>
        <div id="mainContainer">
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