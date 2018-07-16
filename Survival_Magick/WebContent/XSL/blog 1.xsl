<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Articles du blog</h2>
				<table border="1" style="width:100%">
					<xsl:for-each select="billet">
						<tr bgcolor="#9acd32">
							<th colspan="5">
								<xsl:value-of select=" titre " />
							</th>
						</tr>
						<tr>
							<td>
								<xsl:value-of select="@auteur" />
								<td>
									<td>
										<xsl:value-of select="@dateCreation" />
									</td>
									<td>
										<xsl:value-of select="@derniereModificationf" />
									</td>
									<td>
										<xsl:value-of select="categorie" />
									</td>
								</td>
							</td>
						</tr>
						<tr>
							<td colspan="5">
								<xsl:value-of select="article" />
							</td>
						</tr>
						<tr>
							<td colspan="5">
								<xsl:value-of select="lienImage" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>