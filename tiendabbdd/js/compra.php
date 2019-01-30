<?php
    //llama a la función mostrarCompra para mostrar al usuario la compra que ha realizado buscándola con el ID de compra.

    require_once("../funciones/conexion.php");
    require_once("../funciones/funcionesUsuarios.php");
    $id_compra = $_POST['id_compra'];

    mostrarCompra($id_compra);
?>