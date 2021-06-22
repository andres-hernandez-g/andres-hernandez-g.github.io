<?php

$servidor = "localhost";
$user = "root";
$clave = "";
$bd = "auditoria";

$conexion = new mysqli($servidor, $user, $clave, $bd);

if($conexion){
    echo "<script> console.log('Conexión establecida') </script><br>";
} else{
    echo "No se pudo ejecutar la conexión";
}
return $conexion;

?>