<?xml version="1.0" encoding="UTF-8"?>
<!--ESTE XSLT SIRVE PARA, SELECCIONANDO UN TIPO DE GRADO (MEDIO O SUPERIOR), QUE NOS MUESTRE LOS CICLOS CORRESPONDIENTES A DICHO TIPO-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0" />
<xsl:param name="nivel_ciclo"></xsl:param><!--POSIBLES VALORES DEL PARAMETRO: MEDIO O SUPERIOR-->
  <xsl:template match="/elorrieta">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
        
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
        
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/> 
        
        <title>	</title>
      </head>
      
	  <body>
        <div class="wrapper">
        
			<div class="header">
				<a href="index.html">
				<img src="img/cabecera.jpg" alt="logo"/>
				</a>
			</div>  
		
			<div class="central">
		  
					<ul class="grados"> <!-- se puede poner la clase medio para estilo tipo familias-->
						<xsl:for-each select="familia/ciclo[tipo=$nivel_ciclo]">
					<li>
						<a>
							<xsl:attribute name="href">datos_grado.php?id_grado=<xsl:value-of select="@id"/></xsl:attribute>
							<xsl:value-of select="nombre"/>
						</a>
					</li>
					
						</xsl:for-each>
					</ul>
         
			</div>
          
			<div class="pie">
				<img src="img/pie.jpg" alt="pie"/>
				<div class="home">
					<a href="index.html"><img  src="img/home.png" alt="inicio"/> </a>
				</div>
			</div>
       
      
		</div>
      </body>
    </html>
  
  </xsl:template>
</xsl:stylesheet>
