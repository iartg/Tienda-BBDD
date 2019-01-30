<?php
    require_once("conexion.php");
    
    //crea las opciones con todas las categorías almacenadas en la bbdd para cuando el usuario haya iniciado sesión (tienda.php)
    function categorias() {
        global $conexion;
        $sqlCategorias = "SELECT DISTINCT categoria FROM productos;";
        $resultadoCategorias = $conexion->query($sqlCategorias);

        if($resultadoCategorias->num_rows > 0) {
            echo "<ul>";
            while($registro = $resultadoCategorias->fetch_object()) {
                echo "<li><a href='tienda.php?categoria=".$registro->categoria."'>" . ucwords($registro->categoria) . "</a></li>";
            }
            $resultadoCategorias->close();
            echo "<li><a href='tienda.php?categoria=todos'>Todos</a></li></ul>";
        }
    }

    //crea las categorías de la tienda cuando el usuario accede sin iniciar sesión (index.php)

    function categoriasShop() {
        global $conexion;
        $sqlCategorias = "SELECT DISTINCT categoria FROM productos;";
        $resultadoCategorias = $conexion->query($sqlCategorias);

        if($resultadoCategorias->num_rows > 0) {
            echo "<ul>";
            while($registro = $resultadoCategorias->fetch_object()) {
                echo "<li><a href='index.php?categoria=".$registro->categoria."'>" . ucwords($registro->categoria) . "</a></li>";
            }
            $resultadoCategorias->close();
            echo "<li><a href='index.php?categoria=todos'>Todos</a></li></ul>";
        }
    }

    //muestra los productos que el usuario ha metido en la cesta
    function mostrarProductos($usuario) {
        global $conexion;

        $sql = "SELECT nom_producto, precio, imagen, cesta.cantidad FROM productos
                INNER JOIN cesta ON productos.id_prod = cesta.id_prod
                WHERE id_usuario = '".$usuario."';";

        $resultado = $conexion->query($sql);

        $total = 0;

        if($resultado->num_rows > 0) {
            while($registro = $resultado->fetch_object()) {
                $totalCantidad = $registro->precio * $registro->cantidad;
                echo "<tr><td>" . $registro->nom_producto . "</td>";
                echo "<td>" . number_format($registro->precio, 2, ",", "." ) . " €</td>";
                echo "<td><img src='" . $registro->imagen . "'></td>";
                echo "<td>" . $registro->cantidad . "</td>";
                echo "<td>" . number_format($totalCantidad, 2, ",", ".") . " €</td></tr>";
                $total += floatval($registro->precio) * $registro->cantidad;
            }
            $resultado->close();
            echo "<tr><td colspan='4'> TOTAL: </td>";
            echo "<td>" . number_format($total, 2, ",", ".") . " €</td></tr>";
        }
        $conexion->close();
    }

    //muestra los productos que el usuario ha metido en la cesta y se añade un botón de eliminar productos
    function productosFin($usuario) {
        global $conexion;

        $sql = "SELECT productos.id_prod, nom_producto, precio, imagen, cesta.cantidad FROM productos
                INNER JOIN cesta ON productos.id_prod = cesta.id_prod
                WHERE id_usuario = '".$usuario."';";

        $resultado = $conexion->query($sql);

        $total = 0.0;

        if($resultado->num_rows > 0) {
            echo "<table class='resume'";
            echo "<tr><th>Nombre</th><th>Precio</th><th>Imagen</th><th>Cantidad</th><th>Total</th><th>Eliminar</th></tr>";
            while($registro = $resultado->fetch_object()) {
                $totalCantidad = $registro->precio * $registro->cantidad;
                echo "<tr><td>" . $registro->nom_producto . "</td>";
                echo "<td>" . number_format($registro->precio, 2, ",", ".") . " €</td>";
                echo "<td><img class='prod' src='" . $registro->imagen . "'></td>";
                echo "<td>" . $registro->cantidad . "</td>";
                echo "<td>" . number_format($totalCantidad, 2, ",", "."). " €</td>";
                echo "<td><button id='eliminar' value='" . $registro->id_prod . "' onclick=eliminar(this,'".$usuario."')><img src='style/trash.png'></button></td></tr>";
                $total += $registro->precio * $registro->cantidad;
            }
            $resultado->close();
            echo "<tr class='total'><td colspan='4'> TOTAL: </td>";
            echo "<td>" . number_format($total, 2, ",", ".") . " €</td></tr>";
            echo "</table>";
            echo "<p class=\"boton\"><button id=\"comprar\" onclick='comprarFin(usuario=\"$usuario\");'>Comprar</button></p>";
            echo "<div id=\"compra\"></div>";
        } else {
            echo "<p style='text-align:center; font-size:32px;'>Tu cesta está vacía<br></p>";
        }
        $conexion->close();
    }

    //elimina los productos que el usuario selecciona de la cesta 
    function eliminarProducto($usuario, $producto) {
        global $conexion;

        $sql = "DELETE FROM cesta WHERE id_prod = '".$producto."' AND id_usuario = '".$usuario."';";
        $resultado = $conexion->query($sql);

        if($conexion->query($sql) === TRUE) {
            return true;
        } else {
            return false;
        }
        $conexion->close();
    }

    //genera un ID para asignárselo a cada compra realizada para guardarlo como clave primaria
    function generarID() {
        $caracteres = "QWERTYUIOPASDFGHJKLZXCVBNM0123456789";
        $id = "";
        for ($i = 0; $i < 15; $i++) { 
            $caracteres = str_shuffle($caracteres);
            $id .= $caracteres[$i];
        }
        return $id;
    }

    //guarda en la base de datos los productos que el usuario ha comprado y le asigna un id único a cada compra
    function comprar($usuario) {
        global $conexion;
        $id_compra = generarID();
        $compra = false;

        $sql = "INSERT INTO compra (id_compra, id_usuario, id_prod, cantidad, fecha_compra)
                SELECT '".$id_compra."', id_usuario, id_prod, cantidad, NOW()
                FROM cesta WHERE id_usuario = '".$usuario."'";

        if($conexion->query($sql) === TRUE) {
            $compra = true;
            echo "Tu ID de compra es: " . $id_compra;
        } else {
            $compra = false;
        }
        return $compra;
    }

?>