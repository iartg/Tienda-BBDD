<?php

    require_once("../funciones/conexion.php");

    $busqueda = $_POST['busqueda'];

    global $conexion;

    $sql = "SELECT * FROM productos WHERE nom_producto LIKE '%".$busqueda."%' LIMIT 0, 5;";
    $resultado = $conexion->query($sql);

    if($resultado->num_rows > 0) {
        echo "<ul>";
        while($registro = $resultado->fetch_object()) {
            echo "<li>".$registro->nom_producto."</li>";
        }
        $resultado->close();
        echo "</ul>";
    } else {
        echo "No hay resultados que coincidan con tu búsqueda";
    }
?>