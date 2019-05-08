<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("xslt_datos_ciclo.xslt");

   $datos = new DOMDocument();
   $datos->load("elorrieta_solo_datos.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_ciclo',$_GET['id_grado']);
   echo $proc->transformToXML($datos);

?>