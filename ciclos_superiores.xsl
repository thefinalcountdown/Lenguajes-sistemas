<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="tipo_grado"></xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
			</head>
			<body>
				<div class="ventana" style="background-image: url('css/imagenes/bg-gSup.jpg')"> 
					<div class="cabecera">
						<a href="home.html">
                            <img src="css/imagenes/cabecera.png" alt="logotipo"/>
                        </a>
					</div>
					<div class="central">
						<ul class="grados">
							<xsl:for-each select="/elorrieta/familia/ciclo[tipo='Superior']">
								<li class="gradosSuperiores">
									<a>
										<xsl:attribute name = "href">
											datos_grado.php?id_grado = <xsl:value-of select = "@id"/>
										</xsl:attribute>
										<span><xsl:value-of select = "nombre"/></span>
									</a>
								</li>
							</xsl:for-each>
						</ul>
					</div>
					<div class="footer">
						<div class="boton"><a href="index.html"><img src="css/imagenes/home.png"/></a><br/>home</div>
						<div class="boton"><a href="ciclos_superiores.php"><img src="css/imagenes/porsuperior.png"/></a><br/>grado superior</div>
						<div class="boton"><a href="ciclos_medios.php"><img src="css/imagenes/pormedio.png"/></a><br/>grado medio</div>
						<div class="boton"><a href="familias.php"><img src="css/imagenes/porfamilias.png"/></a><br/>familias</div>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
