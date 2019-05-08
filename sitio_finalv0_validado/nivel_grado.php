<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("nivel_grado.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta_solo_datos.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'nivel_ciclo',$_GET['nivel_ciclo']);
   echo $proc->transformToXML($datos);

?>