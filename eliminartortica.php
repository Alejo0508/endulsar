<?php


    include ("Basedatos.php");


    $id = $_GET["id"]; 

    $transaccion = new Basedatos();

    $consultasql = "DELETE FROM tortica WHERE idtortica = '$id'";


    $transaccion -> eliminarproducto($consultasql);

    header("location:torticas.php");


?>