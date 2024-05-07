<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

<html>
<head>
</head>
<body>

<!-- Правила преобразования XML-документа в HTML -->

    <xsl:value-of select="Название"/>
    <xsl:value-of select="Столица"/>
	
<table border="1">
<tr>
<th>
Страна
</th>
<th>
Столица
</th>
<th>
Население
</th>
<th>
Площадь
</th>
</tr>
<xsl:for-each select="//Страна">
<xsl:sort order="ascending" select="Название"/>
<tr>
  <td><xsl:value-of select="Название"/></td>
  <td><xsl:value-of select="Столица"/></td>
  <td><xsl:value-of select="Население"/></td>
    <td><xsl:value-of select="Площадь"/></td>
</tr>
</xsl:for-each>
</table>


<!-- ........................................... --> 

</body>
</html>

  </xsl:template>
</xsl:stylesheet>
