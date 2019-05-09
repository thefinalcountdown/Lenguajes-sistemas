<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="id_familia"> </xsl:param>
    
    <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
	<xsl:template match="/elorrieta">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
      </head>
			<body>
				<div class="ventana">
					<div class="cabecera">
						<a href="home.html">
                            <img src="" alt="logotipo"/>
                        </a>
					</div>
					<div class="central">
						<ul class="grados">
							<xsl:for-each select="familia">
								<li> 
                                    <a>
                                        <xsl:attribute name="href">
                                            tipo_grado.php?id_fam=<xsl:value-of select="@id"/>
                                        </xsl:attribute>
                                        <span> <xsl:value-of select="nombre"/> </span>
                                    </a>
                                </li>
							</xsl:for-each>
						</ul>
					</div>
					<div class="footer">
						<div class="boton" href="index.html"><i class="fas fa-home"></i>home</div>
						<div class="boton" href="ciclos_superiores.php"><i class="fas fa-graduation-cap"></i>grados superiores</div>
						<div class="boton" href="ciclos_medios.php"><i class="fas fa-book"></i>grados medios</div>
						<div class="boton" href="familias.php"><i class="fas fa-sitemap"></i>Familias profesionales</div>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>