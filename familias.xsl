<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>

	<xsl:param name="id_ciclo"></xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<title>Familias Profesionales</title>
				<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
				<link href="https://fonts.googleapis.com/css?family=Oswald&amp;display=swap" rel="stylesheet"/> <!-- &amp; es el & -->
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
							<xsl:for-each select="elorrieta/familia">
								<li class="gradosFamilias"> 
									<div>
	                                   	<a class="button" href="#popup">
	                                   		<!-- Por cada familia abre un li con su respectivo link. Al hacer click en él aparecen los grados de dicha familia. -->
											<span><xsl:value-of select="nombre"/></span>
										</a>
									</div>
									<div id="popup" class="overlay light"><a class="cancel" href="#"></a>
										<div class="popup">
											<h3>Horarios de atención telefónica en la sección de ELORRIETA</h3>
											<div class="content">
												<ul>
													<xsl:for-each select="ciclo">
														<li>
															<a class="ciclos_familia">
																<xsl:attribute name="href">
																	datos_ciclo.php?id_grado=<xsl:value-of select="@id"/>
																</xsl:attribute>
																<span><xsl:value-of select="nombre"/></span>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</div>
										</div>
									</div>
                                </li>
							</xsl:for-each>
						</ul>
					</div>
					<div class="footer">
						<div class="boton"><a href="index.html"><img src="css/imagenes/home.png"/></a><br/>home</div>
						<div class="boton"><a><xsl:attribute name="href">ciclos_superiores.php?id_ciclo=Superior</xsl:attribute><img src="css/imagenes/porsuperior.png"/></a><br/>grado superior</div>
						<div class="boton"><a><xsl:attribute name="href">ciclos_medios.php?id_ciclo=Medio</xsl:attribute><img src="css/imagenes/pormedio.png"/></a><br/>grado medio</div>
						<div class="boton"><a href="familias.php"><img src="css/imagenes/porfamilias.png"/></a><br/>familias</div>
					</div>

				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>





