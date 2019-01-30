<?php
	//se realiza la paginación en función de las opciones que elija el usuario. Dependiendo de la categoría o el criterio que haya elegigo para ordenar los productos. Por defecto se muestran todos los productos sin ningún orden establecido.
	
	global $conexion;

	if (isset($_COOKIE['User'])) {
		$usuario = $_COOKIE['User'];
	}
	require_once("funciones/conexion.php");

	if(isset($_GET['pageNo'])){
		$inicio = $_GET['pageNo'];
		$limite = 6;
		$sql = "";
		if (isset($_COOKIE['categoria']) && $_COOKIE['categoria'] == "todos" && !isset($_COOKIE['orden'])) {
			$categoria = "todos";
			
			$sql = "SELECT * FROM productos LIMIT ".($inicio*3).",".$limite."";

		} elseif( isset($_COOKIE['orden']) && isset($_COOKIE['categoria'])) {
			$categoria = $_COOKIE['categoria'];
			$orden = $_COOKIE['orden'];
			switch ($orden) {
				case 'precioAsc':
					if ($categoria == "todos") {
						$sql = "SELECT * FROM productos ORDER BY precio ASC LIMIT ".($inicio*3).",".$limite."";
						break;
					} else {
						$sql = "SELECT * FROM productos WHERE categoria = '".$categoria."' ORDER BY precio ASC LIMIT ".($inicio*3).",".$limite."";
						break;
					}
				case 'precioDesc':
					if ($categoria != "todos") {
						$sql = "SELECT * FROM productos WHERE categoria = '".$categoria."' ORDER BY precio DESC LIMIT ".($inicio*3).",".$limite."";
						break;
					} else {
						$sql = "SELECT * FROM productos ORDER BY precio DESC LIMIT ".($inicio*3).",".$limite."";
						break;
					}
				case 'nombreAsc':
					if ($categoria != "todos") {
						$sql = "SELECT * FROM productos WHERE categoria = '".$categoria."' ORDER BY nom_producto ASC LIMIT ".($inicio*3).",".$limite."";
						break;
					} else {
						$sql = "SELECT * FROM productos ORDER BY nom_producto ASC LIMIT ".($inicio*3).",".$limite."";
						break;
					}
				case 'nombreDesc':
					if ($categoria != "todos") {
						$sql = "SELECT * FROM productos WHERE categoria = '".$categoria."' ORDER BY nom_producto DESC LIMIT ".($inicio*3).",".$limite."";
						break;
					} else {
						$sql = "SELECT * FROM productos ORDER BY nom_producto DESC LIMIT ".($inicio*3).",".$limite."";
						break;
					}
			}
		} elseif(isset($_COOKIE['categoria']) && $_COOKIE['categoria'] != "todos") {
			$categoria = $_COOKIE['categoria'];
			$sql = "SELECT * FROM productos WHERE categoria = '".$categoria."' LIMIT ".($inicio*3).",".$limite."";
		}
		$resultadoTotal = $conexion->query($sql);
		if ($resultadoTotal->num_rows > 0) {
			echo "<ul>";
			while ($registro = $resultadoTotal->fetch_object()) {
				if(!isset($_COOKIE['User'])) {
					echo "<li><p><img class='imgProd' src='" . $registro->imagen . "'></p>";
					echo "<p class='nombre'>" . $registro->nom_producto . "</p>";
					echo "<p>" . number_format($registro->precio, 2, ",", "." ) . " €</p>";
				} else {
					echo "<li><p><img class='imgProd' src='" . $registro->imagen . "'></p>";
					echo "<p class='nombre'>" . $registro->nom_producto . "</p>";
					echo "<p>" . number_format($registro->precio, 2, ",", "." ) . " €</p>";
					echo "<p><button class='boton' id='" . $registro->id_prod . "' value='menos' onclick= comprar(this,'".$usuario."')>-</button>";
					echo "<span class='cant' id='cantidad".$registro->id_prod."'>0</span>";
					echo "<input type='hidden' id='aux".$registro->id_prod."' value='0'>";
					echo "<button class='boton' id='" . $registro->id_prod . "' value='mas' onclick= comprar(this,'".$usuario."')>+</button></p></li>";
				}
			}
            echo "</ul>";	
		}
		$comprobar = $resultadoTotal->num_rows;
	
		if($comprobar != 0){
			echo "<a class='load' href=\"#\" onclick=\"dynPageObj.setUrl('getPage.php?pageNo=".($_GET['pageNo']+2)."');dynPageObj.loadPage();this.style.display='none';return false\">Ver m&aacute;s</a>";
		} else {
			echo "";
		}
	
		$resultadoTotal->close();
		$conexion->close();
	}
?>