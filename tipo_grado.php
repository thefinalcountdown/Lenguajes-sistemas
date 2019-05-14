<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("tipo_grado.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_familia',$_GET['id_fam']);
   echo $proc->transformToXML($datos);

?>