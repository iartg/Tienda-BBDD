//el usuario elige el producto que quiere y su cantidad y los mete en la cesta (cesta.php)

function comprar(id, usuario) {

    var value = id.value;
    var identificador = id.id;
    
    var xhttp = new XMLHttpRequest();
    var cantidad = parseInt(document.getElementById("aux"+identificador).value);
    console.log(value);

    if(value === "mas") {
        cantidad++;
        document.getElementById("cantidad"+identificador).innerHTML = cantidad;
        document.getElementById("aux"+identificador).value = cantidad;
    } else {
        if(cantidad <= 0) { //la cantidad no puede ser menor que 0
            cantidad = 0;
            document.getElementById("cantidad"+identificador).innerHTML = cantidad;
            document.getElementById("aux"+identificador).value = cantidad;
        } else {
            cantidad--;
            document.getElementById("cantidad"+identificador).innerHTML = cantidad;
            document.getElementById("aux"+identificador).value = cantidad;
        }
    }

    xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200) {
            document.getElementById("resultado").innerHTML = this.responseText;
        }
    };

    var datos = "id=" + identificador + "&cantidad=" + cantidad + "&usuario=" + usuario + "&operacion=" + value;
            
    xhttp.open("POST", "js/cesta.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(datos);
}

//se realiza la compra de los productos
function comprarFin(usuario) {
        
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200) {
            document.getElementById("compra").innerHTML = this.responseText;
        }
    };

    var datos = "usuario=" + usuario;

    xhttp.open("POST", "js/comprarFin.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(datos);
}

//elimina de la cesta los productos que el usuario selecciona
function eliminar(id, usuario) {
    var value = id.value;   
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200) {
            document.getElementById("resultado").innerHTML = this.responseText;
        }
    };

    var datos = "id=" + value + "&usuario=" + usuario;
            
    xhttp.open("POST", "js/eliminar.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(datos);
}

//muestra los productos que hay en la cesta cuando el usuario pasa el ratón por encima de la cesta
function mostrarCesta(usuario) {
    var xhttp;

    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("divCesta").innerHTML = this.responseText;
            document.getElementById("divCesta").style.display = "block";
        }
    };

    var datos = "usuario=" + usuario;
            
    xhttp.open("POST", "js/resumenCesta.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(datos);
}

//oculta la cesta
function ocultar() {
    var div = document.getElementById("divCesta");
    div.style.display = "none";
}

//muestra la compra que el usuario desea consultar

function mostrarCompra(id_compra) {
    console.log(id_compra);

    var xhttp;

    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("compra").innerHTML = this.responseText;
            document.getElementById("compra").style.display = "block";
        }
    };

    var datos = "id_compra=" + id_compra;
            
    xhttp.open("POST", "js/compra.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(datos);   
}

function ocultarCompra() {
    var div = document.getElementById("compra");
    div.style.display = "none";
}