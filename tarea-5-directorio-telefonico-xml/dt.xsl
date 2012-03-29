<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
	<title>Directorio telefónico XML</title>
	<style>
		body {
			background-image: url('note.jpeg');
            font-size: 14px;
		}
		h2 {
			color: blue;
			margin-top: 100px;
			margin-left: 300px;
		}
		#principal{
			margin-top: 30px;
			margin-left: 350px;
		}
		.bold {
			font-weight: bold;
		}
		.names {
			color: blue;
		}
	</style>
  </head>
  <body>
  <h2>Directorio telefónico de <img src="transernaga.jpeg"/></h2>
    <table id="principal">
      <xsl:for-each select="dt/person">
	  <tr>
        <th>Nombre</th>
		<th class="names"><xsl:value-of select="name"/></th>
      </tr>
      <tr>
        <td></td>
		<td>
			<table>
				<tr>
					<td class="bold">Teléfono:</td>
					<td><xsl:value-of select="telephone"/></td>
				</tr>
				<tr>
					<td class="bold">Email: </td>
					<td><xsl:value-of select="email"/></td>
				</tr>
			</table>
		</td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

