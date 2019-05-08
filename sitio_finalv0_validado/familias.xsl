<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="id_familia"> </xsl:param>
  
  
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
  <xsl:template match="/elorrieta">
    <html>
      <head>
        <title>Familias Profesionales</title>
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
      </head>
     
      <body>
	  
	   <div class="wrapper">

			<div class="header">
				<a href="index.html">
				<img src="img/cabecera.jpg" alt="logo"/>
				</a>
			</div>
			
			
			<div id="central">
        	
				<div class="floww">
		
					<ul class="menufamilias"> 
						<xsl:for-each select="familia">
						<li>
							<a>
							<xsl:attribute name="href">grados_por_familia.php?id_fam=<xsl:value-of select="@id"/>
							</xsl:attribute>
								<img alt="icono">
								<xsl:attribute name="src"> <xsl:value-of select="icono"/></xsl:attribute>
								</img>
								<span> <xsl:value-of select="nombre"/> </span>
							</a>
						</li>
						</xsl:for-each>
					</ul>
			

					<div class="dcha">

								<div class="mostrar">	
								
								</div>		
					</div>
        
				</div>
			
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
