<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="tipo_grado"></xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
				<link rel="stylesheet" type="text/css" href="estilo.css"/>
			</head>
			<body>
				<div class=" ventana">
					<div class="cabecera">
						<a href="home.html"><img src="" alt="logotipo"/></a>
					</div>
					<div class="central">
						<ul class="grados">
							<xsl:for-each select="/elorrieta/familia">
								<li> <xsl:value-of select="nombre"/></li>
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