<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("grado_familia.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_familia',$_GET['id_family']);
   echo $proc->transformToXML($datos);

?>