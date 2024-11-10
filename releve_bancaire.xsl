<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!-- Template pour le mode 'credit' -->
    <xsl:template match="/" mode="credit">
        <html>
            <head>
                <title>Relevé - Opérations de crédit</title>
            </head>
            <body>
                <table border="1" width="80%">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Montant</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/releve/operations/operation[@type='CREDIT']">
                            <tr>
                                <td><xsl:value-of select="@date"/></td>
                                <td><xsl:value-of select="@montant"/></td>
                                <td><xsl:value-of select="@description"/></td>
                            </tr>
                        </xsl:for-each>
                        <tr>
                            <td colspan="2">Total des opérations de crédit</td>
                            <td><xsl:value-of select="sum(/releve/operations/operation[@type='CREDIT']/@montant)"/></td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template pour toutes les opérations (mode par défaut) -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevé</title>
            </head>
            <body>
                <table border="1" width="80%">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Montant</th>
                            <th>Type</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/releve/operations/operation">
                            <tr>
                                <td><xsl:value-of select="@date"/></td>
                                <td><xsl:value-of select="@montant"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:value-of select="@description"/></td>
                            </tr>
                        </xsl:for-each>
                        <tr>
                            <td colspan="2">Total des opérations</td>
                            <td colspan="2"><xsl:value-of select="sum(/releve/operations/operation/@montant)"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Total des opérations de crédit</td>
                            <td colspan="2"><xsl:value-of select="sum(/releve/operations/operation[@type='CREDIT']/@montant)"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Total des opérations de débit</td>
                            <td colspan="2"><xsl:value-of select="sum(/releve/operations/operation[@type='DEBIT']/@montant)"/></td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>