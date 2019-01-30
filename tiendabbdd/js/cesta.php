<?php
    //se añaden o se quitan productos a la cesta cuando el usuario hace click en los botones de + o -

    $usuario = $_POST['usuario'];
    session_name($usuario);
    session_start();

    require_once("../funciones/conexion.php");
    global $conexion;

    $id = $_POST['id'];
    $cantidad = intval($_POST['cantidad']);
    $operacion = $_POST['operacion'];

    if ($cantidad == 0) {
        $sql = "DELETE FROM cesta WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
        $totalProductos = "SELECT SUM(cantidad) as total FROM cesta WHERE id_usuario = '" . $usuario ."';";
        $resultado = $conexion->query($sql);
        $resultadoTotal = $conexion->query($totalProductos);
        $obj = $resultadoTotal->fetch_object();
        echo $obj->total;
    }

    $sql = "SELECT * FROM cesta WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
    $resultado = $conexion->query($sql);

    if($cantidad != 0) {
        if($resultado->num_rows === 0) {
            $sql = "INSERT INTO cesta (id_usuario, id_prod, cantidad) VALUES ('".$usuario."', '".$id."', '".$cantidad."');";
            $resultado = $conexion->query($sql);
        } else {
            if($operacion === "mas") {
                $sqlCantidad = "SELECT cantidad FROM cesta WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
                $resultadoCantidad = $conexion->query($sqlCantidad);
                $Cantidad = $resultadoCantidad->fetch_object();
                $cantidadAux = 0;
                $cantidadAux++;
                $cantidad = intval($Cantidad->cantidad) + $cantidadAux;

                $sql = "UPDATE cesta SET cantidad = '".$cantidad."' WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
                $totalProductos = "SELECT SUM(cantidad) as total FROM cesta WHERE id_usuario = '" . $usuario ."';";
                $resultado = $conexion->query($sql);
                $resultadoTotal = $conexion->query($totalProductos);
                $obj = $resultadoTotal->fetch_object();
                echo $obj->total;  
            } else {
                $sqlCantidad = "SELECT cantidad FROM cesta WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
                $resultadoCantidad = $conexion->query($sqlCantidad);
                $Cantidad = $resultadoCantidad->fetch_object();
                $cantidadAux = 0;
                $cantidadAux--;
                $cantidad = intval($Cantidad->cantidad) + $cantidadAux;

                $sql = "UPDATE cesta SET cantidad = '".$cantidad."' WHERE id_prod = '".$id."' AND id_usuario = '" . $usuario ."';";
                $totalProductos = "SELECT SUM(cantidad) as total FROM cesta WHERE id_usuario = '" . $usuario ."';";
                $resultado = $conexion->query($sql);
                $resultadoTotal = $conexion->query($totalProductos);
                $obj = $resultadoTotal->fetch_object();
                echo $obj->total; 
            }
            
        }
        $conexion->close();
    }
?>