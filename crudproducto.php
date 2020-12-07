<?php 

    include ("Basedatos.php");

    // cupcake

    if (isset($_POST["botonEnvio"]))
    {

        $nombre = $_POST["nombre"];
        $precio = $_POST["precio"];
        $masa = $_POST["masa"];
        $relleno = $_POST["relleno"];
        $descripcion = $_POST["descipcion"];
        $foto = $_POST["foto"];

        $transaccion = new Basedatos();

        $consultasql = "INSERT INTO cupcake (nombre, masa, relleno, descripcion, precio, foto) VALUES ('$nombre', '$masa', '$relleno', '$descripcion', '$precio', '$foto')";
    
        $transaccion -> agregarproducto($consultasql);
    
        header("location:cupcake.php");
    }


    
    if (isset($_POST["botonEditar"]))
    {


        $id = $_GET['id'];

        $nombre = $_POST['nombreEditar'];
        $descripcion = $_POST['descripcionEditar'];
        $precio = $_POST['precioeditar'];

        $transaccion = new Basedatos();

        $consultasql = "UPDATE cupcake SET nombre='$nombre', descripcion='$descripcion', precio='$precio' WHERE idcupcake = '$id'";
    
    
        $transaccion -> editarproducto($consultasql);

        header("location:cupcake.php");
    }

    //tortica

    if (isset($_POST["enviotortica"]))
    {

        $nombre = $_POST["nombre"];
        $precio = $_POST["precio"];
        $masa = $_POST["masa"];
        $relleno = $_POST["relleno"];
        $descripcion = $_POST["descipcion"];
        $foto = $_POST["foto"];

        $transaccion = new Basedatos();

        $consultasql = "INSERT INTO tortica (nombre, masa, relleno, descripcion, precio, foto) VALUES ('$nombre', '$masa', '$relleno', '$descripcion', '$precio', '$foto')";
    
        $transaccion -> agregarproducto($consultasql);
    
        header("location:cupcake.php");
    }


    
    if (isset($_POST["botonEditar"]))
    {


        $id = $_GET['id'];

        $nombre = $_POST['nombreEditar'];
        $descripcion = $_POST['descripcionEditar'];
        $precio = $_POST['precioeditar'];

        $transaccion = new Basedatos();

        $consultasql = "UPDATE cupcake SET nombre='$nombre', descripcion='$descripcion', precio='$precio' WHERE idcupcake = '$id'";
    
    
        $transaccion -> editarproducto($consultasql);

        header("location:cupcake.php");
    }






?>

