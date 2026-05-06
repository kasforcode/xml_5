<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/items">
        <html>
        <head>
            <style>
                td, th { border: 1px solid black; padding: 5px; }
                tr:nth-child(even) { background-color: #b1acac; }
            </style>
        </head>
        <body>
            <table>
                <tr>
                    <th colspan="2">Всего элементов: <xsl:value-of select="count(element)"/></th>
                </tr>
                <tr>
                    <th>Тип</th>
                    <th>Наименование</th>
                </tr>
                <xsl:for-each select="element">
                    <tr>
                        <td><xsl:value-of select="@name"/></td>
                        <td><xsl:value-of select="@value"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
