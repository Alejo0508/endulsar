<?php


    include ("Basedatos.php");


    $id = $_GET["id"]; 

    $transaccion = new Basedatos();

    $consultasql = "DELETE FROM cupcake WHERE idcupcake = '$id'";


    $transaccion -> eliminarproducto($consultasql);

    header("location:cupcake.php");


?>