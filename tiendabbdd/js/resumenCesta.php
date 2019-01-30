<table onmouseout='ocultar()'>
    <?php
        //cuando el usuario pasa el ratón por encima del icono del carrito, se le muestra una tabla con los productos que ha seleccionado para su compra. Se oculta con la función onmouseout

        $usuario = $_POST['usuario'];
        require_once("../funciones/conexion.php");
        require_once("../funciones/funcionesProductos.php");

        mostrarProductos($usuario);
    ?>
</table>