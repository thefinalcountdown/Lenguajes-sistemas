<html>
      <head>
        <title>Pagina_principal</title>
        <link rel="stylesheet" type="text/css" href="css/asignaturas.css"/>
      </head>
      <body>
        <div class="cabezera">
            <div class="imagen">
           <img class="logo" src="imagenes/logo_elorrieta_2015_transparente.png">
            </div>
            <div class="imagen">
            <img class="logo2" src="imagenes/elorrieta_imagen_panoramica.jpg">
                </div>
          </div>
        <div class="contenedor">
<?php

    /*
    Generamos un nuevo documento DOM con las reglas XSLT y otro con los datos XML
    */
    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("xslt/asignaturas.xslt");

   $datos = new DOMDocument();
   $datos->load("elorrieta_solo_datos.xml");
    /*
    Generamos un "motor" para aplicar esas reglas.
    Le cargamos las reglas de transformación
    Aplicamos dichas reglas al documento
    */
   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
    $proc->setParameter('','modulo',$_GET['id']);
   echo $proc->transformToXML($datos);

?>
          </div>
</body>
</html>