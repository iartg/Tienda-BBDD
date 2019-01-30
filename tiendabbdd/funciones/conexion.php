<?php

    //script que almacena los datos de acceso a la bbdd

    $serverName = "localhost";
    $userName = "root";
    $password = "";
    $dbName = "tienda";

    $conexion = new mysqli($serverName, $userName, $password, $dbName);
?> 