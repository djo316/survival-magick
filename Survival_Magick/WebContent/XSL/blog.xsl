<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css"
					href="../CSS/default.css" />
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
			</head>
			<body>
				<div class="topnav">
					<a href="index.html">Acceuil</a>
					<a href="./XML/blog.xml">Blog</a>
					<a href="shop.html">Boutique</a>
				</div>
				<div class="content">
					<h2>Articles du blog</h2>
					<table>
						<xsl:for-each select="blog/billet">
							<tr>
								<td>
									Titre
								</td>
								<td>
									Auteur
								</td>
								<td>
									Date de création de l'article
								</td>
								<td>
									Date de la dernière modification
								</td>
								<td>
									Catégorie
								</td>
							</tr>
							<tr>
								<td>
									<xsl:value-of select="titre" />
								</td>
								<td>
									<xsl:value-of select="auteur" />
								</td>
								<td>
									<xsl:value-of select="dateCreation" />
								</td>
								<td>
									<xsl:value-of select="derniereModification" />
								</td>
								<td>
									<xsl:value-of select="@categorie" />
								</td>
							</tr>
							<tr>
								<td colSpan="5">
									<xsl:value-of select="article"></xsl:value-of>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				<div class="footer">
					<ul>
						<a href="apropos.html" padding="5 px">À propos de nous</a>
						<a href="mailto:lunaleilya@gmail.com" padding="5 px">Nous contacter</a>
						<a href="http://www.youtube.com" padding="5 px">
							<i class="fa fa-youtube" style="font-size: 48px; color: red"></i>
						</a>
						<a href="http://www.facebook.com" padding="5 px">
							<i class="fa fa-facebook-square"
								style="font-size: 48px; color: blue"></i>
						</a>
					</ul>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>