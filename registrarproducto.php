<?php 

    include ("Basedatos.php");

    if (isset($_POST["botonEnvio"]))
    {

        $nombre = $_POST["nombrecupcake"];
        $precio = $_POST["preciocupcake"];
        $masa = $_POST["masa"];
        $relleno = $_POST["relleno"];
        $descripcion = $_POST["descipcion"];
        $foto = $_POST["foto"];
    }

    $transaccion = new Basedatos();

    $consultasql = "INSERT INTO cupcake (nombre, masa, relleno, descripcion, precio, foto) VALUES ('$nombre', '$masa', '$relleno', '$descripcion', '$precio', '$foto')";

    $transaccion -> agregarproducto($consultasql);

    header("location:cupcake.php");

?>

