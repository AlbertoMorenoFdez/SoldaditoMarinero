<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="soldaditomarinero.css" />
            </head>
            <body>
                
                <h1>Información de la canción.</h1>
                <h2 >
                    <xsl:value-of select="cancion/titulo"/>
                </h2>
                <h2 >
                    <xsl:value-of select="cancion/autor"/>
                </h2>
                <xsl:for-each select="cancion/letra/estrofa">
                    <div class="estrofa">
                        <xsl:for-each select="verso">
                                <p class="verso">
                                    <xsl:value-of select="."/>
                                </p>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
                <span class="importante">by <strong>Alberto Moreno Fernández</strong></span>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
