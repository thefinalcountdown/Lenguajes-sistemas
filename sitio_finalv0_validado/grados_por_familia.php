<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("xslt_grados_por_familia.xslt");

   $datos = new DOMDocument();
   $datos->load("elorrieta_solo_datos.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_familia',$_GET['id_fam']);
   echo $proc->transformToXML($datos);

?>