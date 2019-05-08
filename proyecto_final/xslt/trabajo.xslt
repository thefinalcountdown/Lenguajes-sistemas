<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
  <xsl:param name="modulo">ADAF3</xsl:param>
  <xsl:template match="/">
      <div class="light placeholder">
      <div class="breadcrumb">
        <a><xsl:attribute name="href">inicio_sesion.php</xsl:attribute>
    INCIO</a>
        <a><xsl:attribute name="href">modulo_grado.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/../@id"/></xsl:attribute>
    CICLOS</a>
        <a><xsl:attribute name="href">menu_info.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/@id"/></xsl:attribute>
    MENU DE INFORMACIÓN</a>
        <a><xsl:attribute name="href">#s</xsl:attribute>
    TRABAJOS Y COMPETENCIAS</a>
      </div>
    </div>
    <h2><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/nombre"/></h2>
    <div class="principal">
  <div class="competencias">
  <h3>TÍTULO OBTENIDO</h3>
  <p><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/titulacion"/></p>
  <h3>COMPETENCIAS DEL MODULO</h3>
  <p><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/competencia"/></p>
  </div>
    <div class="trabajo">
      <h3>TRABAJOS QUE SE PUEDEN REALIZAR UNA VEZ ACABADO EL CICLO</h3>
      <ul>
        <xsl:for-each select="elorrieta/familia/ciclo[@id=$modulo]/trabajo">
          <li>
            <xsl:value-of select="."/>
          </li>
        </xsl:for-each>
      </ul>
    </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
