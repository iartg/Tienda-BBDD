<?php
    //cuando el usuario hace click en COMPRAR y esta función retorna true, se eliminan de la cesta los productos que había metido
    
    require_once("../funciones/conexion.php");
    require_once("../funciones/funcionesProductos.php");
    $usuario = $_POST['usuario'];

    global $conexion;
    if(comprar($usuario) === true) {
        echo " ";
        $sqlBorrar = "DELETE FROM cesta WHERE id_usuario = '".$usuario."'";
        $resultado = $conexion->query($sqlBorrar);
    } else {
        echo "no comprado";
    }
    $conexion->close();
?>