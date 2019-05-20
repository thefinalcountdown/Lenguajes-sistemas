<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0" />
<xsl:param name="id_ciclo"></xsl:param>
<xsl:template match="/">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
        <title>Datos del Grado</title>
    </head>
    <body>
        <div id="">
            <xsl:for-each select="elorrieta/familia/ciclo">
                <xsl:if test="@id=$id_ciclo">
                    <h1>
                        <xsl:value-of select="nombre"/>
                    </h1>
                    <div class="">
                        <p>
                            <xsl:value-of select="competencia"/>
                        </p>
                        <ul>
                            <li>
                                <p>
                                    <span>Sede: </span>
                                    <xsl:value-of select="sede"/>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>Titulación adquirida: </span>
                                    <xsl:value-of select="titulacion"/>
                                </p>
                            </li>
                        </ul>
                    </div>

                    <h3>Salidas laborales</h3>
                    <div id="">
                        <xsl:for-each select="trabajo">
                            <p>
                                <xsl:value-of select="."/>
                            </p>
                        </xsl:for-each>
                    </div>

                    <h3>Modo de acceso</h3>
                    <div id="acceso">
                        <h4>Acceso directo</h4>
                            <xsl:for-each select="acceso_directo">
                                <p>
                                    <xsl:value-of select="."/>
                                </p>
                            </xsl:for-each>
                        <h4>Acceso mediante prueba</h4>
                            <xsl:for-each select="acceso_prueba">
                                <p>
                                    <xsl:value-of select="."/>
                                </p>
                            </xsl:for-each>
                    </div>

                    <h3>Asignaturas</h3>
                    <div id="">
                        <table class="">
                            <caption>Primer Curso</caption>
                            <tr>
                                <th>Nombre</th>
                                <th>Horas</th>
                            </tr>

                            <xsl:for-each select="primero/modulo">
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="horas"/></td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                    <div>
                        <table class="segundo">
                            <caption>Segundo Curso</caption>
                            <tr>
                                <th>Nombre</th>
                                <th>Horas</th>
                            </tr>

                            <xsl:for-each select="segundo/modulo">
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="horas"/></td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                    <div class="footer">
                        <div class="boton"><a href="index.html"><img src="css/imagenes/home.png"/></a><br/>home</div>
                        <div class="boton"><a><xsl:attribute name="href">ciclos_superiores.php?id_ciclo=Superior</xsl:attribute><img src="css/imagenes/porsuperior.png"/></a><br/>grado superior</div>
                        <div class="boton"><a><xsl:attribute name="href">ciclos_medios.php?id_ciclo=Medio</xsl:attribute><img src="css/imagenes/pormedio.png"/></a><br/>grado medio</div>
                        <div class="boton"><a href="familias.php"><img src="css/imagenes/porfamilias.png"/></a><br/>familias</div>
                    </div>
                </xsl:if>
            </xsl:for-each>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>