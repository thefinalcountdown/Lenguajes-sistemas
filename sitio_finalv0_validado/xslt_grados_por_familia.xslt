<?xml version="1.0" encoding="UTF-8"?>
<!--ESTE XSLT SIRVE PARA, SELECCIONANDO UNA FAMILIA, QUE NOS MUESTRE LOS CICLOS CORRESPONDIENTES A DICHA FAMILIA-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
  <xsl:param name="id_familia"/>
  <!--POSIBLES VALORES DEL PARÁMETRO: LAS "ID" (ATRIBUTO) DE LA ETIQUETA "FAMILIA" DEL XML-->
  <xsl:template match="/elorrieta">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
        <title>Familias Profesionales</title>
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
							<xsl:attribute name="href">grados_por_familia.php?id_fam=<xsl:value-of select="@id"/></xsl:attribute>
								<img alt="icono">
								<xsl:attribute name="src">	<xsl:value-of select="icono"/>	</xsl:attribute>
								</img>
								<span>
								<xsl:value-of select="nombre"/>
								</span>
							</a>	
						</li>  
						</xsl:for-each>
					</ul>
              
					<div class="dcha">
	
								<div class="mostrar">
								
								<ul class="container">
								<xsl:for-each select="familia">
								<xsl:if test="@id=$id_familia">
								<xsl:for-each select="ciclo">
									<li>
										<a>	<xsl:attribute name="href">datos_grado.php?id_grado=<xsl:value-of select="@id"/></xsl:attribute><xsl:attribute name="class"><xsl:value-of select="tipo"/></xsl:attribute>
										<xsl:value-of select="nombre"/>
										</a>
									Grado <xsl:value-of select="tipo"/> 
									|<xsl:value-of select="horas"/> horas<!--QUIZÁS CONVENDRÍA ORDENARLOS POR TIPO DE GRADO (MEDIO O SUPERIOR)-->
									</li>
								</xsl:for-each>
								</xsl:if>
								</xsl:for-each>
								</ul>
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
