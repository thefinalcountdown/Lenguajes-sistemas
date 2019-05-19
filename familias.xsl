<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output 
		omit-xml-declaration="yes" 
		encoding="UTF-8" 
		method="html" 
		doctype-public="-//W3C//DTD HTML 4.01//EN" 
		doctype-system="http://www.w3.org/TR/html4/strict.dtd" 
		indent="yes" version="4.0"
	/>
	<xsl:template match="/elorrieta">
		<html>
			<head>
				<title>Familias Profesionales</title>
				<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
				<link href="https://fonts.googleapis.com/css?family=Oswald&amp;display=swap" rel="stylesheet"/>

			</head>
			<body>
				<div class="ventana" style="background-image: url('css/imagenes/bg-familias.jpg')"> 
					<div class="cabecera">
						<a href="home.html">
                            <img src="css/imagenes/cabecera.png" alt="logotipo"/>
                        </a>
					</div>
					<div class="central">
						<ul class="grados">
							<xsl:for-each select="familia">
								<li class="gradosFamilias"> 
                                   	<a>
										<xsl:attribute name="href">grado_familia.php?id_family=<xsl:value-of select = "@id"/></xsl:attribute>
										<span><xsl:value-of select="nombre"/></span>
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





