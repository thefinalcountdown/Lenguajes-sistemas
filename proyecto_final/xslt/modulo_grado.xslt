<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
  <xsl:param name="familia">AD</xsl:param>
  <xsl:template match="/">
        <div class="light placeholder">
          <div class="breadcrumb">
            <a><xsl:attribute name="href">inicio_sesion.php</xsl:attribute>
    INICIO</a>
     <a><xsl:attribute name="href">#</xsl:attribute>
    CICLOS</a>
          </div>
        </div>
        <h1><xsl:value-of select="elorrieta/familia[@id=$familia]/nombre"/></h1>
        <div class="principal">
      <div class="caja">
      <xsl:choose><xsl:when test="elorrieta/familia[@id=$familia]/ciclo[tipo='Medio']">
      <h2>GRADO MEDIO</h2>
          <xsl:for-each select="elorrieta/familia[@id=$familia]/ciclo[tipo='Medio']">
            <a>
              <xsl:attribute name="href">
        menu_info.php?id=<xsl:value-of select="@id"/>
        </xsl:attribute>
              <div class="medio">
               <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
              </div>
            </a>
          </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
          <div class="nada">
          <h2>GRADO MEDIO</h2>
          <p>Este modulo no contiene ningún grado medio.</p>
          </div>
          </xsl:otherwise>
          </xsl:choose>
      </div>
      <div class="caja">
       <h2>GRADO SUPERIOR</h2>
          <xsl:for-each select="elorrieta/familia[@id=$familia]/ciclo[tipo='Superior']">
            <a>
              <xsl:attribute name="href">
          menu_info.php?id=<xsl:value-of select="@id"/>
        </xsl:attribute>
              <div class="Superior">
                <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
              </div>
            </a>
          </xsl:for-each>
      </div>
      </div>
  </xsl:template>
</xsl:stylesheet>
