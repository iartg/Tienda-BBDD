<?php
    //elimina el producto de la cesta que el usuario elige. Si esta función retorna true, se actualiza la cesta llamando a la función productosFin

    require_once("../funciones/funcionesProductos.php");
    $usuario = $_POST['usuario'];
    $id = $_POST['id'];
    
    if(eliminarProducto($usuario, $id) === true){
        productosFin($usuario);
    }
?>