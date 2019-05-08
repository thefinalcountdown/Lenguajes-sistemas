<?xml version="1.0" encoding="UTF-8"?>
<!--ESTE XSLT SIRVE PARA, SELECCIONADO EL CICLO, QUE SE MUESTREN UN PAR DE BOTONES (PARA VER LOS MÓDULOS DE CADA CURSO) E INFORMACIÓN GENERAL SOBRE EL CICLO-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0" />
<xsl:param name="id_ciclo"></xsl:param><!--POSIBLES VALORES DEL PARÁMETRO: LAS ID (ATRIBUTO) DE LAS ETIQUETAS "CICLO"-->
  <xsl:template match="/elorrieta">
  <html>
    <head>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     
	  <meta name="viewport" content="width=device-width, initial-scale=1"/>
      
      <link rel="stylesheet" type="text/css" href="estilo.css"/>
      
   
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/>
      
      <title>Grado</title>
    </head>
    <body>
      <div id="modaldiv">
      <xsl:for-each select="familia/ciclo">
        <xsl:if test="@id=$id_ciclo">
          <h2><span>Título: </span><xsl:value-of select="nombre"/></h2>
          <div class="intro">
            <p><span>Duración: </span><xsl:value-of select="horas"/></p>
            <p><span>Sede: </span><xsl:value-of select="sede"/></p>
            <p><xsl:value-of select="competencia"/></p>
          </div>
          <h3>Salidas laborales</h3>
          <div id="salidas">
            <xsl:for-each select="trabajo">
              <p><xsl:value-of select="."/></p>
            </xsl:for-each>
          </div>
		  <h3>Asignaturas</h3>
          <div id="tablas">
            <table class="primero">
              <caption>Primer Curso</caption>
              <tr>
                <th>Código Módulo</th>
                <th>Nombre</th>
                <th>Horas</th>
              </tr>
              <xsl:for-each select="primero/modulo">
                <tr>
                  <td><xsl:value-of select="@codigo"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="horas"/></td>
                </tr>
              </xsl:for-each>
            </table>
            <table class="segundo">
              <caption>Segundo Curso</caption>
              <tr>
                <th>Código Módulo</th>
                <th>Nombre</th>
                <th>Horas</th>
              </tr>
              <xsl:for-each select="segundo/modulo">
                <tr>
                  <td><xsl:value-of select="@codigo"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="horas"/></td>
                </tr>
              </xsl:for-each>
            </table>
          </div>
          <h3>Modo de acceso</h3>
          <div id="acceso">
            <xsl:for-each select="*[self::acceso_directo or self::acceso_prueba]">
              <p><xsl:value-of select="."/></p>
            </xsl:for-each>
          </div>
        </xsl:if>
      </xsl:for-each>
      <a href="#" id="cerrar" class="mod" onclick="history.back(-1)">X</a>
      </div>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
