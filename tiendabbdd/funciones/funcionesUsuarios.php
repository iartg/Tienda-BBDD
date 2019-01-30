<?php
    require_once("conexion.php");
  
    //validaciones de nombre de usuario y contraseña

    function validarPass($pass1, $pass2, &$mensaje) {

        if (strlen($pass1) < 8 || strlen($pass1) > 16) {
            $mensaje = "La contraseña debe tener entre 8 y 16 caracteres";
            return false;
        }

        if(!preg_match("/^[a-zA-Z0-9]*$/", $pass1)) {
            $mensaje = "Sólo se admiten números y letras";
            return false;
        }

        if ($pass1 != $pass2) {
            $mensaje = "Las contraseñas deben coincidir";
            return false;
        }

        return true;
    }

    function validarUsuario($user, &$mensaje) {
        if (strlen($user) > 25) {
            $mensaje = "El nombre de usuario no puede contener más de 25 caracteres";
            return false;
        }

        if(!preg_match("/^[a-zA-Z0-9]*$/", $user)) {
            $mensaje = "Sólo se admiten números y letras";
            return false;
        }

        return true;
    }

    //agregar usuario en la base de datos

    function nuevoUsuario($nombre, $pass) {
        global $conexion;
        $pass = md5($pass);
        $registro = false;
        $sql = "INSERT INTO usuarios (nombre, pass) VALUES ('" . $nombre ."', '" . $pass . "')";

        if($conexion->query($sql) === TRUE) {
            $registro = true;
        } else {
            $registro = false;
        }
        $conexion->close();
        return $registro;
    }
        
    //------------------------------------------------------------------------------------------------//
    
    //función iniciar sesión

    function iniciarSesion($user, $pass) {
        global $conexion;
        $conexion->real_escape_string($user);
        $conexion->real_escape_string($pass);
        $pass = md5($pass);

        $sql = "SELECT pass FROM usuarios WHERE BINARY nombre = '" . $user . "';";
        $resultado = $conexion->query($sql);

        if($resultado->num_rows > 0) {
            $registro = $resultado->fetch_object();
            if($pass === $registro->pass) return true;
        } else {
            return false;
        }
        $conexion->close();
    }

    //-------------------------------------------------------------------------------------------------//

    //función que lista todas las compras hechas por el usuario

    function listadoCompras($usuario) {
        global $conexion;

        $sql = "SELECT DISTINCT id_compra, DATE_FORMAT(fecha_compra, '%d/%m/%Y %H:%i:%s') AS fecha_compra FROM compra WHERE id_usuario = '$usuario'";
        $resultado = $conexion->query($sql);

        if($resultado->num_rows > 0) {
            echo "<table class='compras'>";
            echo "<tr><th>ID de compra</th><th>Fecha</th><th>Más info</th></tr>";
            while($registro = $resultado->fetch_object()) {
                echo "<tr><td>" . $registro->id_compra . "</td>";
                echo "<td>" . $registro->fecha_compra . "</td>";
                echo "<td><img class='info' src='style/info.png' onclick='mostrarCompra(\"$registro->id_compra\")'></td></tr>";
            }
            echo "</table>";
        } else {
            echo "<p class='mensaje' style= 'font-size:24px; text-align:center; margin-top:60px;'>Todavía no has hecho ninguna compra.</p>";
        }
        $conexion->close();
    }

    //muestra una tabla con la compra realizada buscándola por el id de compra

    function mostrarCompra($id_compra) {
        global $conexion;

        $sql = "SELECT nom_producto, precio, imagen, compra.cantidad FROM productos 
                INNER JOIN compra ON productos.id_prod = compra.id_prod 
                WHERE id_compra = '".$id_compra."';";

        $resultado = $conexion->query($sql);

        $total = 0.0;

        if($resultado->num_rows > 0) {
            echo "<table>";
            echo "<tr><th colspan='5'><img class='close' src='style/x.png' onclick='ocultarCompra()'></th></tr>";
            echo "<tr><th>Nombre</th><th>Precio</th><th>Imagen</th><th>Cantidad</th><th>Precio</th></tr>";
            while($registro = $resultado->fetch_object()) {
                $totalCantidad = $registro->precio * $registro->cantidad;
                echo "<tr><td>" . $registro->nom_producto . "</td>";
                echo "<td>" . number_format($registro->precio, 2, ",", ".") . " €</td>";
                echo "<td><img width='100' src='" . $registro->imagen . "'></td>";
                echo "<td>" . $registro->cantidad . "</td>";
                echo "<td>" . number_format($totalCantidad, 2, ",", ".") . " €</td></tr>";
                $total += $registro->precio * $registro->cantidad;
            }
            echo "<tr><td colspan='4'>TOTAL</td><td>". number_format($total, 2, ",", ".") . " €</td>";
            echo "</table>";
        } elseif($resultado->num_rows == 0) {
            echo "<p>Aún no has hecho ninguna compra :(</p>";
        }
        $conexion->close();
    }
?>