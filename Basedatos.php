<?php

    class Basedatos{

        public $usuariobd = "root";
        public $passwordbd = "";


        public function __construct(){}


        public function conectarbd(){


            $infobd= "mysql:host=localhost;port=3307;dbname=endulsar";

            try{

                $conexionbd = new PDO($infobd, $this->usuariobd, $this->passwordbd);
                return ($conexionbd);

            }catch (PDOException $error){

                echo ($error->getMessage());

            }

        }

        
        public function agregarproducto($consultasql){

            $conexionbd = $this->conectarbd();

            $agregarproducto = $conexionbd->prepare($consultasql);

            $resultado = $agregarproducto->execute();

            if ($resultado)
            {
                echo ("se agrego el producto con exito");
            }
            else
            {
                echo ("error al agregar");
            }

        }



    }

?>