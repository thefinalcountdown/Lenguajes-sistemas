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
        <a><xsl:attribute name="href">menu_info.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/@id"/></xsl:attribute>
    MENU DE INFORMACIÓN</a>
        <a><xsl:attribute name="href">#s</xsl:attribute>
    MODULOS</a>
      </div>
    </div>
    <h2><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/nombre"/></h2>
    <div class="principal">
      <div class="primero">
        <h3>PRIMER AÑO</h3>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Nº de horas</th>
          </tr>
          <xsl:for-each select="elorrieta/familia/ciclo[@id=$modulo]/primero/modulo">
            <tr>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="horas"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </div>
      <div class="segundo">
        <h3>SEGUNDO AÑO</h3>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Nº de horas</th>
          </tr>
          <xsl:for-each select="elorrieta/familia/ciclo[@id=$modulo]/segundo/modulo">
            <tr>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="horas"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </div>
      <div class="total">
        <p>Número de horas totales es de <strong><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/horas"/></strong></p>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
