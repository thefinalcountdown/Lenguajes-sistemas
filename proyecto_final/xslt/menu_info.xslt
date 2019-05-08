<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
<xsl:param name="modulo">ADAF3</xsl:param>
  <xsl:template match="/">
    <div class="light placeholder">
      <div class="breadcrumb">
        <a><xsl:attribute name="href">inicio_sesion.php</xsl:attribute>
    INICIO</a>
        <a><xsl:attribute name="href">modulo_grado.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/../@id"/></xsl:attribute>
    CICLOS</a>
        <a><xsl:attribute name="href">#s</xsl:attribute>
    MENU DE INFORMACIÓN</a>
      </div>
    </div>
    <h2><xsl:value-of select="//familia/ciclo[@id=$modulo]/nombre"/></h2>
     <div class="principal">
      <a>
        <xsl:attribute name="href">asignatura.php?id=<xsl:value-of select="$modulo"/></xsl:attribute>
        <div class="acceso">
          <h3>MODULOS</h3>
        </div>
      </a>
      <a>
        <xsl:attribute name="href">acceso.php?id=<xsl:value-of select="$modulo"/></xsl:attribute>
        <div class="acceso">
          <h3>ACCESO AL CICLO</h3>
        </div>
      </a>
      <a>
        <xsl:attribute name="href">trabajo.php?id=<xsl:value-of select="$modulo"/></xsl:attribute>
        <div class="acceso">
          <h3>TRABAJO Y COMPETENCIAS</h3>
        </div>
      </a>
    </div>
  </xsl:template>
</xsl:stylesheet>
