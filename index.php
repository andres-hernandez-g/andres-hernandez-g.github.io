<?php
include ("conexion.php");

$res_cliente = $conexion->query("SELECT * FROM datos WHERE id_reg = 65");
$fila_cl = $res_cliente->fetch_assoc();
$nombre = $fila_cl['cl_nombre'];

$id_enfoque = $fila_cl['enf_nombre'];
$id_aplicacion = $fila_cl['apl_nombre'];

$enfoque = $conexion->query("SELECT * FROM enfoque WHERE id_enfoque = '$id_enfoque'");
$fila_enf = $enfoque->fetch_assoc();

$aplicacion = $conexion->query("SELECT * FROM aplicacion WHERE id_aplicacion = '$id_aplicacion'");
$fila_apl = $aplicacion->fetch_assoc();

$cap = $conexion->query("SELECT * FROM capitulos_$nombre ORDER BY cap ASC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0">
	<title> <?php echo $nombre. " - ". $fila_enf['nombre_enfoque']; ?> </title>
    <link rel="stylesheet" href="check.css">
    <style>

        h2{margin:20px 0px -30px -23px;}

        a{text-decoration:none;
          color: black;
          margin-left:-20px;}

        a:hover{color:blue;}

        select {max-width: 180px}
        
        option {width: 170px;
                white-space:pre-wrap;
                word-wrap: break-word;}

        th, td{padding: 10px 12px;}

        .pro{text-align:center;}

        table{font-size:13px;}

        textarea{width:5.5cm;
                 height:2cm;}
    </style>
</head>
<body>
<div class="wrapper">
  <div class="wrapper_left">

<!-- CAPITULOS -->
    <ul>
        <h2>CAPÍTULOS</h2>

<br><br><br>

  <?php while($capitulo = $cap->fetch_row()){

                echo "<li data-li='_$capitulo[0]'>". "<p>$capitulo[0]</p>". "</li>";

              } ?>
    </ul>
  </div>
  
  <div class="wrapper_right">
  
    <div class="title">

     <h4> <?php echo $nombre. " - ". $fila_enf['nombre_enfoque']; ?> </h4>
<hr style=" width:16cm; margin:18px 7.5cm;">
    </div>

   <!-- <a href="conf_eliminar.php?id=<?php //echo $id; ?>">Eliminar</a> -->
    <div class="contafer">

      <div class="item _1" style="display: none;">
        <?php include ("CAP/capitulo_1.php"); ?>
        
      </div>

      <div class="item _2" style="display: none;">
        <?php include ("CAP/capitulo_2.php"); ?>
      </div>

      <div class="item _3" style="display: none;">
        <?php include ("CAP/capitulo_3.php") ?>
      </div>

      <div class="item _4" style="display: none;">
        <?php include ("CAP/capitulo_4.php") ?>
      </div>

      <div class="item _5" style="display: none;">
        <?php include ("CAP/capitulo_5.php") ?>
      </div>

      <div class="item _6" style="display: none;">
        <?php include ("CAP/capitulo_6.php") ?>
      </div>

      <div class="item _7" style="display: none;">
        <?php include ("CAP/capitulo_7.php") ?>
      </div>

      <div class="item _8" style="display: none;">
        <?php include ("CAP/capitulo_8.php") ?>
      </div>

      <div class="item _9" style="display: none;">
        <?php include ("CAP/capitulo_9.php") ?>
      </div>

      <div class="item _10" style="display: none;">
        <?php include ("CAP/capitulo_10.php") ?>
      </div>

      <div class="item _11" style="display: none;">
        <?php include ("CAP/capitulo_11.php") ?>
      </div>

  </div>
</div>
  <script src="script.js"></script>
  
  </body>
</html>