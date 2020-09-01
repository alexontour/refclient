<?xml version="1.0" encoding="UTF-8"?>
<!--
"ELGA Referenz-Stylesheet" - Hinweise zur Nutzung

Das "ELGA Referenz-Stylesheet" ermöglicht eine allgemeine, einheitliche und benutzerfreundliche Darstellung von medizinischen CDA-Dokumenten (HL7 CDA Release 2.0),
die als gemäß der Vorgaben der ELGA CDA Implementierungsleitfäden erstellt wurden. Das "ELGA Referenz-Stylesheet" wurde auf Grundlage von Vorarbeiten der Firmen
"USECON The Usability Consultants" und "NETCONOMY Software & Consulting GmbH" unter Leitung der ELGA GmbH von Arbeitsgruppen zur Harmonisierung
der CDA Implementierungsleitfäden gemäß dem Stand der Technik und unter Anwendung der größtmöglichen Sorgfalt auf seine Anwendbarkeit getestet und überprüft.

Das "ELGA Referenz-Stylesheet" wird von der ELGA GmbH bis auf Widerruf unentgeltlich und nicht-exklusiv sowie zeitlich und örtlich unbegrenzt, jedoch beschränkt auf
Verwendungen für die Zwecke der "Clinical Document Architecture" (CDA) zur Verfügung gestellt. Veränderungen des "ELGA Referenz-Stylesheet" für die lokale
Verwendung sind zulässig. Derartige Veränderungen (sogenannte bearbeitete Fassungen) dürfen ihrerseits publiziert und Dritten zur Weiterverwendung und Bearbeitung zur Verfügung
gestellt werden. Bei der Veröffentlichung von bearbeiteten Fassungen ist darauf hinzuweisen, dass diese auf Grundlage des von der ELGA GmbH publizierten
"ELGA Referenz-Stylesheet" erstellt wurden.

Die Anwendung sowie die allfällige Bearbeitung des "ELGA Referenz-Stylesheet" erfolgt in ausschließlicher Verantwortung der AnwenderInnen.
Aus der Veröffentlichung, Verwendung und/oder Bearbeitung können keinerlei Rechtsansprüche gegen die ELGA GmbH erhoben oder abgeleitet werden.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="urn:hl7-org:v3" xmlns:n2="urn:hl7-org:v3/meta/voc" xmlns:voc="urn:hl7-org:v3/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="urn:ihe:pharm:medication"
                exclude-result-prefixes="n1 n2 voc xsi ns2" id="ELGA-eimpf_Stylesheet_1.00.004.1">
    <xsl:output method="html" omit-xml-declaration="yes" indent="yes" encoding="utf-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" />

<!--
 gesundheit.gv.at service url, used for the info button.
-->
<xsl:param name="param_InfoButtonBaseUrl" />

<!--
 text of the notification banner.
 basic html markup is allowed (e.g. <strong>Testphase</strong> - unverbindliche Berechnung zur weiteren Abklärung)
 default value: "<strong>Testphase</strong> - unverbindliche Berechnung zur weiteren Abklärung"
-->
<xsl:param name="param_BannerText" />

<xsl:variable name="infoButtonBaseURL">
    <xsl:choose>
        <xsl:when test="not($param_InfoButtonBaseUrl)">
            <xsl:value-of select="'https://www.gesundheit.gv.at/linkaufloesung/applikation-flow?quelle=GHP&amp;flow=LO&amp;leistung=LA-GP-SN-'" />
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$param_InfoButtonBaseUrl" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<xsl:variable name="bannerText">
    <xsl:choose>
        <xsl:when test="not($param_BannerText)">
            <strong><xsl:text>Testphase</xsl:text></strong>
            <xsl:text> - unverbindliche Berechnung zur weiteren Abklärung</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:copy-of select="$param_BannerText" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<xsl:template name="getDate">
    <xsl:param name="node"/>
    <xsl:param name="short" select="string(false())" />

    <xsl:choose>
        <xsl:when test="not($node/@nullFlavor) and not($node/@nullFlavor='UNK') and $node/@value and string-length($node/@value) >= 4">

            <!-- day -->
            <xsl:if test="string-length($node/@value) >= 8">
                <xsl:choose>
                    <xsl:when test="substring ($node/@value, 7, 1)='0'">
                        <xsl:value-of select="substring ($node/@value, 8, 1)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring ($node/@value, 7, 2)"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="$short='true'">
                        <xsl:text>.</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>

            <!-- month -->
            <xsl:if test="string-length($node/@value) >= 6">
                <xsl:variable name="month" select="substring ($node/@value, 5, 2)"/>
                <xsl:choose>
                    <xsl:when test="$short='true'">
                        <xsl:choose>
                            <xsl:when test="$month='01'">
                                <xsl:text>Jän </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='02'">
                                <xsl:text>Feb </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='03'">
                                <xsl:text>Mär </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='04'">
                                <xsl:text>Apr </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='05'">
                                <xsl:text>Mai </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='06'">
                                <xsl:text>Jun </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='07'">
                                <xsl:text>Jul </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='08'">
                                <xsl:text>Aug </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='09'">
                                <xsl:text>Sep </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='10'">
                                <xsl:text>Okt </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='11'">
                                <xsl:text>Nov </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='12'">
                                <xsl:text>Dez </xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="$month='01'">
                                <xsl:text>Januar </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='02'">
                                <xsl:text>Februar </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='03'">
                                <xsl:text>März </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='04'">
                                <xsl:text>April </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='05'">
                                <xsl:text>Mai </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='06'">
                                <xsl:text>Juni </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='07'">
                                <xsl:text>Juli </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='08'">
                                <xsl:text>August </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='09'">
                                <xsl:text>September </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='10'">
                                <xsl:text>Oktober </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='11'">
                                <xsl:text>November </xsl:text>
                            </xsl:when>
                            <xsl:when test="$month='12'">
                                <xsl:text>Dezember </xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>

            <!-- year -->
            <xsl:value-of select="substring ($node/@value, 1, 4)"/>

        </xsl:when>
        <xsl:otherwise>
            <xsl:text>unbekannt</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getTime">
    <xsl:param name="node"/>

    <xsl:choose>
        <xsl:when test="string-length($node/@value) = 19">

            <!-- hour -->
            <xsl:variable name="hour" select="substring ($node/@value, 9, 2)"/>
            <xsl:if test="$hour != ''">
                <xsl:choose>
                    <!-- print "00:00" Uhr as "0:00" Uhr -->
                    <xsl:when test="$hour='00'">
                        <xsl:text>0</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring ($node/@value, 9, 2)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>

            <xsl:text>:</xsl:text>
            <!-- minute -->
            <xsl:value-of select="substring ($node/@value, 11, 2)"/>
            <xsl:text> Uhr</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>unbekannt</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getDateTime">
    <xsl:param name="node"/>

    <xsl:choose>
        <xsl:when test="not($node/@nullFlavor) and not($node/@nullFlavor='UNK') and string-length($node/@value) = 19">
            <xsl:call-template name="getDate">
                <xsl:with-param name="node" select="$node"/>
            </xsl:call-template>
            <xsl:text> um </xsl:text>
            <xsl:call-template name="getTime">
                <xsl:with-param name="node" select="$node"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="not($node/@nullFlavor) and not($node/@nullFlavor='UNK') and string-length($node/@value) = 8">
            <xsl:call-template name="getDate">
                <xsl:with-param name="node" select="$node"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>unbekannt</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="isDateTimeValid">
    <xsl:param name="node" />

    <xsl:choose>
        <xsl:when test="$node and $node/@value and not($node/n1:time/@nullFlavor)">
            <xsl:value-of select="string(true())" />
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="string(false())" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!--
    If the dates are different, print them in the format "from date" - "to date".
    If the dates are equal, print them only once.
    Note: The time get's ignored! (see https://jira-neu.elga.gv.at/browse/REFERENZ-550)
-->
<xsl:template name="printDateDistinct">
<xsl:param name="fromDateNode" />
<xsl:param name="toDateNode" />
<xsl:param name="short" select="string(false())" />

<xsl:variable name="fromValid">
    <xsl:call-template name="isDateTimeValid">
        <xsl:with-param name="node" select="$fromDateNode" />
    </xsl:call-template>
</xsl:variable>

<xsl:variable name="toValid">
    <xsl:call-template name="isDateTimeValid">
        <xsl:with-param name="node" select="$toDateNode" />
    </xsl:call-template>
</xsl:variable>

<xsl:choose>
    <xsl:when test="$fromValid='true' and $toValid='true'">
        <xsl:variable name="fromDate">
            <xsl:call-template name="getDate">
                <xsl:with-param name="node" select="$fromDateNode" />
                <xsl:with-param name="short" select="$short" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="toDate">
            <xsl:call-template name="getDate">
                <xsl:with-param name="node" select="$toDateNode" />
                <xsl:with-param name="short" select="$short" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="$fromDate=$toDate">
                <xsl:value-of select="$fromDate" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$fromDate" />
                <xsl:text> - </xsl:text>
                <xsl:value-of select="$toDate" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:when>
    <xsl:when test="$fromValid='true' and $toValid='false'">
        <xsl:call-template name="getDate">
            <xsl:with-param name="node" select="$fromDateNode" />
            <xsl:with-param name="short" select="$short" />
        </xsl:call-template>
        <xsl:text> - unbekannt</xsl:text>
    </xsl:when>
    <xsl:when test="$fromValid='false' and $toValid='true'">
        <xsl:text>unbekannt - </xsl:text>
        <xsl:call-template name="getDate">
            <xsl:with-param name="node" select="$toDateNode" />
            <xsl:with-param name="short" select="$short" />
        </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
        <xsl:text>unbekannt</xsl:text>
    </xsl:otherwise>
</xsl:choose>

</xsl:template>
    <xsl:template name="getAddress">
        <xsl:param name="node"/>

        <xsl:if test="$node/n1:streetAddressLine">
            <xsl:value-of select="$node/n1:streetAddressLine"/>
            <br />
        </xsl:if>

        <!-- if streetName is must; houseNumber is also must-->
        <xsl:if test="$node/n1:streetName">
            <xsl:value-of select="$node/n1:streetName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="$node/n1:houseNumber"/>
            <br />
        </xsl:if>

        <xsl:if test="$node/n1:additionalLocator">
            <xsl:value-of select="$node/n1:additionalLocator"/>
            <br />
        </xsl:if>

        <xsl:if test="$node/n1:postalCode or $node/n1:city">
            <xsl:value-of select="$node/n1:postalCode"/>
            <xsl:text> </xsl:text>

            <xsl:choose>
                <xsl:when test="$node/n1:country != 'Österreich' and $node/n1:country != 'A' and $node/n1:country != 'Austria' and $node/n1:country != 'Oesterreich' and $node/n1:country != 'AUT'">
                    <xsl:value-of select="translate($node/n1:city, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$node/n1:city"/>
                </xsl:otherwise>
            </xsl:choose>

            <xsl:if test="$node/n1:state and not($node/n1:state/@nullFlavor='UNK')">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$node/n1:state"/>
            </xsl:if>

            <xsl:if test="$node/n1:country != 'Österreich' and $node/n1:country != 'A' and $node/n1:country != 'Austria' and $node/n1:country != 'Oesterreich' and $node/n1:country != 'AUT' ">
                <br />

                <xsl:variable name="country">
                    <xsl:call-template name="getCountryMapping">
                        <xsl:with-param name="country" select="$node/n1:country"/>
                    </xsl:call-template>
                </xsl:variable>

                <xsl:value-of select="translate($country, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
            </xsl:if>
        </xsl:if>

    </xsl:template>
    <xsl:template name="getTelecomTitle">
        <xsl:param name="node"/>

        <xsl:variable name="type" select="substring-before($node/@value, ':')"/>

        <xsl:choose>
            <xsl:when test="$type='tel' and $node/@use='MC'">
                <xsl:call-template name="mapTelecomCode">
                    <xsl:with-param name="code" select="'MC'"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="mapTelecomCode">
                    <xsl:with-param name="code" select="$type"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getTelecomSubTitle">
        <xsl:param name="node"/>

        <xsl:variable name="type" select="substring-before($node/@value, ':')"/>

        <xsl:if test="not($type='tel' and $node/@use='MC')">
            <xsl:if test="$node/@use">
                <xsl:text> (</xsl:text>
                <xsl:call-template name="mapTelecomCode">
                    <xsl:with-param name="code" select="$node/@use"/>
                </xsl:call-template>
                <xsl:text>)</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getTelecomValue">
        <xsl:param name="node"/>

        <xsl:variable name="type" select="substring-before($node/@value, ':')"/>
        <xsl:variable name="value" select="substring-after($node/@value, ':')"/>

        <xsl:choose>
            <xsl:when test="$type='http'">

                <xsl:variable name="urlTarget">
                    <xsl:call-template name="uriDecode">
                        <xsl:with-param name="uri" select="$node/@value"/>
                    </xsl:call-template>
                </xsl:variable>

                <a href="{$urlTarget}" target="_blank">
                    <xsl:value-of select="$urlTarget"/>
                </a>
            </xsl:when>
            <xsl:when test="$type='mailto'">

                <xsl:variable name="mailTarget">
                    <xsl:call-template name="uriDecode">
                        <xsl:with-param name="uri" select="$value"/>
                    </xsl:call-template>
                </xsl:variable>

                <a href="mailto:{$mailTarget}" target="_blank">
                    <xsl:value-of select="$mailTarget"/>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="replaceDotWithSpace">
                    <xsl:call-template name="replaceDotWithSpace">
                        <xsl:with-param name="code" select="$type"/>
                    </xsl:call-template>
                </xsl:variable>

                <xsl:choose>
                    <xsl:when test="$replaceDotWithSpace='true'">
                        <xsl:variable name="cleanedValue">
                            <xsl:call-template name="string-replace-all">
                                <xsl:with-param name="text" select="$value"/>
                                <xsl:with-param name="replace" select="'.'"/>
                                <xsl:with-param name="by" select="' '"/>
                            </xsl:call-template>
                        </xsl:variable>

                        <xsl:call-template name="uriDecode">
                            <xsl:with-param name="uri" select="$cleanedValue"/>
                        </xsl:call-template>

                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="uriDecode">
                            <xsl:with-param name="uri" select="$value"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getTelecomEntry">
        <xsl:param name="node"/>

        <xsl:variable name="type" select="substring-before($node/@value, ':')"/>

        <xsl:if test="$type!='http' and $type!='mailto'">
            <xsl:call-template name="getTelecomTitle">
                <xsl:with-param name="node" select="$node"/>
            </xsl:call-template>

            <xsl:call-template name="getTelecomSubTitle">
                <xsl:with-param name="node" select="$node"/>
            </xsl:call-template>

            <xsl:text> </xsl:text>
        </xsl:if>

        <xsl:call-template name="getTelecomValue">
            <xsl:with-param name="node" select="$node"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAllTelecomEntries">
        <xsl:param name="node"/>

        <!--
            Ordering:
            1. Tel
            2. Tel (Mobil)
            3. Fax
            4. eMail
            5. www
            6. me
            7. all other entries...
           -->

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'tel:') and (not(@use) or (@use!='MC'))]">
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'tel:') and (not(@use) or (@use!='MC'))])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'tel:') and @use='MC']">
            <xsl:if test="position() = 1 and count($node/n1:telecom[starts-with(@value,'tel:') and (not(@use) or (@use!='MC'))]) > 0">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'tel:') and @use='MC'])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'fax:')]">
            <xsl:if test="position() = 1 and (count($node/n1:telecom[starts-with(@value,'tel:')]) > 0)">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'fax:')])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'mailto:')]">
            <xsl:if test="position() = 1 and (count($node/n1:telecom[starts-with(@value,'tel:') or starts-with(@value,'fax:')]) > 0)">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'mailto:')])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'http:')]">
            <xsl:if test="position() = 1 and (count($node/n1:telecom[starts-with(@value,'tel:') or starts-with(@value,'fax:') or starts-with(@value,'mailto:')]) > 0)">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'http:')])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[starts-with(@value,'me:')]">
            <xsl:if test="position() = 1 and (count($node/n1:telecom[starts-with(@value,'tel:') or starts-with(@value,'fax:') or starts-with(@value,'mailto:') or starts-with(@value,'http:')]) > 0)">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[starts-with(@value,'me:')])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="$node/n1:telecom[not(starts-with(@value,'tel:') or starts-with(@value,'fax:') or starts-with(@value,'mailto:') or starts-with(@value,'http:') or starts-with(@value,'me:'))]">
            <xsl:if test="position() = 1 and (count($node/n1:telecom[starts-with(@value,'tel:') or starts-with(@value,'fax:') or starts-with(@value,'mailto:') or starts-with(@value,'http:') or starts-with(@value,'me:')]) > 0)">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
            <xsl:call-template name="getTelecomEntry">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count($node/n1:telecom[not(starts-with(@value,'tel:') or starts-with(@value,'fax:') or starts-with(@value,'mailto:') or starts-with(@value,'http:') or starts-with(@value,'me:'))])">
                <xsl:call-template name="separatorValue"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="separatorValue">
        <br />
    </xsl:template>

    <xsl:template name="mapTelecomCode">
        <xsl:param name="code"/>
        <xsl:choose>
            <!-- lookup table Telecom URI -->
            <xsl:when test="$code='fax'">
                <xsl:text>Fax</xsl:text>
            </xsl:when>
            <xsl:when test="$code='file'">
                <xsl:text>Datei</xsl:text>
            </xsl:when>
            <xsl:when test="$code='ftp'">
                <xsl:text>FTP</xsl:text>
            </xsl:when>
            <xsl:when test="$code='http'">
                <xsl:text>Web</xsl:text>
            </xsl:when>
            <xsl:when test="$code='mailto'">
                <xsl:text>Email</xsl:text>
            </xsl:when>
            <xsl:when test="$code='me'">
                <xsl:text>ME</xsl:text>
            </xsl:when>
            <xsl:when test="$code='mllp'">
                <xsl:text>MLLP</xsl:text>
            </xsl:when>
            <xsl:when test="$code='modem'">
                <xsl:text>Modem</xsl:text>
            </xsl:when>
            <xsl:when test="$code='nfs'">
                <xsl:text>NFS</xsl:text>
            </xsl:when>
            <xsl:when test="$code='tel'">
                <xsl:text>Tel</xsl:text>
            </xsl:when>
            <xsl:when test="$code='telnet'">
                <xsl:text>Telnet</xsl:text>
            </xsl:when>
            <!-- addr oder telecom use -->
            <xsl:when test="$code='AS'">
                <xsl:text>Anrufbeantworter</xsl:text>
            </xsl:when>
            <xsl:when test="$code='EC'">
                <xsl:text>Im Notfall erreichbar unter</xsl:text>
            </xsl:when>
            <xsl:when test="$code='H'">
                <xsl:text>Wohnort</xsl:text>
            </xsl:when>
            <xsl:when test="$code='HP'">
                <xsl:text>Hauptwohnsitz</xsl:text>
            </xsl:when>
            <xsl:when test="$code='HV'">
                <xsl:text>Ferienwohnort</xsl:text>
            </xsl:when>
            <xsl:when test="$code='MC'">
                <xsl:text>Mobil</xsl:text>
            </xsl:when>
            <xsl:when test="$code='PG'">
                <xsl:text>Pager</xsl:text>
            </xsl:when>
            <xsl:when test="$code='WP'">
                <xsl:text>Geschäftlich</xsl:text>
            </xsl:when>
            <xsl:when test="$code='PUB'">
                <xsl:text>Geschäftlich</xsl:text>
            </xsl:when>
            <xsl:when test="$code='TMP'">
                <xsl:text>Pflegeadresse</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$code"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="replaceDotWithSpace">
        <xsl:param name="code"/>

        <xsl:choose>
            <xsl:when test="$code='tel' or $code='fax'">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template name="uriDecode">
        <xsl:param name="uri"/>

        <xsl:variable name="quot">"</xsl:variable>
        <xsl:variable name="apos">'</xsl:variable>

        <xsl:variable name="decodeP20">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$uri"/>
                <xsl:with-param name="replace" select="'%20'"/>
                <xsl:with-param name="by" select="' '"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP21">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP20"/>
                <xsl:with-param name="replace" select="'%21'"/>
                <xsl:with-param name="by" select="'!'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP22">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP21"/>
                <xsl:with-param name="replace" select="'%22'"/>
                <xsl:with-param name="by" select="$quot"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP23">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP22"/>
                <xsl:with-param name="replace" select="'%23'"/>
                <xsl:with-param name="by" select="'#'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP24">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP23"/>
                <xsl:with-param name="replace" select="'%24'"/>
                <xsl:with-param name="by" select="'$'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP25">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP24"/>
                <xsl:with-param name="replace" select="'%25'"/>
                <xsl:with-param name="by" select="'%'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP26">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP25"/>
                <xsl:with-param name="replace" select="'%26'"/>
                <xsl:with-param name="by" select="'&amp;'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP27">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP26"/>
                <xsl:with-param name="replace" select="'%27'"/>
                <xsl:with-param name="by" select="$apos"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP28">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP27"/>
                <xsl:with-param name="replace" select="'%28'"/>
                <xsl:with-param name="by" select="'('"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP29">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP28"/>
                <xsl:with-param name="replace" select="'%29'"/>
                <xsl:with-param name="by" select="')'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP2A">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP29"/>
                <xsl:with-param name="replace" select="'%2A'"/>
                <xsl:with-param name="by" select="'*'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP2B">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP2A"/>
                <xsl:with-param name="replace" select="'%2B'"/>
                <xsl:with-param name="by" select="'+'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP2C">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP2B"/>
                <xsl:with-param name="replace" select="'%2C'"/>
                <xsl:with-param name="by" select="','"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP2F">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP2C"/>
                <xsl:with-param name="replace" select="'%2F'"/>
                <xsl:with-param name="by" select="'/'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP3A">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP2F"/>
                <xsl:with-param name="replace" select="'%3A'"/>
                <xsl:with-param name="by" select="':'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP3B">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP3A"/>
                <xsl:with-param name="replace" select="'%3B'"/>
                <xsl:with-param name="by" select="';'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP3D">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP3B"/>
                <xsl:with-param name="replace" select="'%3D'"/>
                <xsl:with-param name="by" select="'='"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP3F">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP3D"/>
                <xsl:with-param name="replace" select="'%3F'"/>
                <xsl:with-param name="by" select="'?'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP40">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP3F"/>
                <xsl:with-param name="replace" select="'%40'"/>
                <xsl:with-param name="by" select="'@'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP5B">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP40"/>
                <xsl:with-param name="replace" select="'%5B'"/>
                <xsl:with-param name="by" select="'['"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodeP5D">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP5B"/>
                <xsl:with-param name="replace" select="'%5D'"/>
                <xsl:with-param name="by" select="']'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3P84">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodeP5D"/>
                <xsl:with-param name="replace" select="'%C3%84'"/>
                <xsl:with-param name="by" select="'Ä'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3P96">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3P84"/>
                <xsl:with-param name="replace" select="'%C3%96'"/>
                <xsl:with-param name="by" select="'Ö'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3P9C">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3P96"/>
                <xsl:with-param name="replace" select="'%C3%9C'"/>
                <xsl:with-param name="by" select="'Ü'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3PA4">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3P9C"/>
                <xsl:with-param name="replace" select="'%C3%A4'"/>
                <xsl:with-param name="by" select="'ä'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3PB6">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3PA4"/>
                <xsl:with-param name="replace" select="'%C3%B6'"/>
                <xsl:with-param name="by" select="'ö'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3PBC">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3PB6"/>
                <xsl:with-param name="replace" select="'%C3%BC'"/>
                <xsl:with-param name="by" select="'ü'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC3P9F">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3PBC"/>
                <xsl:with-param name="replace" select="'%C3%9F'"/>
                <xsl:with-param name="by" select="'&#223;'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePC4">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC3P9F"/>
                <xsl:with-param name="replace" select="'%C4'"/>
                <xsl:with-param name="by" select="'Ä'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePD6">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePC4"/>
                <xsl:with-param name="replace" select="'%D6'"/>
                <xsl:with-param name="by" select="'Ö'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePDC">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePD6"/>
                <xsl:with-param name="replace" select="'%DC'"/>
                <xsl:with-param name="by" select="'Ü'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePE4">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePDC"/>
                <xsl:with-param name="replace" select="'%E4'"/>
                <xsl:with-param name="by" select="'ä'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePF6">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePE4"/>
                <xsl:with-param name="replace" select="'%F6'"/>
                <xsl:with-param name="by" select="'ö'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePFC">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePF6"/>
                <xsl:with-param name="replace" select="'%FC'"/>
                <xsl:with-param name="by" select="'ü'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="decodePDF">
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" select="$decodePFC"/>
                <xsl:with-param name="replace" select="'%DF'"/>
                <xsl:with-param name="by" select="'&#223;'"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:value-of select="$decodePDF"/>

    </xsl:template>

    <xsl:template name="string-replace-all">
        <xsl:param name="text"/>
        <xsl:param name="replace"/>
        <xsl:param name="by"/>
        <xsl:choose>
            <xsl:when test="contains($text, $replace)">
                <xsl:value-of select="substring-before($text,$replace)"/>
                <xsl:value-of select="$by"/>
                <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text"
                                    select="substring-after($text,$replace)"/>
                    <xsl:with-param name="replace" select="$replace"/>
                    <xsl:with-param name="by" select="$by"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
<xsl:template name="getName">
    <xsl:param name="node"/>

    <xsl:choose>
        <xsl:when test="$node/n1:family">
            <xsl:if test="$node/n1:prefix">
                <xsl:for-each select="$node/n1:prefix">
                    <xsl:value-of select="."/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
            </xsl:if>
            <xsl:for-each select="$node/n1:given">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:for-each select="$node/n1:family[not(@qualifier)]">
                <xsl:if test="count($node/n1:family[not(@qualifier)]) &gt; 1 and position() &gt; 1">
                    <xsl:text> </xsl:text>
                </xsl:if>
                <xsl:value-of select="."/>
            </xsl:for-each>
            <xsl:if test="$node/n1:suffix">
                <xsl:for-each select="$node/n1:suffix">
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="."/>
                </xsl:for-each>
            </xsl:if>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$node"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
    <xsl:template name="getAuthorTitle">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:assignedAuthor/n1:assignedAuthoringDevice/n1:manufacturerModelName or $node/n1:assignedAuthor/n1:assignedAuthoringDevice/n1:softwareName">
                <xsl:text>Erzeugt mit</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>Dokumentverfasser(in)</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getAuthorTime">
        <xsl:param name="node" />

        <xsl:variable name="authorTimeValid">
            <xsl:call-template name="isDateTimeValid">
                <xsl:with-param name="node" select="$node/n1:time" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$authorTimeValid">
            <xsl:call-template name="getDateTime">
                <xsl:with-param name="node" select="$node/n1:time" />
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <xsl:template name="getAuthorName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedAuthor/n1:assignedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthorTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedAuthor"/>
        </xsl:call-template>

    </xsl:template>

    <xsl:template name="getAuthorOrganizationName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedAuthor/n1:representedOrganization/n1:name"/>
        </xsl:call-template>

    </xsl:template>

    <xsl:template name="getAuthorOrganizationAddress">
        <xsl:param name="node"/>

        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedAuthor/n1:representedOrganization/n1:addr"/>
        </xsl:call-template>

    </xsl:template>

    <xsl:template name="getAuthorOrganizationTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedAuthor/n1:representedOrganization"/>
        </xsl:call-template>

    </xsl:template>

    <xsl:template name="isAuthorOrganizationTelecomAvailable">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:assignedAuthor/n1:representedOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    <xsl:template name="getDataEntererTime">
        <xsl:param name="node"/>

        <xsl:call-template name="getDateTime">
            <xsl:with-param name="node" select="$node/n1:time"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getDataEntererName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:assignedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getDataEntererTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getDataEntererOrganizationName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getDataEntererOrganizationAddress">
        <xsl:param name="node"/>

        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getDataEntererOrganizationTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="isDataEntererOrganizationTelecomAvailable">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:assignedEntity/n1:representedOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
<xsl:template name="getDocumentVersion">
    <!-- version is always mandatory -->
    <xsl:value-of select="//n1:ClinicalDocument/n1:versionNumber/@value"/>
</xsl:template>

<xsl:template name="getELGADokumentklasse">

    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:code/n1:translation/@code">
            <xsl:call-template name="getHL7ATXDSDokumentenklassen">
                <xsl:with-param name="code" select="//n1:ClinicalDocument/n1:code/n1:translation/@code"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:call-template name="getHL7ATXDSDokumentenklassen">
                <xsl:with-param name="code" select="//n1:ClinicalDocument/n1:code/@code"/>
            </xsl:call-template>
        </xsl:otherwise>
    </xsl:choose>

</xsl:template>

<xsl:template name="getDocumentCreatedDateTime">
    <!-- always mandatory -->
    <xsl:call-template name="getDateTime">
        <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:effectiveTime"/>
    </xsl:call-template>
</xsl:template>

<xsl:template name="getDocumentIDRoot">
    <xsl:value-of select="//n1:ClinicalDocument/n1:id/@root"/>
</xsl:template>

<xsl:template name="getDocumentIDExtension">
    <xsl:value-of select="//n1:ClinicalDocument/n1:id/@extension"/>
</xsl:template>

<xsl:template name="getDocumentSetIDRoot">
    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:setId/@root">
            <xsl:value-of select="//n1:ClinicalDocument/n1:setId/@root"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>unbekannt</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getDocumentSetIDExtension">
    <xsl:value-of select="//n1:ClinicalDocument/n1:setId/@extension"/>
</xsl:template>

<xsl:template name="getNameFromOID">

    <xsl:for-each select="/n1:ClinicalDocument/n1:templateId">
        <xsl:choose>
            <xsl:when test="./@root = '1.2.40.0.34.11.1'">Allgemeiner Leitfaden</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.2'">Entlassungsbrief (Ärztlich)</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.3'">Entlassungsbrief (Pflege)</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.4'">Laborbefund</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.5'">Befund Bildgebende Diagnostik</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.8.1'">e-Medikation (Rezept)</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.8.2'">e-Medikation (Abgabe)</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.8.3'">e-Medikation (Medikationsliste)</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.8.4'">e-Medikation (Pharmazeutische Empfehlung)</xsl:when>
        </xsl:choose>
        <xsl:if test="position() &lt; count(//n1:ClinicalDocument/n1:templateId[@root='1.2.40.0.34.11.1' or @root='1.2.40.0.34.11.2' or @root='1.2.40.0.34.11.3' or @root='1.2.40.0.34.11.4' or @root='1.2.40.0.34.11.5' or @root='1.2.40.0.34.11.8.1' or @root='1.2.40.0.34.11.8.2' or @root='1.2.40.0.34.11.8.3'or @root='1.2.40.0.34.11.8.4'])">
            <xsl:text>, </xsl:text>
        </xsl:if>
    </xsl:for-each>

    <xsl:if test="0 = count(//n1:ClinicalDocument/n1:templateId[@root='1.2.40.0.34.11.1' or @root='1.2.40.0.34.11.2' or @root='1.2.40.0.34.11.3' or @root='1.2.40.0.34.11.4' or @root='1.2.40.0.34.11.5' or @root='1.2.40.0.34.11.8.1' or @root='1.2.40.0.34.11.8.2' or @root='1.2.40.0.34.11.8.3'or @root='1.2.40.0.34.11.8.4'])">
        <xsl:text>(keine)</xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template name="getEISFromOID">
    <xsl:for-each select="/n1:ClinicalDocument/n1:setId">
        <xsl:choose>
            <xsl:when test="./@root = '1.2.40.0.34.11.2.0.1'">Basic/Structured</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.2.0.2'">Enhanced</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.2.0.3'">Full support</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.3.0.1'">Basic/Structured</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.3.0.2'">Enhanced</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.3.0.3'">Full support</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.4.0.1'">Basic/Structured</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.4.0.2'">Enhanced</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.4.0.3'">Full support</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.5.0.1'">Basic</xsl:when>
            <xsl:when test="./@root = '1.2.40.0.34.11.5.0.3'">Full support</xsl:when>
        </xsl:choose>
    </xsl:for-each>
    <xsl:if test="0 = count(//n1:ClinicalDocument/n1:setId[@root='1.2.40.0.34.11.2.0.1' or @root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3' or @root='1.2.40.0.34.11.3.0.1' or @root='1.2.40.0.34.11.3.0.2' or @root='1.2.40.0.34.11.3.0.3' or @root='1.2.40.0.34.11.4.0.1' or @root='1.2.40.0.34.11.4.0.2' or @root='1.2.40.0.34.11.4.0.3' or @root='1.2.40.0.34.11.5.0.1' or @root='1.2.40.0.34.11.5.0.3'])">
        <xsl:text>(keine)</xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template name="isEISBasic">
    <xsl:choose>
        <xsl:when test="//n1:templateId[@root='1.2.40.0.34.11.2.0.1'] or //n1:templateId[@root='1.2.40.0.34.11.3.0.1'] or //n1:templateId[@root='1.2.40.0.34.11.4.0.1'] or //n1:templateId[@root='1.2.40.0.34.11.5.0.1']">
            <xsl:value-of select="string(true())"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="string(false())"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="getPatientSex">

    <!--
        Female: @code=F
        Male: @code=M
        Undifferentiated: @code=UN

        Or

        nullFlavor: UNK
    -->
    <xsl:value-of select="translate(//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
</xsl:template>

<xsl:template name="isPatientSexDefined">
    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code">
            <xsl:value-of select="string(true())" />
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="string(false())" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getPatientSexName">
    <xsl:param name="format" select="'long'" />

    <xsl:choose>
        <xsl:when test="$format='long'">
            <xsl:choose>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code">
                    <xsl:variable name="sex">
                        <xsl:call-template name="getPatientSex"/>
                    </xsl:variable>
                    <xsl:choose>
                        <xsl:when test="$sex='M'">
                            <xsl:text>Männlich</xsl:text>
                        </xsl:when>
                        <xsl:when test="$sex='F'">
                            <xsl:text>Weiblich</xsl:text>
                        </xsl:when>
                        <xsl:when test="$sex='UN'">
                            <xsl:text>Divers</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>unbekannt (</xsl:text>
                            <xsl:value-of select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code" />
                            <xsl:text>)</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode[@nullFlavor='NA']">
                    <xsl:text>offen</xsl:text>
                </xsl:when>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode[@nullFlavor='UNK']">
                    <xsl:text>unbekannt</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>unbekannt</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
            <xsl:choose>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code">
                    <xsl:variable name="sex">
                        <xsl:call-template name="getPatientSex"/>
                    </xsl:variable>
                    <xsl:choose>
                        <xsl:when test="$sex='M'">
                            <xsl:text>M</xsl:text>
                        </xsl:when>
                        <xsl:when test="$sex='F'">
                            <xsl:text>W</xsl:text>
                        </xsl:when>
                        <xsl:when test="$sex='UN'">
                            <xsl:text>D</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>unbekannt (</xsl:text>
                            <xsl:value-of select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code" />
                            <xsl:text>)</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode[@nullFlavor='NA']">
                    <!-- note: will not be displayed at the moment in the short format; see isPatientSexDefined -->
                    <xsl:text>offen</xsl:text>
                </xsl:when>
                <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode[@nullFlavor='UNK']">
                    <!-- note: will not be displayed at the moment in the short format; see isPatientSexDefined-->
                    <xsl:text>unbekannt</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>unbekannt</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getPatientOration">

    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:templateId[@root='1.2.40.0.34.6.0.11.0.4']">
            <xsl:text>Person</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="sex">
                <xsl:call-template name="getPatientSex"/>
            </xsl:variable>

            <xsl:choose>
                <xsl:when test="$sex='M'">
                    <xsl:text>Patient</xsl:text>
                </xsl:when>
                <xsl:when test="$sex='F'">
                    <xsl:text>Patientin</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>Patient(in)</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getPatientInsuranceNumber">
    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:id[@root='1.2.40.0.10.1.4.3.1']/@extension">
            <xsl:value-of select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:id[@root='1.2.40.0.10.1.4.3.1']/@extension"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>nicht angegeben</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getPatientName">
    <xsl:call-template name="getName">
        <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name"/>
    </xsl:call-template>
</xsl:template>

<xsl:template name="getPatientSpouseFamilyName">
    <xsl:for-each select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='SP']">
        <xsl:value-of select="."/>
        <xsl:if test="position() &lt; count(//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='SP'])">
            <br />
        </xsl:if>
    </xsl:for-each>
</xsl:template>

<xsl:template name="getPatientNamesBeforeAdoption">
    <xsl:for-each select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='AD']">
        <xsl:value-of select="."/>
        <xsl:if test="position() &lt; count(//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='AD'])">
            <br />
        </xsl:if>
    </xsl:for-each>
</xsl:template>

<xsl:template name="getPatientBirthNames">
    <xsl:for-each select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='BR']">
        <xsl:value-of select="."/>
        <xsl:if test="position() &lt; count(//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='BR'])">
            <br />
        </xsl:if>
    </xsl:for-each>
</xsl:template>

<xsl:template name="getPatientDateOfBirth">
    <xsl:call-template name="getDate">
        <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime"/>
    </xsl:call-template>
</xsl:template>

<xsl:template name="getPatientDateOfBirthShort">
    <xsl:call-template name="getDate">
        <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime"/>
        <xsl:with-param name="short" select="string(true())" />
    </xsl:call-template>
</xsl:template>


<xsl:template name="getPatientInformationTitle">

    <xsl:variable name="sex">
        <xsl:call-template name="getPatientSex"/>
    </xsl:variable>

    <xsl:choose>
        <xsl:when test="$sex='F'">
            <xsl:text>Weitere Informationen zur Patientin</xsl:text>
        </xsl:when>
        <xsl:when test="$sex='M'">
            <xsl:text>Weitere Informationen zum Patienten</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>Weitere Informationen zu Patient(in)</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="getPatientPlaceOfBirth">
    <xsl:call-template name="getAddress">
        <xsl:with-param name="node" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthplace/n1:place/n1:addr"/>
    </xsl:call-template>
</xsl:template>

<xsl:template name="getPatientMaritalStatus">
    <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:maritalStatusCode/@code">
        <xsl:call-template name="getELGAMaritalStatus">
            <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:maritalStatusCode/@code"/>
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template name="getPatientReligiousAffiliation">
    <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:religiousAffiliationCode">
        <xsl:call-template name="getELGAReligiousAffiliation">
            <xsl:with-param name="religiousAffiliation" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:religiousAffiliationCode"/>
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template name="getPatientLanguageCommunication">
    <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:languageCommunication">
        <xsl:call-template name="getLanguageAbility">
            <xsl:with-param name="patient" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient"/>
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template name="isGuardianAvailable">
    <xsl:choose>
        <xsl:when test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian">
            <xsl:value-of select="string(true())"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="string(false())"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
    <xsl:key name="languageCodeGrouping" match="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:languageCommunication" use="n1:languageCode/@code"/>

    <xsl:template name="getLanguageAbility">
        <xsl:param name="patient"/>

        <xsl:if test="not($patient/n1:languageCommunication)">
            <xsl:text>unbekannt</xsl:text>
        </xsl:if>

        <xsl:for-each select="$patient/n1:languageCommunication[generate-id() = generate-id(key('languageCodeGrouping', n1:languageCode/@code))]">

            <xsl:if test="position() > 1">
                <br />
            </xsl:if>

            <xsl:call-template name="getELGAHumanLanguage">
                <xsl:with-param name="code" select="n1:languageCode/@code"/>
            </xsl:call-template>

            <xsl:if test="contains(n1:languageCode/@code, '-')">
                <xsl:text> (</xsl:text>
                <xsl:value-of select="n1:languageCode/@code"/>
                <xsl:text>)</xsl:text>
            </xsl:if>

            <xsl:if test="n1:modeCode/@code or n1:proficiencyLevelCode/@code">

                <xsl:text> (</xsl:text>

                <xsl:call-template name="getLanguageAbilityForLanguage">
                    <xsl:with-param name="code" select="n1:languageCode/@code"/>
                    <xsl:with-param name="patient" select="$patient"/>
                </xsl:call-template>

                <xsl:text>)</xsl:text>

            </xsl:if>

            <xsl:if test="n1:preferenceInd/@value='true'">
                <xsl:text>, bevorzugt</xsl:text>
            </xsl:if>
        </xsl:for-each>

    </xsl:template>

    <xsl:template name="getLanguageAbilityForLanguage">
        <xsl:param name="code"/>
        <xsl:param name="patient"/>

        <xsl:for-each select="$patient/n1:languageCommunication/n1:languageCode[@code=$code]">

            <xsl:if test="../n1:languageCode/@code=$code">

                <xsl:if test="../n1:modeCode/@code">
                    <xsl:call-template name="getELGALanguageAbilityMode">
                        <xsl:with-param name="code" select="../n1:modeCode/@code"/>
                    </xsl:call-template>
                    <xsl:text>: </xsl:text>
                </xsl:if>

                <xsl:if test="../n1:proficiencyLevelCode/@code">
                    <xsl:call-template name="getELGAProficiencyLevelCode">
                        <xsl:with-param name="code" select="../n1:proficiencyLevelCode/@code"/>
                    </xsl:call-template>
                </xsl:if>

                <xsl:if test="position() &lt; count($patient/n1:languageCommunication/n1:languageCode[@code=$code])">
                    <xsl:text>, </xsl:text>
                </xsl:if>

            </xsl:if>
        </xsl:for-each>

    </xsl:template>
    <xsl:template name="getActionCode">
        <xsl:param name="immunizationTargetId" />
        <xsl:variable name="actionCode" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:code[@codeSystem='2.16.840.1.113883.6.96']/@code"/>

        <xsl:value-of select="$actionCode" />
    </xsl:template>

    <xsl:template name="getNextVaccinationRange">
        <xsl:param name="immunizationTargetId" />
        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/@xsi:type='IVL_TS'">

                <xsl:variable name="lowValid">
                    <xsl:call-template name="isDateTimeValid">
                        <xsl:with-param name="node" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/n1:low" />
                    </xsl:call-template>
                </xsl:variable>

                <xsl:variable name="highValid">
                    <xsl:call-template name="isDateTimeValid">
                        <xsl:with-param name="node" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/n1:high" />
                    </xsl:call-template>
                </xsl:variable>

                <xsl:choose>
                    <xsl:when test="$lowValid='true' and $highValid='true'">
                        <xsl:call-template name="printDateDistinct">
                            <xsl:with-param name="fromDateNode" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/n1:low" />
                            <xsl:with-param name="toDateNode" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/n1:high" />
                            <xsl:with-param name="short" select="string(true())" />
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- low is mandatory -->
                        <xsl:call-template name="getDate">
                            <xsl:with-param name="node" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime/n1:low" />
                            <xsl:with-param name="short" select="string(true())" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="timeValid">
                    <xsl:call-template name="isDateTimeValid">
                        <xsl:with-param name="node" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:if test="$timeValid='true'">
                    <xsl:call-template name="getDate">
                        <xsl:with-param name="node" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:effectiveTime" />
                        <xsl:with-param name="short" select="string(true())" />
                    </xsl:call-template>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="isLastEventTypeImmunization">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1' and ../n1:code[@code='IMMUNIZ']]/../../n1:substanceAdministration[@moodCode='EVN']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getLastEventWithTime">
        <xsl:param name="immunizationTargetId" />

        <xsl:variable name="isLastEventTypeImmunization">
            <xsl:call-template name="isLastEventTypeImmunization">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="isLastEventTypeTiter">
            <xsl:call-template name="isLastEventTypeTiter">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="isLastEventTypeDisease">
            <xsl:call-template name="isLastEventTypeDisease">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="$isLastEventTypeImmunization='true'">
                <xsl:call-template name="getLastEventTimeImmunization">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                </xsl:call-template>
                <xsl:text> Impfung</xsl:text>
            </xsl:when>
            <xsl:when test="$isLastEventTypeTiter='true'">
                <xsl:call-template name="getLastEventTimeTiter">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                </xsl:call-template>
                <xsl:text> Titerbestimmung</xsl:text>
            </xsl:when>
            <xsl:when test="$isLastEventTypeDisease='true'">
                <xsl:call-template name="getLastEventTimeDisease">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                </xsl:call-template>
                <xsl:text> Erkrankung</xsl:text>
            </xsl:when>
            <xsl:otherwise />
        </xsl:choose>

    </xsl:template>

    <xsl:template name="getLastEventTimeImmunization">
        <xsl:param name="immunizationTargetId" />

        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1' and ../n1:code[@code='IMMUNIZ']]/../../n1:substanceAdministration[@moodCode='EVN']">
            <xsl:sort select="n1:effectiveTime/@value" order="descending" />
            <xsl:if test="position()=1">
                <xsl:call-template name="getDate">
                    <xsl:with-param name="node" select="n1:effectiveTime"/>
                    <xsl:with-param name="short" select="string(true())" />
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="isLastEventTypeTiter">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.16']/../../../n1:code[@code=$immunizationTargetId and ../n1:templateId[@root='1.2.40.0.34.6.0.11.3.18']]/../../n1:organizer[@classCode='BATTERY']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getLastEventTimeTiter">
        <xsl:param name="immunizationTargetId" />

        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.16']/../../../n1:code[@code=$immunizationTargetId and ../n1:templateId[@root='1.2.40.0.34.6.0.11.3.18']]/../../n1:organizer[@classCode='BATTERY']">
            <xsl:sort select="n1:component/n1:observation[@classCode='OBS' and @moodCode='EVN']/n1:effectiveTime/@value" order="descending" />
            <xsl:if test="position()=1">
                <xsl:call-template name="getDate">
                    <xsl:with-param name="node" select="n1:component/n1:observation[@classCode='OBS' and @moodCode='EVN']/n1:effectiveTime"/>
                    <xsl:with-param name="short" select="string(true())" />
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="isLastEventTypeDisease">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.9']/../n1:value[@code=$immunizationTargetId]">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getLastEventTimeDisease">
        <xsl:param name="immunizationTargetId" />

        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.9']/../n1:value[@code=$immunizationTargetId]">
            <xsl:sort select="../n1:effectiveTime/n1:low/@value" order="descending" />
            <xsl:if test="position()=1">
                <xsl:call-template name="getDate">
                    <xsl:with-param name="node" select="../n1:effectiveTime/n1:low"/>
                    <xsl:with-param name="short" select="string(true())" />
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="getVaccinationCommentByImmunizationTargetId">
        <xsl:param name="immunizationTargetId" />

        <xsl:variable name="commentId" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:entryRelationship/n1:act/n1:templateId[@root='1.2.40.0.34.6.0.11.3.11']/../n1:text/n1:reference/@value"/>

        <xsl:if test="$commentId!=''">
            <xsl:variable name="commentText" select="//*[@ID=substring-after($commentId, '#')]" />
            <xsl:if test="$commentText != ''">
                <xsl:value-of select="$commentText" />
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <xsl:template name="isCodedInRecommendationSection">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="hasNextVaccinationDose">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:precondition/n1:criterion/n1:value/@code">
                    <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                    <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getNextVaccinationDose">
        <xsl:param name="immunizationTargetId" />

        <xsl:call-template name="getImmunizationDose">
            <xsl:with-param name="code" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:precondition/n1:criterion/n1:value/@code"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="hasNextVaccinationScheme">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:precondition/n1:criterion/n1:code/@code">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getNextVaccinationScheme">
        <xsl:param name="immunizationTargetId" />

        <xsl:call-template name="getImmunizationScheme">
            <xsl:with-param name="code" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:precondition/n1:criterion/n1:code/@code"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getNextVaccinationDoseAndScheme">
        <xsl:param name="immunizationTargetId" />

        <xsl:variable name="hasNextVaccinationDose">
            <xsl:call-template name="hasNextVaccinationDose">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="hasNextVaccinationScheme">
            <xsl:call-template name="hasNextVaccinationScheme">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$hasNextVaccinationDose='true'">
            <xsl:call-template name="getNextVaccinationDose">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:if>

        <xsl:if test="$hasNextVaccinationDose='true' and $hasNextVaccinationScheme='true'">
            <xsl:text>, </xsl:text>
        </xsl:if>

        <xsl:if test="$hasNextVaccinationScheme='true'">
            <xsl:call-template name="getNextVaccinationScheme">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getNextImmunizationProductName">
        <xsl:param name="immunizationTargetId" />

        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@codeSystem='1.2.40.0.34.4.16']/@code">
            <xsl:call-template name="getImmunizationProduct">
                <xsl:with-param name="code" select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@codeSystem='1.2.40.0.34.4.16']/@code"/>
            </xsl:call-template>
        </xsl:if>

        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@nullFlavor='OTH']">
            <xsl:value-of select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.3']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@nullFlavor='OTH']/n1:translation/@displayName"/>
        </xsl:if>

    </xsl:template>

    <xsl:template name="hasPreviousVaccinations">
        <xsl:param name="immunizationTargetId" />

        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getVaccinationDateByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:call-template name="getDate">
            <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:effectiveTime"/>
            <xsl:with-param name="short" select="string(true())" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getVaccinationProductLongNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:value-of select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name"/>
    </xsl:template>

    <xsl:template name="getVaccinationProductNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code/@code">
            <xsl:call-template name="getImmunizationProduct">
                <xsl:with-param name="code" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code/@code"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="hasVaccinationDoseForVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:choose>
            <xsl:when test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:precondition/n1:criterion/n1:value/@code">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getVaccinationDoseByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:call-template name="getImmunizationDose">
            <xsl:with-param name="code" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:precondition/n1:criterion/n1:value/@code"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="hasVaccinationSchemeForVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:choose>
            <xsl:when test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:precondition/n1:criterion/n1:code/@code">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getVaccinationSchemeByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:call-template name="getImmunizationScheme">
            <xsl:with-param name="code" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:precondition/n1:criterion/n1:code/@code"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getVaccinationDoseAndScheme">
        <xsl:param name="vaccionationId" />

        <xsl:variable name="hasVaccinationDose">
            <xsl:call-template name="hasVaccinationDoseForVaccinationId">
                <xsl:with-param name="vaccionationId" select="$vaccionationId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="hasVaccinationScheme">
            <xsl:call-template name="hasVaccinationSchemeForVaccinationId">
                <xsl:with-param name="vaccionationId" select="$vaccionationId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$hasVaccinationDose='true'">
            <xsl:call-template name="getVaccinationDoseByVaccinationId">
                <xsl:with-param name="vaccionationId" select="$vaccionationId"/>
            </xsl:call-template>
        </xsl:if>

        <xsl:if test="$hasVaccinationDose='true' and $hasVaccinationScheme='true'">
            <xsl:text>, </xsl:text>
        </xsl:if>

        <xsl:if test="$hasVaccinationScheme='true'">
            <xsl:call-template name="getVaccinationSchemeByVaccinationId">
                <xsl:with-param name="vaccionationId" select="$vaccionationId"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getVaccinationArzneimittelSpezialitaetByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:call-template name="getImmunizationProduct">
            <xsl:with-param name="code" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@codeSystem='1.2.40.0.34.4.16']/@code"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getVaccinationManufacturerByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturerOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getVaccinationPZNByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:value-of select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code[@codeSystem='1.2.40.0.34.4.16']/@code" />
    </xsl:template>

    <xsl:template name="getVaccinationLotNumberByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:value-of select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:lotNumberText/text()" />
    </xsl:template>

    <xsl:template name="getVaccinationPharmCodeByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:value-of select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:code/@code" />
    </xsl:template>

    <xsl:template name="getVaccinationPharmNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:value-of select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:name" />
    </xsl:template>

    <xsl:template name="getVaccinationCommentByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:variable name="commentId" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:act/n1:templateId[@root='1.2.40.0.34.6.0.11.3.11']/../n1:text/n1:reference/@value"/>

        <xsl:if test="$commentId!=''">
            <xsl:variable name="commentText" select="//*[@ID=substring-after($commentId, '#')]" />
            <xsl:if test="$commentText != ''">
                <xsl:value-of select="$commentText" />
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getVaccinationPerformedPlaceByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:performer/n1:assignedEntity/n1:representedOrganization/n1:addr[@use='PHYS']">
            <xsl:call-template name="getAddress">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:performer/n1:assignedEntity/n1:representedOrganization/n1:addr[@use='PHYS']"/>
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <xsl:template name="isVaccinationAuthorNameAvailable">
        <xsl:param name="vaccionationId" />

        <xsl:choose>
            <xsl:when test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedEntity/n1:assignedPerson/n1:name">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getVaccinationAuthorNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:assignedPerson/n1:name">
            <xsl:call-template name="getName">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:assignedPerson/n1:name"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getVaccinationAuthorOrganizationNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization/n1:name">
            <xsl:call-template name="getName">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization/n1:name"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getVaccinationAuthorOrganizationAddressByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization/n1:addr">
            <xsl:call-template name="getAddress">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization/n1:addr"/>
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <xsl:template name="getVaccinationAuthorOrganizationTelecomByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization/n1:telecom">
            <xsl:call-template name="getAllTelecomEntries">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:assignedAuthor/n1:representedOrganization"/>
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <xsl:template name="getVaccinationReleaseTimeByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:variable name="releaseTimeValid">
            <xsl:call-template name="isDateTimeValid">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:time" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$releaseTimeValid='true'">
            <xsl:call-template name="getDateTime">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:author/n1:time" />
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <xsl:template name="getVaccinationMapperNameByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:if test="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:participant[@typeCode='ENT']/n1:participantRole/n1:playingEntity/n1:name">
            <xsl:call-template name="getName">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:participant[@typeCode='ENT']/n1:participantRole/n1:playingEntity/n1:name"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getVaccinationMapperTimeByVaccinationId">
        <xsl:param name="vaccionationId" />

        <xsl:variable name="mapperTimeValid">
            <xsl:call-template name="isDateTimeValid">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:participant[@typeCode='ENT']/n1:time" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$mapperTimeValid='true'">
            <xsl:call-template name="getDateTime">
                <xsl:with-param name="node" select="//n1:id[@extension=$vaccionationId]/../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:participant[@typeCode='ENT']/n1:time" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="getInfoButtonLink">
        <xsl:param name="immunizationTargetId" />
        <xsl:value-of select="concat($infoButtonBaseURL, $immunizationTargetId)" />
    </xsl:template>

    <xsl:template name="isUpdateDocument">
        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.0.2']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="isPrimaryInformationRecipientDataValidForLetterHead">

        <xsl:variable name="recipientName">
            <xsl:call-template name="getPrimaryInformationRecipientName"/>
        </xsl:variable>
        <xsl:variable name="organizationName">
            <xsl:call-template name="getPrimaryInformationRecipientOrganizationName"/>
        </xsl:variable>
        <xsl:variable name="organizationAddress">
            <xsl:call-template name="getPrimaryInformationRecipientOrganizationAddress"/>
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="$recipientName != '' and $organizationName != '' and $organizationAddress != ''">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template name="getPrimaryInformationRecipientName">
        <!-- Primary Recipient is defined by @typeCode=PRCP or the one without a typeCode -->
        <xsl:choose>
            <xsl:when test="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:informationRecipient/n1:name">
                <xsl:call-template name="getName">
                    <xsl:with-param name="node" select="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:informationRecipient/n1:name"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:informationRecipient/n1:name">
                <xsl:call-template name="getName">
                    <xsl:with-param name="node" select="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:informationRecipient/n1:name"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- do nothing; no valid recipient name available -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getPrimaryInformationRecipientOrganizationName">
        <!-- Primary Recipient is defined by @typeCode=PRCP or the one without a typeCode -->
        <xsl:choose>
            <xsl:when test="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:receivedOrganization/n1:name">
                <xsl:call-template name="getName">
                    <xsl:with-param name="node" select="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:receivedOrganization/n1:name"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:receivedOrganization/n1:name">
                <xsl:call-template name="getName">
                    <xsl:with-param name="node" select="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:receivedOrganization/n1:name"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- do nothing; no valid recipient organization name available -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getPrimaryInformationRecipientOrganizationAddress">
        <!-- Primary Recipient is defined by @typeCode=PRCP or the one without a typeCode -->
        <xsl:choose>
            <xsl:when test="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:receivedOrganization/n1:addr">
                <xsl:call-template name="getAddress">
                    <xsl:with-param name="node" select="//n1:informationRecipient[@typeCode='PRCP']/n1:intendedRecipient/n1:receivedOrganization/n1:addr"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:receivedOrganization/n1:addr">
                <xsl:call-template name="getAddress">
                    <xsl:with-param name="node" select="//n1:informationRecipient[not(@typeCode)]/n1:intendedRecipient/n1:receivedOrganization/n1:addr"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- do nothing; no valid recipient organization address available -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getInformationRecipientTitle">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="not($node/@typeCode) or $node/@typeCode='PRCP'">
                <xsl:text>Empfänger</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>Kopie an</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getInformationRecipientName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:intendedRecipient/n1:informationRecipient/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getInformationRecipientTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:intendedRecipient"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getInformationRecipientOrganizationName">
        <xsl:param name="node"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:intendedRecipient/n1:receivedOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getInformationRecipientOrganizationAddress">
        <xsl:param name="node"/>

        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:intendedRecipient/n1:receivedOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getInformationRecipientOrganizationTelecom">
        <xsl:param name="node"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:intendedRecipient/n1:receivedOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="isInformationRecipientOrganizationTelecomAvailable">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:intendedRecipient/n1:receivedOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="isCallbackAvailable">
        <xsl:choose>
            <xsl:when test="//n1:ClinicalDocument/n1:participant[@typeCode='CALLBCK']">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getCallbackName">
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:participant[@typeCode='CALLBCK']/n1:associatedEntity/n1:associatedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getCallbackPhone">
        <xsl:call-template name="getTelecomEntry">
            <xsl:with-param name="node" select="//n1:ClinicalDocument/n1:participant[@typeCode='CALLBCK']/n1:associatedEntity/n1:telecom"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantTitle">
        <xsl:param name="node"/>

        <xsl:variable name="typecode" select="$node/@typeCode"/>
        <xsl:variable name="functioncode" select="$node/n1:functionCode/@code"/>
        <xsl:variable name="classcode" select="$node/n1:associatedEntity/@classCode"/>
        <xsl:variable name="code" select="$node/n1:associatedEntity/n1:code/@code"/>

        <xsl:choose>
            <xsl:when test="$typecode = 'RCT'">
                <xsl:call-template name="getPatientOration"/>
            </xsl:when>
            <xsl:when test="$typecode = 'AUT'">
                <xsl:text>Verfasser des Dokuments</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'ENT'">
                <xsl:text>Schreibkraft</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'CST'">
                <xsl:text>Originaldokument ist verfügbar bei</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'INF'">
                <xsl:text>Auskunftsperson zum Patienten</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'PRCP'">
                <xsl:text>Empfänger</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'TRC'">
                <xsl:text>Kopie an</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'LA'">
                <xsl:text>Unterzeichner(in)</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'AUTHEN'">
                <xsl:text>Weitere Unterzeichner</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'REF' and $functioncode='ADMPHYS'">
                <xsl:text>Einweisende(r)/Zuweisende(r) Arzt/Ärztin</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'REF'">
                <xsl:text>Zuweiser(in)</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'IND'">
                <xsl:choose>
                    <xsl:when test="$functioncode = 'PCP'">
                        <xsl:text>Hausarzt/Hausärztin</xsl:text>
                    </xsl:when>
                    <xsl:when test="$classcode = 'ECON'">
                        <xsl:text>Notfall-Kontakt</xsl:text>
                    </xsl:when>
                    <xsl:when test="$classcode = 'CAREGIVER'">
                        <xsl:text>Betreuende Organisation</xsl:text>
                    </xsl:when>
                    <xsl:when test="$classcode= 'PRS'">
                        <xsl:text>Angehörige(r)</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>Weitere Beteiligte</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$typecode = 'HLD' and $classcode = 'POLHOLD' and ($code = 'SELF' or $code = 'FAMDEP')">
                <xsl:text>Versicherungsinhaber(in) und Versicherungsgesellschaft</xsl:text>
            </xsl:when>
            <xsl:when test="$typecode = 'CON' and $classcode = 'PROV'">
                <xsl:text>Weitere Behandler</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>-</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getParticipantName">
        <xsl:param name="participant"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity/n1:associatedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantAddress">
        <xsl:param name="participant"/>

        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantTelecom">
        <xsl:param name="participant"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantOrganizationName">
        <xsl:param name="participant"/>

        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity/n1:scopingOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantOrganizationAddress">
        <xsl:param name="participant"/>

        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity/n1:scopingOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getParticipantOrganizationTelecom">
        <xsl:param name="participant"/>

        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$participant/n1:associatedEntity/n1:scopingOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="isParticipantOrganizationTelecomAvailable">
        <xsl:param name="participant"/>

        <xsl:choose>
            <xsl:when test="$participant/n1:associatedEntity/n1:scopingOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="hasLegalAuthenticator">
        <!--
        Für „multidisziplinäre Befunde“ KANN die Angabe des legalAuthenticator entfallen,
        wenn mindestens zwei authenticator-Elemente vorhanden sind.
        -->
        <xsl:choose>
            <xsl:when test="//n1:ClinicalDocument/n1:legalAuthenticator">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorName">
        <xsl:param name="node"/>
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:assignedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorDate">
        <xsl:param name="node"/>
        <xsl:call-template name="getDate">
            <xsl:with-param name="node" select="$node/n1:time"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorAddress">
        <xsl:param name="node"/>
        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorContact">
        <xsl:param name="node"/>
        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorOrganizationName">
        <xsl:param name="node"/>
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorOrganizationAddress">
        <xsl:param name="node"/>
        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getLegalAuthenticatorOrganizationContactAvailable">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:assignedEntity/n1:representedOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template name="getLegalAuthenticatorOrganizationContact">
        <xsl:param name="node"/>
        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="hasAuthenticator">
        <xsl:choose>
            <xsl:when test="//n1:ClinicalDocument/n1:authenticator">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getAuthenticatorName">
        <xsl:param name="node"/>
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:assignedPerson/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorDate">
        <xsl:param name="node"/>
        <xsl:call-template name="getDate">
            <xsl:with-param name="node" select="$node/n1:time"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorAddress">
        <xsl:param name="node"/>
        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorContact">
        <xsl:param name="node"/>
        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorOrganizationName">
        <xsl:param name="node"/>
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorOrganizationAddress">
        <xsl:param name="node"/>
        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorOrganizationContact">
        <xsl:param name="node"/>
        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="$node/n1:assignedEntity/n1:representedOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getAuthenticatorOrganizationContactAvailable">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:assignedEntity/n1:representedOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template name="printParticipantRelationship">
        <xsl:param name="participant"/>

        <xsl:variable name="classCode" select="$participant/n1:associatedEntity/@classCode"/>

        <xsl:choose>
            <xsl:when test="($classCode='PRS' or $classCode='ECON') and $participant/n1:associatedEntity/n1:code">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getParticipantRelationship">
        <xsl:param name="participant"/>

        <xsl:call-template name="getELGAPersonalRelationship">
            <xsl:with-param name="participant" select="$participant"/>
        </xsl:call-template>

    </xsl:template>
    <xsl:template name="getCustodianName">
        <xsl:call-template name="getName">
            <xsl:with-param name="node" select="//n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:name"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="getCustodianTelecom">
        <xsl:call-template name="getAllTelecomEntries">
            <xsl:with-param name="node" select="//n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="isCustodianTelecomAvailable">
        <xsl:choose>
            <xsl:when test="//n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:telecom">
                <xsl:value-of select="string(true())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getCustodianAddress">
        <xsl:call-template name="getAddress">
            <xsl:with-param name="node" select="//n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:addr"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="getServiceEvents">
        <xsl:for-each select="//n1:documentationOf/n1:serviceEvent/n1:code">
            <xsl:call-template name="getServiceEvent">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count(//n1:documentationOf/n1:serviceEvent/n1:code)">
                <br />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="getServiceEvent">
        <xsl:param name="node"/>
        <xsl:choose>
            <xsl:when test="$node/@displayName='Microbiology studies (set)'">
                <xsl:text>Mikrobiologie</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$node/@displayName"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getServiceEventTimes">
        <xsl:for-each select="//n1:documentationOf/n1:serviceEvent/n1:effectiveTime">
            <xsl:call-template name="getServiceEventTime">
                <xsl:with-param name="node" select="."/>
            </xsl:call-template>
            <xsl:if test="position() &lt; count(//n1:documentationOf/n1:serviceEvent/n1:effectiveTime)">
                <br />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="getServiceEventTime">
        <xsl:param name="node"/>

        <xsl:choose>
            <xsl:when test="$node/n1:low/@value != '' and $node/n1:high/@value != ''">
                <xsl:text>Leistungszeitraum von </xsl:text>
                <xsl:call-template name="getDateTime">
                    <xsl:with-param name="node" select="$node//n1:low"/>
                </xsl:call-template>
                <xsl:text> bis </xsl:text>
                <xsl:call-template name="getDateTime">
                    <xsl:with-param name="node" select="$node//n1:high"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$node/n1:low/@value != ''">
                <xsl:text>Beginn der Leistung: </xsl:text>
                <xsl:call-template name="getDateTime">
                    <xsl:with-param name="node" select="$node//n1:low"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$node/n1:high/@value != ''">
                <xsl:text>Ende der Leistung: </xsl:text>
                <xsl:call-template name="getDateTime">
                    <xsl:with-param name="node" select="$node//n1:high"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>Leistungszeitraum nicht angegeben</xsl:text>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    <!-- Attachment Document Types -->
    <xsl:variable name="vaccinationGreenFilledSmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationGreenEmptySmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationYellowFilledSmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationYellowEmptySmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationBlueFilledSmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationRedFilledSmall">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <!-- vaccination status icons -->
    <xsl:variable name="vaccinationGreenFilledLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationGreenEmptyLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationYellowFilledLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationYellowEmptyLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationBlueFilledLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>

    <xsl:variable name="vaccinationRedFilledLarge">
        <xsl:text>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</xsl:text>
    </xsl:variable>
<xsl:template name="header">
    <div class="container logoContainer">
        <div class="row">
            <div class="media col-sm-12 col-md-5">
                <span class="media-left">
                    <img alt=""  width="60px" src="data:image/png;base64,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" />
                </span>
                <div class="media-body" style="margin-left: 1em">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="textXLarge marginBottom"><strong>Elektronischer Impfpass</strong></h1>
                        </div>
                        <div class="col-12 d-none d-md-block">
                            <h4 class="textSmall">
                                <xsl:text>Erzeugt am </xsl:text>
                                <xsl:call-template name="getDocumentCreatedDateTime"/>
                                <xsl:text> | Version: </xsl:text>
                                <xsl:call-template name="getDocumentVersion"/>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7 d-none d-md-block">
                <xsl:call-template name="renderKeySets" />
            </div>
        </div>
    </div>
</xsl:template>
<xsl:template name="patientHeaderBox">
    <div id="patientBox" class="panel-group patientPanel d-none d-md-block">
        <div class="panel panel-default patientBox">
            <div class="panel-heading">
                <div class="panel-title">
                    <div class="container patientContainer">
                        <div class="row">
                            <div class="col-2 my-auto my-center">
                                <h2 class="textLarge">
                                    <xsl:call-template name="getPatientOration"/>
                                    <xsl:text>:</xsl:text>
                                </h2>
                            </div>
                            <div class="col-6 col-lg-7 my-auto my-center">
                                <h2 class="textLarge" style="text-align: center">
                                    <strong><xsl:call-template name="getPatientName"/></strong>

                                    <xsl:variable name="patientSexDefined">
                                        <xsl:call-template name="isPatientSexDefined" />
                                    </xsl:variable>

                                    <xsl:if test="$patientSexDefined='true'">
                                        <span style="text-transform: uppercase">
                                            <xsl:text> (</xsl:text>
                                            <xsl:call-template name="getPatientSexName">
                                                <xsl:with-param name="format" select="'short'" />
                                            </xsl:call-template>
                                            <xsl:text>) </xsl:text>
                                        </span>
                                    </xsl:if>
                                </h2>
                            </div>
                            <div class="col-3 col-lg-2 my-auto my-center">
                                <h2 class="textLarge" style="text-align: right">
                                    <xsl:text>geb. </xsl:text>
                                    <xsl:call-template name="getPatientDateOfBirthShort"/>
                                </h2>
                            </div>
                            <div class="col-1 my-auto my-center">
                                <button class="btn accordion-toggle collapsed accordionButton" id="patientBoxToggle" data-toggle="collapse"  data-target="#patientCollapse" data-parent="#patientBox" aria-expanded="false"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="patientCollapse" class="panel-collapse collapse" data-parent="#patientBox">
            <div class="panel-body">
                <div class="container patientDetailsContainer">
                    <div class="row">
                        <div class="col-6">
                            <xsl:call-template name="renderPatientHeaderDetailLine">
                                <xsl:with-param name="left" select="'Geschlecht:'" />
                                <xsl:with-param name="leftTestId" select="'patient-sex'" />
                                <xsl:with-param name="right">
                                    <xsl:call-template name="getPatientSexName" />
                                </xsl:with-param>
                            </xsl:call-template>

                            <xsl:variable name="spouseFamilyName">
                                <xsl:call-template name="getPatientSpouseFamilyName"/>
                            </xsl:variable>
                            <xsl:if test="$spouseFamilyName!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Familienname des Ehepartners'" />
                                    <xsl:with-param name="right" select="$spouseFamilyName"/>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:variable name="namesBeforeAdoption">
                                <xsl:call-template name="getPatientNamesBeforeAdoption"/>
                            </xsl:variable>
                            <xsl:if test="$namesBeforeAdoption!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Name vor Adoption'" />
                                    <xsl:with-param name="right" select="$namesBeforeAdoption"/>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:variable name="birthNames">
                                <xsl:call-template name="getPatientBirthNames"/>
                            </xsl:variable>
                            <xsl:if test="$birthNames!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Geburtsname'" />
                                    <xsl:with-param name="right" select="$birthNames"/>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:call-template name="renderPatientHeaderDetailLine">
                                <xsl:with-param name="left" select="'Geburtsdatum'" />
                                <xsl:with-param name="right">
                                    <xsl:call-template name="getPatientDateOfBirth"/>
                                </xsl:with-param>
                            </xsl:call-template>

                            <xsl:variable name="placeOfBirth">
                                <xsl:call-template name="getPatientPlaceOfBirth"/>
                            </xsl:variable>
                            <xsl:if test="$placeOfBirth!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Geburtsort'" />
                                    <xsl:with-param name="right">
                                        <xsl:value-of select="$placeOfBirth"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:call-template name="patientSpacer" />

                            <xsl:call-template name="renderPatientHeaderDetailLine">
                                <xsl:with-param name="left" select="'Sv-Nr'" />
                                <xsl:with-param name="right">
                                    <xsl:call-template name="getPatientInsuranceNumber"/>
                                </xsl:with-param>
                            </xsl:call-template>

                            <xsl:variable name="maritalStatus">
                                <xsl:call-template name="getPatientMaritalStatus"/>
                            </xsl:variable>
                            <xsl:if test="$maritalStatus!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Familienstand'" />
                                    <xsl:with-param name="right">
                                        <xsl:value-of select="$maritalStatus"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:variable name="religiousAffiliation">
                                <xsl:call-template name="getPatientReligiousAffiliation"/>
                            </xsl:variable>
                            <xsl:if test="$religiousAffiliation!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Religionsgemeinschaft'" />
                                    <xsl:with-param name="right">
                                        <xsl:value-of select="$religiousAffiliation"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:variable name="communication">
                                <xsl:call-template name="getPatientLanguageCommunication"/>
                            </xsl:variable>
                            <xsl:if test="$communication!=''">
                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Gesprochene Sprachen'" />
                                    <xsl:with-param name="right">
                                        <xsl:call-template name="getPatientLanguageCommunication"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:if>

                            <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:telecom">

                                <xsl:call-template name="patientSpacer"/>

                                <xsl:for-each select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:telecom">
                                    <xsl:call-template name="renderPatientHeaderDetailLine">
                                        <xsl:with-param name="left">
                                            <xsl:call-template name="getTelecomTitle">
                                                <xsl:with-param name="node" select="."/>
                                            </xsl:call-template>
                                            <xsl:text> </xsl:text>
                                            <xsl:call-template name="getTelecomSubTitle">
                                                <xsl:with-param name="node" select="."/>
                                            </xsl:call-template>
                                        </xsl:with-param>
                                        <xsl:with-param name="right">
                                            <xsl:call-template name="getTelecomValue">
                                                <xsl:with-param name="node" select="."/>
                                            </xsl:call-template>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </xsl:if>
                        </div>
                        <div class="col-6">

                            <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:addr">
                                <xsl:for-each select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:addr">

                                    <xsl:if test="position() > 1">
                                        <xsl:call-template name="patientSpacer" />
                                    </xsl:if>

                                    <xsl:call-template name="renderPatientHeaderDetailLine">
                                        <xsl:with-param name="left">
                                            <xsl:call-template name="mapTelecomCode">
                                                <xsl:with-param name="code" select="@use"/>
                                            </xsl:call-template>
                                        </xsl:with-param>
                                        <xsl:with-param name="right">
                                            <xsl:call-template name="getAddress">
                                                <xsl:with-param name="node" select="."/>
                                            </xsl:call-template>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </xsl:if>


                            <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian">

                                <xsl:call-template name="patientSpacer"/>

                                <xsl:call-template name="renderPatientHeaderDetailLine">
                                    <xsl:with-param name="left" select="'Gesetzlicher Vertreter: Erwachsenenvertreter, Vormund, Obsorgeberechtigter'" />
                                    <xsl:with-param name="right">
                                        <xsl:for-each select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian">

                                            <xsl:if test="position() > 1">
                                                <xsl:call-template name="patientSpacer"/>
                                            </xsl:if>

                                            <xsl:if test="./n1:guardianPerson/n1:name">
                                                <strong>
                                                    <xsl:call-template name="getName">
                                                        <xsl:with-param name="node" select="./n1:guardianPerson/n1:name"/>
                                                    </xsl:call-template>
                                                    <br />
                                                </strong>
                                            </xsl:if>

                                            <xsl:if test="./n1:guardianOrganization/n1:name">
                                                <strong>
                                                    <xsl:call-template name="getName">
                                                        <xsl:with-param name="node" select="./n1:guardianOrganization/n1:name"/>
                                                    </xsl:call-template>
                                                    <br />
                                                </strong>
                                            </xsl:if>

                                            <xsl:call-template name="getAddress">
                                                <xsl:with-param name="node" select="./n1:addr"/>
                                            </xsl:call-template>
                                            <br />

                                            <xsl:if test="./n1:telecom">
                                                <xsl:call-template name="getAllTelecomEntries">
                                                    <xsl:with-param name="node" select="."/>
                                                </xsl:call-template>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:with-param>
                                </xsl:call-template>

                            </xsl:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderPatientHeaderDetailLine">
    <xsl:param name="left" />
    <xsl:param name="leftTestId" select="''" />
    <xsl:param name="right" />

    <div class="row">
        <div class="col-4 text-break" data-test-id="{$leftTestId}">
            <strong>
                <xsl:copy-of select="$left" />
            </strong>
        </div>
        <div class="col-8">
            <xsl:copy-of select="$right" />
        </div>
    </div>
</xsl:template>

<xsl:template name="patientSpacer">
    <div class="row" style="margin-top: 1em" />
</xsl:template>

<xsl:template name="bannerBox">
    <div class="row">
        <div class="col">
            <div class="banner">
                <xsl:copy-of select="$bannerText" />
            </div>
        </div>
    </div>
</xsl:template>
<xsl:template name="renderSectionHeader">
    <xsl:param name="header" />
    <xsl:param name="section" />

    <div id="{$section}SectionTitleContainer" class="container sectionHeaderContainer">
        <div class="row">
            <h2 class="col-12 col-md-7 textLarge my-auto my-center">
                <xsl:value-of select="$header" />
            </h2>
            <div class="d-none d-md-block col-md-5 my-auto my-center">
                <xsl:if test="$section='general'">
                    <button type="submit" id="{$section}SearchControl" class="btn search-btn float-right" />
                    <div id="{$section}SearchBox" class="form-inline float-right searchBox">
                        <input id="{$section}SearchInput" class="form-control form-control input-block-level searchField" type="text" placeholder="Suche nach Impfung, Impfstoff" aria-label="Suche" />
                    </div>
                </xsl:if>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderHeader">
    <xsl:param name="section" />
    <div id="{$section}TitleContainer" class="container tableHeaderContainer">
        <div class="row sectionRowHeight textNormal">
            <div class="col-5 col-md-3 tableHeaderCol" style="padding: 0 0 0 15px;">
                <div class="justify-content-between">
                    <div class="btn-group btn-block">
                        <button type="button" class="btn btn-block dropdown-toggle dropdown-btn sectionRowHeight" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Impfungen
                        </button>
                        <div class="dropdown-menu" id="{$section}DropDown">
                            <a class="dropdown-item {$section}-dropdown-item textSmall" data-filter-target="show-all">Alle</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2 col-md-1 tableHeaderCol sectionRowHeight">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center" style="text-align: center;">Aktion</div>
                </div>
            </div>
            <div class="col-5 col-md-2 tableHeaderCol align-self-center">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center">Vorgeschlagener Impfzeitraum</div>
                </div>
            </div>
            <div class="d-none d-md-block col-md-3 tableHeaderCol align-self-center">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center">Handlungsvorschlag</div>
                </div>
            </div>
            <div class="d-none d-md-block col-md-3 tableHeaderCol align-self-center">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center">Letztes Ereignis</div>
                </div>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderImmunizationEntries">
    <xsl:param name="section" />

    <!--
    Render immunization entries for the given section in this order:
    424272000 Rot (Impfzeitraum über max. Schwellwert überschritten)
    789540001 Rot (Impfzeitraum überschritten)789540001
    789539003 Gelb (frühester Impftermin ≤ 3 Monate in der Zukunft)
    171279008 Gelb (Impftermin fällig)
    122541000119104 Gelb (Erster Impftermin zukünftig empfohlen)
    723620004 Blau (keine Daten vorhanden - abklären)
    171288004 Blau
    171258008 Grün noch was zu tun (frühester Impftermin > 3 Monate in der Zukunft)
    191441008 Grün nichts mehr zu tun (lebenslanger Impfschutz)
    191441008 Grün
    -->
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'424272000'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'789540001'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'789539003'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'171279008'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'122541000119104'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'723620004'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'171288004'" />
    </xsl:call-template>

    <xsl:choose>
        <xsl:when test="$section='general'">
            <xsl:call-template name="renderELGAImmunizationTargetEmpfohleneImpfungen" />
        </xsl:when>
        <xsl:when test="$section='travel'">
            <xsl:call-template name="renderELGAImmunizationTargetReiseimpfungen" />
        </xsl:when>
        <xsl:otherwise>
            <xsl:call-template name="renderELGAImmunizationTargetAndereImpfungen" />
        </xsl:otherwise>
    </xsl:choose>

    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'171258008'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'191441008'" />
    </xsl:call-template>
    <xsl:call-template name="renderImmunizationEntriesByImmunizationDue">
        <xsl:with-param name="section" select="$section" />
        <xsl:with-param name="code" select="'191441008'" />
    </xsl:call-template>
</xsl:template>

<xsl:template name="renderImmunizationEntriesByImmunizationDue">
    <xsl:param name="section" />
    <xsl:param name="code" />

    <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.3' or @root='1.2.40.0.34.6.0.11.3.1']/../n1:code[@code=$code]/..">
        <xsl:sort select="./n1:effectiveTime/n1:low/@value" />

        <xsl:variable name="immunizationTargetId" select="./n1:entryRelationship/n1:observation/n1:code/@code" />

        <xsl:variable name="isGeneralVaccination">
            <xsl:call-template name="isGeneralVaccination">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="isTravelVaccination">
            <xsl:call-template name="isTravelVaccination">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="$section='general' and $isGeneralVaccination='true'">
            <xsl:call-template name="renderVaccinationSectionEntry">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                <xsl:with-param name="overrideRecommendationSection" select="string(true())" />
                <xsl:with-param name="section" select="$section" />
            </xsl:call-template>
        </xsl:if>

        <xsl:if test="$section='travel' and $isTravelVaccination='true'">
            <xsl:call-template name="renderVaccinationSectionEntry">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                <xsl:with-param name="overrideRecommendationSection" select="string(true())" />
                <xsl:with-param name="section" select="$section" />
            </xsl:call-template>
        </xsl:if>

        <xsl:if test="$section='other' and $isGeneralVaccination='false' and $isTravelVaccination='false'">
            <xsl:call-template name="renderVaccinationSectionEntry">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                <xsl:with-param name="overrideRecommendationSection" select="string(true())" />
                <xsl:with-param name="section" select="$section" />
            </xsl:call-template>
        </xsl:if>

    </xsl:for-each>

</xsl:template>

<xsl:template name="renderVaccinationSectionEntry">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="showGroupEntry" select="string(false())"/>
    <xsl:param name="overrideRecommendationSection" select="string(false())" />
    <xsl:param name="section" />

    <xsl:variable name="isPartOfGruppenImpfung">
        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:entryRelationship">
            <xsl:call-template name="isGruppenImmunization">
                <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:variable>

    <!-- all vaccinations of the gruppen impfung are part of the current section -->
    <xsl:variable name="isGruppenImpfungFullSectionMatch">
        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:entryRelationship">
            <xsl:variable name="isGroupVaccination">
                <xsl:call-template name="isGruppenImmunization">
                    <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
                </xsl:call-template>
            </xsl:variable>

            <!-- only check on the child vaccination entries -->
            <xsl:if test="$isGroupVaccination='false'">

                <xsl:variable name="isGeneralVaccination">
                    <xsl:call-template name="isGeneralVaccination">
                        <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:variable name="isTravelVaccination">
                    <xsl:call-template name="isTravelVaccination">
                        <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:variable name="isOtherVaccinationX">
                    <xsl:call-template name="isOtherVaccination">
                        <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
                    </xsl:call-template>
                </xsl:variable>

                <xsl:choose>
                    <xsl:when test="$section='general' and ($isOtherVaccinationX='true' or $isTravelVaccination='true')">
                        <xsl:value-of select="string(false())" />
                        <xsl:text>;</xsl:text>
                    </xsl:when>
                    <xsl:when test="$section='travel' and ($isGeneralVaccination='true' or $isOtherVaccinationX='true')">
                        <xsl:value-of select="string(false())" />
                        <xsl:text>;</xsl:text>
                    </xsl:when>
                    <xsl:when test="$section='other' and ($isGeneralVaccination='true' or $isTravelVaccination='true')">
                        <xsl:value-of select="string(false())" />
                        <xsl:text>;</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:variable>

    <xsl:variable name="forceSplitUp">
        <xsl:variable name="isGroupVaccination">
            <xsl:call-template name="isGruppenImmunization">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
            </xsl:call-template>
        </xsl:variable>

        <!--
            The gruppen impfung will only be displayed as a "gruppen impfung section", when every vaccination of the gruppen impfung
            was not given extra another time.
        -->
        <xsl:if test="$isGroupVaccination='true'">
            <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:entryRelationship/n1:observation">
                <xsl:variable name="immunizationTargetIdOfGroupMember" select="./n1:code/@code" />
                <xsl:if test="count(//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetIdOfGroupMember]) &gt; 1">
                    <xsl:value-of select="string(true())" />
                    <xsl:text>;</xsl:text>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>

        <xsl:if test="$isGroupVaccination='false' and contains($isPartOfGruppenImpfung, 'true') and contains($isGruppenImpfungFullSectionMatch, 'false')">
            <!--
                some vaccinations of the gruppen impfung must be displayed in another section as a normal vaccination
                e.g. gruppen impfung with a general and a travel vaccination -> split up the group vaccination and display
                the vaccination as two normal entries.
             -->

            <xsl:value-of select="string(true())" />
            <xsl:text>;</xsl:text>
        </xsl:if>
    </xsl:variable>

    <xsl:variable name="isCodedInRecommendationSection">
        <xsl:call-template name="isCodedInRecommendationSection">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
        </xsl:call-template>
    </xsl:variable>

    <!--
        - display section if entry is forced to be shown because of $overrideRecommendationSection or ($forceSplitUp contains 'true' and it's not a group vaccination)
        - display section if entry is coded in the recommendation section and
            - all entries of the group vaccinations are part of the current section and
                - display section if entry is coded in a group vaccination but the displaying if group vaccination is disabled
                - display section if entry is coded as a group vaccination but must be displayed as a normal vaccination
                - display section if entry is coded as a group vaccination and group vaccinations should be displayed and they were not splitted up
    -->
    <xsl:if test="$overrideRecommendationSection='true' or (contains($forceSplitUp, 'true') and $showGroupEntry='false') or
                ($isCodedInRecommendationSection='false' and not(contains($isGruppenImpfungFullSectionMatch, 'false')) and not(contains($isPartOfGruppenImpfung, 'true')) and $showGroupEntry='false') or
                ($isCodedInRecommendationSection='false' and not(contains($isGruppenImpfungFullSectionMatch, 'false')) and contains($isPartOfGruppenImpfung, 'true') and $showGroupEntry='false' and contains($forceSplitUp, 'true')) or
                ($isCodedInRecommendationSection='false' and not(contains($isGruppenImpfungFullSectionMatch, 'false')) and $showGroupEntry='true' and not(contains($forceSplitUp, 'true')))
                ">

        <xsl:variable name="entryId">
            <xsl:value-of select="concat('id0x', $immunizationTargetId)" />
        </xsl:variable>

        <xsl:variable name="actionCode">
            <xsl:call-template name="getActionCode">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="dropDownTitle">
            <xsl:if test="$showGroupEntry='true'">
                <xsl:text>kombinierte Impfung: </xsl:text>
            </xsl:if>
            <xsl:call-template name="getImmunizationTargetName">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="searchName">
            <xsl:call-template name="getImmunizationTargetName">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="searchProduct">
            <xsl:call-template name="getNextImmunizationProductName">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
            </xsl:call-template>
            <xsl:text>;</xsl:text>

            <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']">
                <xsl:variable name="vaccinationId">
                    <xsl:value-of select="../n1:id/@extension" />
                </xsl:variable>
                <xsl:call-template name="getVaccinationProductNameByVaccinationId">
                    <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                </xsl:call-template>
                <xsl:text>;</xsl:text>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="cssPanelOverride">
            <xsl:if test="$showGroupEntry='true'">
                <xsl:text>groupPanel</xsl:text>
            </xsl:if>
        </xsl:variable>

        <div id="row-{$entryId}" class="panel-group headerRow {$section}Row" data-dropdown-title="{$dropDownTitle}" data-filter-target="{$immunizationTargetId}" data-search-immunization-name="{$searchName}" data-search-immunization-product="{$searchProduct}">
            <div class="panel panel-default textNormal {$cssPanelOverride}">
                <div class="panel-heading">
                    <div class="panel-title">
                        <div class="container vaccinationRowContainer">
                            <div class="row">
                                <div class="col-5 col-md-3 media">
                                    <xsl:choose>
                                        <xsl:when test="$showGroupEntry='true'">
                                            <h3 class="media-body my-auto my-center textVaccinationTitle">
                                                <xsl:text>kombinierte Impfung</xsl:text>
                                            </h3>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <h3 class="media-body my-auto my-center textVaccinationTitle text-break">
                                                <xsl:call-template name="getImmunizationTargetName">
                                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                                </xsl:call-template>
                                            </h3>
                                            <span class="d-none d-md-block media-right my-auto my-center">
                                                <xsl:variable name="url">
                                                    <xsl:call-template name="getInfoButtonLink">
                                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                                    </xsl:call-template>
                                                </xsl:variable>
                                                <a class="btn infoButton" target="_blank" href="{$url}" />
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                                <div class="col-2 col-md-1 my-auto my-center" style="text-align: center">
                                    <xsl:call-template name="renderActionCodeIcon">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                    </xsl:call-template>
                                </div>
                                <div class="col-4 col-md-2 my-auto my-center">
                                    <xsl:if test="$showGroupEntry='false'">
                                        <xsl:call-template name="getNextVaccinationRange">
                                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                        </xsl:call-template>
                                    </xsl:if>
                                </div>
                                <div class="d-none d-md-block col-md-3 my-auto my-center">
                                    <xsl:choose>
                                        <xsl:when test="$actionCode!=''">
                                            <xsl:call-template name="getImmunizationActionTranslated">
                                                <xsl:with-param name="actionCode" select="$actionCode" />
                                            </xsl:call-template>

                                            <xsl:variable name="comment">
                                                <xsl:call-template name="getVaccinationCommentByImmunizationTargetId">
                                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                                </xsl:call-template>
                                            </xsl:variable>

                                            <xsl:if test="$comment != ''">
                                                <p class="comment">
                                                    <xsl:value-of select="$comment" />
                                                </p>
                                            </xsl:if>

                                        </xsl:when>
                                        <xsl:otherwise>
                                            <!-- Show default text when no actionCode is available -->
                                            <xsl:call-template name="getImmunizationActionTranslated">
                                                <xsl:with-param name="actionCode" select="'171288004'" />
                                            </xsl:call-template>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                                <div class="col-1 col-md-3 my-auto my-center media">
                                    <span class="d-none d-md-block media-body">
                                        <xsl:call-template name="getLastEventWithTime">
                                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                                        </xsl:call-template>
                                    </span>
                                    <xsl:if test="not($showGroupEntry='true' and not(contains($forceSplitUp, 'true'))) and $actionCode != ''">
                                        <button class="d-none d-md-block media-right btn accordion-toggle collapsed accordionButton my-auto" id="row-{$entryId}-toggle" data-toggle="collapse"  data-target="#row-{$entryId}-body" data-parent="#row-{$entryId}" aria-expanded="false" />
                                    </xsl:if>

                                    <xsl:if test="$actionCode != ''">
                                        <button type="button" class="d-md-none media-right btn my-auto my-center modalVaccinationButton" data-toggle="modal" data-target="#modalVaccinationsInformation-{$entryId}" />
                                    </xsl:if>
                                </div>
                            </div>
                        </div>

                        <xsl:if test="$showGroupEntry='true' and not(contains($forceSplitUp, 'true'))">
                            <xsl:call-template name="renderVaccinationGroupSection">
                                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                <xsl:with-param name="entryId" select="$entryId" />
                            </xsl:call-template>
                        </xsl:if>

                    </div>
                </div>
            </div>

            <xsl:call-template name="renderModalVaccinations">
                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                <xsl:with-param name="entryId" select="$entryId" />
            </xsl:call-template>

            <div id="row-{$entryId}-body" class="panel-collapse collapse textSmall vaccinationHistoryContainer" data-parent="#row-{$entryId}">
                <div class="panel-body">
                    <div class="headerRowInner">

                        <xsl:call-template name="renderRecommendedVaccinations">
                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                            <xsl:with-param name="entryId" select="$entryId" />
                        </xsl:call-template>

                        <p class="vaccinationGuidance">
                            <strong>
                                <xsl:text>Handlungsvorschlag: </xsl:text>
                                <xsl:call-template name="getImmunizationActionTranslatedLong">
                                    <xsl:with-param name="actionCode" select="$actionCode" />
                                </xsl:call-template>
                            </strong>
                        </p>

                        <xsl:call-template name="renderPreviousVaccinations">
                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                            <xsl:with-param name="entryId" select="$entryId" />
                        </xsl:call-template>

                    </div>
                </div>
            </div>
        </div>
    </xsl:if>
</xsl:template>

<xsl:template name="renderVaccinationDetails">
    <xsl:param name="title" />
    <xsl:param name="text" />
    <xsl:param name="underlined" select="string(false())" />

    <xsl:variable name="underlinedClass">
        <xsl:if test="$underlined='true'">
            <xsl:text>vaccinationDetailsCellUnderlined</xsl:text>
        </xsl:if>
    </xsl:variable>

    <div class="container vaccinationDetailsContainer">
        <div class="row">
            <div class="col-5 vaccinationDetailsCell vaccinationDetailsCellTitle {$underlinedClass}">
                <xsl:value-of select="$title" />
            </div>
            <div class="col-7 vaccinationDetailsCell">
                <xsl:copy-of select="$text" />
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderVaccinationDetailsTitle">
    <xsl:param name="title" />
    <xsl:param name="underlined" select="string(false())" />

    <xsl:variable name="underlinedClass">
        <xsl:if test="$underlined='true'">
            <xsl:text>vaccinationDetailsCellUnderlined</xsl:text>
        </xsl:if>
    </xsl:variable>

    <div class="container vaccinationDetailsContainer">
        <div class="row">
            <div class="col vaccinationDetailsCell vaccinationDetailsCellTitle {$underlinedClass}">
                <xsl:value-of select="$title" />
            </div>
        </div>
    </div>
</xsl:template>


<xsl:template name="renderRecommendedVaccinations">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <xsl:variable name="hasRecommendationSection">
        <xsl:call-template name="isCodedInRecommendationSection">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
        </xsl:call-template>
    </xsl:variable>

    <xsl:if test="$hasRecommendationSection='true'">
        <div class="container">
            <div class="row headerRowInnerTableHeader">
                <div class="col-2 headerRowInnerTableHeaderCol" data-test-id="row-{$entryId}-table-header">Nächste Impfung (empfohlen)</div>
                <div class="col-6 headerRowInnerTableHeaderCol">Impfstoff</div>
                <div class="col-4 headerRowInnerTableHeaderCol">Impfdosis</div>
            </div>
            <div class="row headerRowInnerTableRow odd">
                <div class="col-2 headerRowInnerTableRowCol my-auto my-center">
                    <xsl:call-template name="getNextVaccinationRange">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                    </xsl:call-template>
                </div>
                <div class="col-6 headerRowInnerTableRowCol my-auto my-center">
                    <xsl:call-template name="getNextImmunizationProductName">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                    </xsl:call-template>
                </div>
                <div class="col-4 headerRowInnerTableRowCol my-auto my-center">
                    <xsl:call-template name="getNextVaccinationDoseAndScheme">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                    </xsl:call-template>
                </div>
            </div>
        </div>
    </xsl:if>
</xsl:template>

<xsl:template name="renderPreviousVaccinations">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <xsl:variable name="hasPreviousVaccinations">
        <xsl:call-template name="hasPreviousVaccinations">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:if test="$hasPreviousVaccinations='true'">

        <p class="vaccinationHistoryTitle">Bisherige Impfungen</p>

        <div class="container">
            <div class="row headerRowInnerTableHeader">
                <div class="col-2 headerRowInnerTableHeaderCol">Datum</div>
                <div class="col-3 headerRowInnerTableHeaderCol">Impfstoff</div>
                <div class="col-3 headerRowInnerTableHeaderCol">Impfdosis</div>
                <div class="col-3 headerRowInnerTableHeaderCol">Verantwortliche Person</div>
                <div class="col-1"></div>
            </div>
        </div>

        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']">
            <xsl:sort select="../n1:effectiveTime/@value" order="descending"/>

            <xsl:variable name="vaccinationId">
                <xsl:value-of select="../n1:id/@extension" />
            </xsl:variable>

            <xsl:variable name="background">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">
                        <xsl:text>even</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>odd</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>

            <div id="row-{$entryId}-sub-{$vaccinationId}" class="panel-group panel-group-previous-vaccinations">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <div class="container">
                                <div class="row headerRowInnerTableRow {$background}">
                                    <div class="col-2 headerRowInnerTableRowCol">
                                        <xsl:call-template name="getVaccinationDateByVaccinationId">
                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                        </xsl:call-template>
                                    </div>
                                    <div class="col-3 headerRowInnerTableRowCol">
                                        <xsl:call-template name="getVaccinationProductNameByVaccinationId">
                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                        </xsl:call-template>
                                    </div>
                                    <div class="col-3 headerRowInnerTableRowCol">
                                        <xsl:call-template name="getVaccinationDoseAndScheme">
                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                        </xsl:call-template>
                                    </div>
                                    <div class="col-3 headerRowInnerTableRowCol">
                                        <xsl:call-template name="getVaccinationAuthorNameByVaccinationId">
                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                        </xsl:call-template>
                                    </div>
                                    <div class="col-1 headerRowInnerTableRowCol">
                                        <button class="btn accordion-toggle collapsed accordionButton" id="row-{$entryId}-sub-{$vaccinationId}-toggle" data-toggle="collapse" data-target="#row-{$entryId}-sub-{$vaccinationId}-body" data-parent="#row-{$entryId}-sub-{$vaccinationId}" aria-expanded="false"></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="row-{$entryId}-sub-{$vaccinationId}-body" class="panel-collapse collapse" data-parent="#row-{$entryId}-sub-{$vaccinationId}">
                    <div class="panel-body">
                        <div class="bodyRowInner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6 col-lg-5 offset-lg-2">

                                        <xsl:call-template name="renderVaccinationDetailsTitle">
                                            <xsl:with-param name="title" select="'Arzneimittelspezialität:'" />
                                            <xsl:with-param name="underlined" select="string(true())" />
                                        </xsl:call-template>

                                        <xsl:variable name="vaccinationProductLongText">
                                            <xsl:call-template name="getVaccinationProductLongNameByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationProductLongText!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Langbezeichnung:'" />
                                                <xsl:with-param name="text" select="$vaccinationProductLongText" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationManufacturer">
                                            <xsl:call-template name="getVaccinationManufacturerByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationManufacturer!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Hersteller:'" />
                                                <xsl:with-param name="text" select="$vaccinationManufacturer" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationPZN">
                                            <xsl:call-template name="getVaccinationPZNByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationPZN!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Pharmazentralnummer:'" />
                                                <xsl:with-param name="text" select="$vaccinationPZN" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationLotNumber">
                                            <xsl:call-template name="getVaccinationLotNumberByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationLotNumber!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Chargennummer:'" />
                                                <xsl:with-param name="text" select="$vaccinationLotNumber" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationPharmCode">
                                            <xsl:call-template name="getVaccinationPharmCodeByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationPharmCode!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'ATC-Code:'" />
                                                <xsl:with-param name="text" select="$vaccinationPharmCode" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationPharmName">
                                            <xsl:call-template name="getVaccinationPharmNameByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationPharmName!=''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Wirkstoffe:'" />
                                                <xsl:with-param name="text" select="$vaccinationPharmName" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationComment">
                                            <xsl:call-template name="getVaccinationCommentByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:choose>
                                            <xsl:when test="$vaccinationComment=''">
                                                <xsl:call-template name="renderVaccinationDetails">
                                                    <xsl:with-param name="title" select="'Anmerkung:'" />
                                                    <xsl:with-param name="text" select="'-'" />
                                                </xsl:call-template>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:call-template name="renderVaccinationDetails">
                                                    <xsl:with-param name="title" select="'Anmerkung:'" />
                                                    <xsl:with-param name="text" select="$vaccinationComment" />
                                                    <xsl:with-param name="underlined" select="string(true())" />
                                                </xsl:call-template>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </div>
                                    <div class="col-6 col-lg-5">

                                        <xsl:variable name="vaccinationPlace">
                                            <xsl:call-template name="getVaccinationPerformedPlaceByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationPlace != ''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Impfort:'" />
                                                <xsl:with-param name="text" select="$vaccinationPlace" />
                                                <xsl:with-param name="underlined" select="string(true())" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationAuthorName">
                                            <xsl:call-template name="getVaccinationAuthorNameByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:variable name="vaccinationAuthorOrganizationName">
                                            <xsl:call-template name="getVaccinationAuthorOrganizationNameByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:variable name="vaccinationAuthorOrganizationAddress">
                                            <xsl:call-template name="getVaccinationAuthorOrganizationAddressByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:variable name="vaccinationAuthorOrganizationTelecom">
                                            <xsl:call-template name="getVaccinationAuthorOrganizationTelecomByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationAuthorName != '' or $vaccinationAuthorOrganizationName != '' or $vaccinationAuthorOrganizationAddress !='' or $vaccinationAuthorOrganizationTelecom != ''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Verantwortliche Person:'" />
                                                <xsl:with-param name="text">

                                                    <xsl:if test="$vaccinationAuthorName != ''">
                                                        <xsl:value-of select="$vaccinationAuthorName" />
                                                        <br />
                                                    </xsl:if>

                                                    <xsl:if test="$vaccinationAuthorOrganizationName != ''">
                                                        <xsl:value-of select="$vaccinationAuthorOrganizationName" />
                                                        <br />
                                                    </xsl:if>

                                                    <xsl:if test="$vaccinationAuthorOrganizationAddress != ''">
                                                        <xsl:copy-of select="$vaccinationAuthorOrganizationAddress" />
                                                        <br />
                                                    </xsl:if>

                                                    <xsl:if test="$vaccinationAuthorOrganizationTelecom != ''">
                                                        <xsl:copy-of select="$vaccinationAuthorOrganizationTelecom" />
                                                        <br />
                                                    </xsl:if>
                                                </xsl:with-param>
                                                <xsl:with-param name="underlined" select="string(true())" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="vaccinationReleaseTime">
                                            <xsl:call-template name="getVaccinationReleaseTimeByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$vaccinationReleaseTime != ''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Freigabezeitpunkt:'" />
                                                <xsl:with-param name="text" select="$vaccinationReleaseTime" />
                                                <xsl:with-param name="underlined" select="string(true())" />
                                            </xsl:call-template>
                                        </xsl:if>

                                        <xsl:variable name="mapperName">
                                            <xsl:call-template name="getVaccinationMapperNameByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:variable name="mapperTime">
                                            <xsl:call-template name="getVaccinationMapperTimeByVaccinationId">
                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                            </xsl:call-template>
                                        </xsl:variable>

                                        <xsl:if test="$mapperName != '' or $mapperTime != ''">
                                            <xsl:call-template name="renderVaccinationDetails">
                                                <xsl:with-param name="title" select="'Datenübertragung:'" />
                                                <xsl:with-param name="text" select="''" />
                                                <xsl:with-param name="underlined" select="string(true())" />
                                            </xsl:call-template>

                                            <xsl:if test="$mapperName != ''">
                                                <xsl:call-template name="renderVaccinationDetails">
                                                    <xsl:with-param name="title" select="'Übertragen durch:'" />
                                                    <xsl:with-param name="text"><xsl:copy-of select="$mapperName" /></xsl:with-param>
                                                </xsl:call-template>
                                            </xsl:if>

                                            <xsl:if test="$mapperTime != ''">
                                                <xsl:call-template name="renderVaccinationDetails">
                                                    <xsl:with-param name="title" select="'Datum der Eintragung:'" />
                                                    <xsl:with-param name="text" select="$mapperTime" />
                                                </xsl:call-template>
                                            </xsl:if>
                                        </xsl:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:for-each>
    </xsl:if>
</xsl:template>

<xsl:template name="renderVaccinationGroupSection">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <div class="vaccinationRowGroupContainer">
        <div class="row">
            <div class="col-12">
                <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:entryRelationship">
                    <xsl:if test="n1:observation/n1:code/@code != $immunizationTargetId">
                        <xsl:call-template name="renderVaccinationGroupSubSection">
                            <xsl:with-param name="immunizationTargetId" select="n1:observation/n1:code/@code" />
                            <xsl:with-param name="entryId" select="$entryId" />
                        </xsl:call-template>
                    </xsl:if>
                </xsl:for-each>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderVaccinationGroupSubSection">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <div id="row-{$entryId}-sub-{$immunizationTargetId}" class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">
                    <div class="container vaccinationGroupEntryContainer">
                        <div class="row vaccinationGroupRow">
                            <div class="col-7 col-md-3 media" style="padding-right: 26px;">
                                <h3 class="media-body my-auto my-center textLarge text-break">
                                    <xsl:call-template name="getImmunizationTargetName">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                    </xsl:call-template>
                                </h3>
                                <span class="d-none d-md-block media-right my-auto my-center">
                                    <xsl:variable name="url">
                                        <xsl:call-template name="getInfoButtonLink">
                                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                        </xsl:call-template>
                                    </xsl:variable>
                                    <a class="btn infoButton" target="_blank" href="{$url}" />
                                </span>
                            </div>
                            <div class="col-1"></div>
                            <div class="col-3 col-md-5 my-auto my-center">
                                <xsl:call-template name="getNextVaccinationRange">
                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                </xsl:call-template>
                            </div>
                            <div class="d-none d-md-block col-md-2 my-auto my-center">
                                <xsl:call-template name="getLastEventWithTime">
                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                                </xsl:call-template>
                            </div>
                            <div class="col-1 my-auto my-center">
                                <button class="d-none d-md-block btn accordion-toggle collapsed accordionButton" id="row-{$entryId}-sub-{$immunizationTargetId}-toggle" data-toggle="collapse" data-target="#row-{$entryId}-sub-{$immunizationTargetId}-body" data-parent="#row-{$entryId}-sub-{$immunizationTargetId}" aria-expanded="false"></button>
                                <button class="d-md-none btn modalVaccinationButton modalVaccinationButtonGroup" data-toggle="modal" data-target="#modalVaccinationsInformation-{$entryId}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="row-{$entryId}-sub-{$immunizationTargetId}-body" class="panel-collapse collapse" data-parent="#row-{$entryId}-sub-{$immunizationTargetId}">
            <div class="panel-body vaccinationGroupEntryDetailPanel">
                <xsl:call-template name="renderRecommendedVaccinations">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                    <xsl:with-param name="entryId" select="$entryId" />
                </xsl:call-template>

                <p class="vaccinationGuidance">
                    <strong>
                        <xsl:text>Handlungsvorschlag: </xsl:text>
                        <xsl:variable name="actionCode">
                            <xsl:call-template name="getActionCode">
                                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                            </xsl:call-template>
                        </xsl:variable>
                        <xsl:call-template name="getImmunizationActionTranslatedLong">
                            <xsl:with-param name="actionCode" select="$actionCode" />
                        </xsl:call-template>
                    </strong>
                </p>

                <xsl:call-template name="renderPreviousVaccinations">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                    <xsl:with-param name="entryId" select="$entryId" />
                </xsl:call-template>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderOtherHeader">
    <xsl:param name="section" />
    <div id="{$section}TitleContainer" class="container tableHeaderContainer">
        <div class="row sectionRowHeight textNormal">
            <div class="col-6 col-md-9 tableHeaderCol align-self-center">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center">Impfungen</div>
                </div>
            </div>
            <div class="col-6 col-md-3 tableHeaderCol align-self-center">
                <div class="row sectionRowHeight">
                    <div class="col align-self-center">Letztes Ereignis</div>
                </div>
            </div>
        </div>
    </div>
</xsl:template>


<xsl:template name="renderVaccinationSectionEntryOther">
    <xsl:param name="immunizationTargetId" />

    <xsl:variable name="entryId" select="generate-id()" />

    <xsl:variable name="immunizationName">
        <xsl:call-template name="getImmunizationTargetName">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="searchProduct">
        <xsl:call-template name="getNextImmunizationProductName">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <div id="row-{$entryId}" class="panel-group headerRow otherRow" data-search-immunization-name="{$immunizationName}" data-search-immunization-product="{$searchProduct}">
        <div class="panel panel-default textNormal">
            <div class="panel-heading">
                <div class="panel-title">
                    <div class="container vaccinationRowContainer textNormal">
                        <div class="row">
                            <div class="col-6 col-md-3 my-auto my-center">
                                <h3 class="textLarge text-break">
                                    <xsl:value-of select="$immunizationName" />
                                </h3>
                            </div>
                            <div class="col-6 d-none d-md-block my-auto my-center"></div>
                            <div class="col-6 col-md-3 my-auto my-center media">
                                <span class="media-body my-auto my-center">
                                    <xsl:call-template name="getLastEventWithTime">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                                    </xsl:call-template>
                                </span>
                                <button class="btn accordion-toggle collapsed accordionButton my-auto my-center" id="row-{$entryId}-toggle" data-toggle="collapse"  data-target="#row-{$entryId}-body" data-parent="#row-{$entryId}" aria-expanded="false"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="row-{$entryId}-body" class="panel-collapse collapse textSmall vaccinationHistoryContainer" data-parent="#row-{$entryId}">
            <div class="panel-body">
                <div class="headerRowInner">

                    <xsl:call-template name="renderRecommendedVaccinations">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                        <xsl:with-param name="entryId" select="$entryId" />
                    </xsl:call-template>

                    <p class="vaccinationGuidance">
                        <strong>
                            <xsl:text>Handlungsvorschlag: </xsl:text>
                            <xsl:variable name="actionCode">
                                <xsl:call-template name="getActionCode">
                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                </xsl:call-template>
                            </xsl:variable>
                            <xsl:call-template name="getImmunizationActionTranslatedLong">
                                <xsl:with-param name="actionCode" select="$actionCode" />
                            </xsl:call-template>
                        </strong>
                    </p>

                    <xsl:call-template name="renderPreviousVaccinations">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                        <xsl:with-param name="entryId" select="$entryId" />
                    </xsl:call-template>

                </div>
            </div>
        </div>

    </div>
</xsl:template>

<xsl:template name="renderActionCodeIcon">
    <xsl:param name="immunizationTargetId" />

    <xsl:variable name="actionCode">
        <xsl:call-template name="getActionCode">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:choose>
        <xsl:when test="$actionCode='424272000'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationRedFilledLarge" />
                <xsl:with-param name="toolTip">Impfung überfällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='789540001'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationRedFilledLarge" />
                <xsl:with-param name="toolTip">Impfung überfällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='171279008'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationYellowFilledLarge" />
                <xsl:with-param name="toolTip">Impfung fällig/bald fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='789539003'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationYellowFilledLarge" />
                <xsl:with-param name="toolTip">Impfung fällig/bald fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='122541000119104'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationYellowEmptyLarge" />
                <xsl:with-param name="toolTip">Erste Impfung zukünftig fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='191441008'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationGreenFilledLarge" />
                <xsl:with-param name="toolTip">Keine Impfung fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='713404003'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationGreenFilledLarge" />
                <xsl:with-param name="toolTip">Keine Impfung fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='171258008'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationGreenEmptyLarge" />
                <xsl:with-param name="toolTip">Derzeit keine Impfung fällig</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='723620004'">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationBlueFilledLarge" />
                <xsl:with-param name="toolTip">Keine Daten vorhanden</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="$actionCode='171288004' or $actionCode=''">
            <xsl:call-template name="renderStatusIcon">
                <xsl:with-param name="img" select="$vaccinationBlueFilledLarge" />
                <xsl:with-param name="toolTip">Keine Daten vorhanden</xsl:with-param>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>unbekannter code </xsl:text>
            <xsl:value-of select="$actionCode" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="renderStatusIcon">
    <xsl:param name="img" />
    <xsl:param name="toolTip" />
    <img alt="" data-toggle="tooltip" data-placement="top" title="{$toolTip}"  width="20px" class="my-auto my-center" src="data:image/png;base64,{$img}" />
</xsl:template>

<xsl:template name="renderModalVaccinations">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <xsl:variable name="actionCode">
        <xsl:call-template name="getActionCode">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="hasPreviousVaccinations">
        <xsl:call-template name="hasPreviousVaccinations">
            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
        </xsl:call-template>
    </xsl:variable>

    <div class="modal fade modal-right" id="modalVaccinationsInformation-{$entryId}" tabindex="-1" role="dialog" aria-labelledby="vaccination-modal-title-{$entryId}" aria-hidden="true">
        <div class="modal-dialog textNormal" role="document">
            <div class="modal-content">
                <div class="modal-header media">
                    <span class="media-body">
                        <h3 class="modal-title my-auto my-center textLarge text-break" id="vaccination-modal-title-{$entryId}">
                            <strong>
                                <xsl:call-template name="getImmunizationTargetName">
                                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                </xsl:call-template>
                            </strong>
                        </h3>
                    </span>
                    <span class="media-right my-auto my-center">
                        <xsl:variable name="url">
                            <xsl:call-template name="getInfoButtonLink">
                                <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                            </xsl:call-template>
                        </xsl:variable>
                        <a class="btn infoButton" target="_blank" href="{$url}" />
                    </span>

                    <button type="button" class="btn my-auto my-center modalCloseButton" data-dismiss="modal" aria-label="Close" />
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row modalRow">
                            <div class="col media">
                                <span class="media-body my-auto my-center">
                                    <h4 class="textLarge">
                                        <strong>
                                            <xsl:text>Aktion</xsl:text>
                                        </strong>
                                    </h4>
                                </span>
                                <span class="media-right my-auto my-center">
                                    <xsl:call-template name="renderActionCodeIcon">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                    </xsl:call-template>
                                </span>
                            </div>
                        </div>
                        <div class="row modalRow">
                            <div class="col">
                                <h4 class="textLarge">
                                    <strong>
                                        <xsl:text>Nächste Impfung (vorgeschlagen)</xsl:text>
                                    </strong>
                                </h4>
                                <div class="modalDivider">
                                    <xsl:call-template name="getNextVaccinationRange">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                    </xsl:call-template>
                                </div>
                            </div>
                        </div>
                        <div class="row modalRow">
                            <div class="col">
                                <h4 class="textLarge">
                                    <strong>
                                        <xsl:text>Impfdosis</xsl:text>
                                    </strong>
                                </h4>
                                <div class="modalDivider">
                                    <xsl:call-template name="getNextVaccinationDoseAndScheme">
                                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                                    </xsl:call-template>
                                </div>
                            </div>
                        </div>
                        <div class="row modalRow">
                            <div class="col">
                                <h4 class="textLarge">
                                    <strong>
                                        <xsl:text>Handlungsvorschlag</xsl:text>
                                    </strong>
                                </h4>
                                <div class="modalDivider">
                                    <xsl:choose>
                                        <xsl:when test="$actionCode!=''">
                                            <xsl:call-template name="getImmunizationActionTranslated">
                                                <xsl:with-param name="actionCode" select="$actionCode" />
                                            </xsl:call-template>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <!-- Show default text when no actionCode is available -->
                                            <xsl:call-template name="getImmunizationActionTranslated">
                                                <xsl:with-param name="actionCode" select="'171288004'" />
                                            </xsl:call-template>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </div>
                        </div>

                        <xsl:if test="$hasPreviousVaccinations='true'">

                            <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']">
                                <xsl:sort select="../n1:effectiveTime/@value" order="descending"/>

                                <xsl:if test="position()=1">

                                    <xsl:variable name="vaccinationId">
                                        <xsl:value-of select="../n1:id/@extension" />
                                    </xsl:variable>

                                    <div class="row modalRow">
                                        <div class="col">
                                            <h4 class="textLarge">
                                                <strong>
                                                    <xsl:text>Letztes Ereignis</xsl:text>
                                                </strong>
                                            </h4>
                                            <div class="modalDivider">
                                                <xsl:call-template name="getVaccinationDateByVaccinationId">
                                                    <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                                </xsl:call-template>
                                            </div>
                                            <div class="modalDividerLarge">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <h4 class="textLarge">
                                                            <strong>
                                                                <xsl:text>Impfstoff</xsl:text>
                                                            </strong>
                                                        </h4>
                                                    </div>
                                                    <div class="col-6">
                                                        <h4 class="textLarge">
                                                            <strong>
                                                                <xsl:text>Impfdosis</xsl:text>
                                                            </strong>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modalDivider">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <xsl:call-template name="getVaccinationProductNameByVaccinationId">
                                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                                        </xsl:call-template>
                                                    </div>
                                                    <div class="col-6">
                                                        <xsl:call-template name="getVaccinationDoseAndScheme">
                                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                                        </xsl:call-template>
                                                    </div>
                                                </div>
                                            </div>

                                            <xsl:variable name="authorAvailable">
                                                <xsl:call-template name="isVaccinationAuthorNameAvailable">
                                                        <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                                </xsl:call-template>
                                            </xsl:variable>

                                            <xsl:if test="$authorAvailable='true'">
                                                <div class="modalDividerLarge">
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 class="textLarge">
                                                                <strong>
                                                                    <xsl:text>Verantwortliche Person</xsl:text>
                                                                </strong>
                                                            </h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modalDivider">
                                                    <div class="row">
                                                        <div class="col">
                                                            <xsl:call-template name="getVaccinationAuthorNameByVaccinationId">
                                                                <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                                            </xsl:call-template>
                                                        </div>
                                                    </div>
                                                </div>
                                            </xsl:if>
                                        </div>
                                    </div>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </div>

                    <xsl:if test="$hasPreviousVaccinations='true'">
                        <div id="modal-previous-{$entryId}" class="panel-group">
                            <div class="panel panel-default textNormal">
                                <div class="panel-heading">
                                    <div class="panel-title">

                                        <!-- all previous vaccinations -->
                                        <div class="container modalSectionHeaderContainer">
                                            <div class="row modalSectionHeaderRow">
                                                <div class="col-12 media">
                                                    <div class="media-body">
                                                        <h2 class="textLarge">
                                                            <xsl:text>Alle bisherigen Impfungen</xsl:text>
                                                        </h2>
                                                    </div>
                                                    <button class="media-right btn accordion-toggle collapsed accordionButton my-auto my-center" id="modal-previous-{$entryId}-toggle" data-toggle="collapse"  data-target="#modal-previous-{$entryId}-body" data-parent="#modal-previous-{$entryId}" aria-expanded="false" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <xsl:call-template name="renderModalPreviousVaccinations">
                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                            <xsl:with-param name="entryId" select="$entryId" />
                        </xsl:call-template>
                    </xsl:if>
                </div>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderModalPreviousVaccinations">
    <xsl:param name="immunizationTargetId" />
    <xsl:param name="entryId" />

    <div id="modal-previous-{$entryId}-body" class="panel-collapse collapse" data-parent="#modal-previous-{$entryId}">
        <div class="panel-body">
            <div class="container">
                <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code=$immunizationTargetId]/../../../n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']">
                    <xsl:sort select="../n1:effectiveTime/@value" order="descending"/>

                    <xsl:variable name="vaccinationId">
                        <xsl:value-of select="../n1:id/@extension" />
                    </xsl:variable>

                    <div class="row modalDetailRow">
                        <div class="col">
                            <xsl:call-template name="modalDetailEntry">
                                <xsl:with-param name="title" select="'Datum'" />
                                <xsl:with-param name="body">
                                    <xsl:call-template name="getVaccinationDateByVaccinationId">
                                        <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                    </xsl:call-template>
                                </xsl:with-param>
                            </xsl:call-template>
                            <xsl:call-template name="modalDetailEntry">
                                <xsl:with-param name="title" select="'Impfstoff'" />
                                <xsl:with-param name="body">
                                    <xsl:call-template name="getVaccinationProductNameByVaccinationId">
                                        <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                    </xsl:call-template>
                                </xsl:with-param>
                            </xsl:call-template>
                            <xsl:call-template name="modalDetailEntry">
                                <xsl:with-param name="title" select="'Impfdosis'" />
                                <xsl:with-param name="body">
                                    <xsl:call-template name="getVaccinationDoseAndScheme">
                                        <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                    </xsl:call-template>
                                </xsl:with-param>
                            </xsl:call-template>

                            <xsl:variable name="authorAvailable">
                                <xsl:call-template name="isVaccinationAuthorNameAvailable">
                                    <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                </xsl:call-template>
                            </xsl:variable>

                            <xsl:if test="$authorAvailable='true'">
                                <xsl:call-template name="modalDetailEntry">
                                    <xsl:with-param name="title" select="'Verantwortliche Person'" />
                                    <xsl:with-param name="body">
                                        <xsl:call-template name="getVaccinationAuthorNameByVaccinationId">
                                            <xsl:with-param name="vaccionationId" select="$vaccinationId" />
                                        </xsl:call-template>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:if>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
        </div>
    </div>

</xsl:template>

<xsl:template name="modalDetailEntry">
    <xsl:param name="title" />
    <xsl:param name="body" />

    <div class="modalDetailEntrySection">
        <div>
            <strong>
                <xsl:copy-of select="$title" />
            </strong>
        </div>
        <div>
            <xsl:copy-of select="$body" />
        </div>
    </div>

</xsl:template>
<xsl:template name="renderDocumentInformation">
    <div id="documentInformation" class="panel-group documentInformationPanel">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">
                    <div class="container sectionHeaderContainer documentInformationContainer">
                        <div class="row">
                            <div class="col-12 col-md-10">
                                <h2 class="textLarge">
                                    <xsl:text>Zusätzliche Informationen</xsl:text>
                                </h2>
                            </div>
                            <div class="d-none d-md-block col-md-2">
                                <button class="btn accordion-toggle collapsed accordionButton" id="documentInformation-toggle" data-toggle="collapse" data-target="#documentInformation-body" data-parent="#documentInformation" aria-expanded="false"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="documentInformation-body" class="panel-collapse collapse" data-parent="#documentInformation">
            <div class="panel-body">
                <div class="container documentInformationEntryContainer">

                    <!-- Dokumentenverfasser(in) / Erzeugt mit -->
                    <xsl:for-each select="//n1:ClinicalDocument/n1:author">
                        <xsl:call-template name="documentInformationEntry">
                            <xsl:with-param name="entryId" select="generate-id()" />
                            <xsl:with-param name="left">
                                <strong>
                                    <xsl:call-template name="getAuthorTitle">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </strong>
                            </xsl:with-param>
                            <xsl:with-param name="leftCollapsed">
                                <xsl:call-template name="getAuthorTime">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>
                            </xsl:with-param>
                            <xsl:with-param name="right">
                                <xsl:variable name="authorName">
                                    <xsl:call-template name="getAuthorName">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>
                                <xsl:variable name="authorOrganization">
                                    <xsl:call-template name="getAuthorOrganizationName">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$authorName != ''">
                                    <xsl:value-of select="$authorName" />
                                </xsl:if>
                                <xsl:if test="$authorOrganization != ''">
                                    <xsl:if test="$authorName != ''">
                                        <br />
                                    </xsl:if>
                                    <xsl:value-of select="$authorOrganization" />
                                </xsl:if>

                            </xsl:with-param>
                            <xsl:with-param name="rightCollapsed">
                                <xsl:call-template name="getAuthorTelecom">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>
                                <br />
                                <xsl:call-template name="getAuthorOrganizationAddress">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>

                                <xsl:variable name="telecomAvailable">
                                    <xsl:call-template name="isAuthorOrganizationTelecomAvailable">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$telecomAvailable='true'">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <xsl:call-template name="getAuthorOrganizationTelecom">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>

                    <!-- Eingegeben von -->
                    <xsl:for-each select="//n1:ClinicalDocument/n1:dataEnterer">
                        <xsl:call-template name="documentInformationEntry">
                            <xsl:with-param name="entryId" select="generate-id()" />
                            <xsl:with-param name="left">
                                <strong>
                                    <xsl:text>Eingegeben von</xsl:text>
                                </strong>
                            </xsl:with-param>
                            <xsl:with-param name="leftCollapsed">
                                <xsl:call-template name="getDataEntererTime">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>
                            </xsl:with-param>
                            <xsl:with-param name="right">
                                <xsl:call-template name="getDataEntererName">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>
                            </xsl:with-param>
                            <xsl:with-param name="rightCollapsed">
                                <xsl:call-template name="getDataEntererTelecom">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>

                                <xsl:variable name="dataEntererOrganizationName">
                                    <xsl:call-template name="getDataEntererOrganizationName">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$dataEntererOrganizationName != ''">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <strong>
                                        <xsl:call-template name="getDataEntererOrganizationName">
                                            <xsl:with-param name="node" select="."/>
                                        </xsl:call-template>
                                    </strong>
                                </xsl:if>

                                <xsl:variable name="dataEntererOrganizationAddress">
                                    <xsl:call-template name="getDataEntererOrganizationAddress">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$dataEntererOrganizationAddress!=''">
                                    <br />
                                    <xsl:call-template name="getDataEntererOrganizationAddress">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="isDataEntererTelecomAvailable">
                                    <xsl:call-template name="isDataEntererOrganizationTelecomAvailable">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$isDataEntererTelecomAvailable='true'">
                                    <xsl:call-template name="documentInformationSpacer"/>
                                    <xsl:call-template name="getDataEntererOrganizationTelecom">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>

                    <!-- Empfänger / Kopie an -->
                    <xsl:for-each select="//n1:ClinicalDocument/n1:informationRecipient">
                        <xsl:call-template name="documentInformationEntry">
                            <xsl:with-param name="entryId" select="generate-id()" />
                            <xsl:with-param name="left">
                                <strong>
                                    <xsl:call-template name="getInformationRecipientTitle">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </strong>
                            </xsl:with-param>
                            <xsl:with-param name="right">
                                <xsl:call-template name="getInformationRecipientName">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>
                            </xsl:with-param>
                            <xsl:with-param name="rightCollapsed">
                                <xsl:call-template name="getInformationRecipientTelecom">
                                    <xsl:with-param name="node" select="."/>
                                </xsl:call-template>

                                <xsl:variable name="informationRecipientOrganizationName">
                                    <xsl:call-template name="getInformationRecipientOrganizationName">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$informationRecipientOrganizationName!=''">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <xsl:call-template name="getInformationRecipientOrganizationName">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="informationRecipientOrganizationAddress">
                                    <xsl:call-template name="getInformationRecipientOrganizationAddress">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$informationRecipientOrganizationAddress">
                                    <br />
                                    <xsl:call-template name="getInformationRecipientOrganizationAddress">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="isInformationRecipientTelecomAvailable">
                                    <xsl:call-template name="isInformationRecipientOrganizationTelecomAvailable">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$isInformationRecipientTelecomAvailable='true'">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <xsl:call-template name="getInformationRecipientOrganizationTelecom">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>

                    <!-- Participants -->
                    <xsl:for-each select="//n1:ClinicalDocument/n1:participant[@typeCode!='CALLBCK']">
                        <xsl:call-template name="documentInformationEntry">
                            <xsl:with-param name="entryId" select="generate-id()" />
                            <xsl:with-param name="left">
                                <strong>
                                    <xsl:call-template name="getParticipantTitle">
                                        <xsl:with-param name="node" select="."/>
                                    </xsl:call-template>
                                </strong>
                            </xsl:with-param>
                            <xsl:with-param name="right">

                                <xsl:call-template name="getParticipantName">
                                    <xsl:with-param name="participant" select="."/>
                                </xsl:call-template>

                                <xsl:variable name="printParticipantRelationship">
                                    <xsl:call-template name="printParticipantRelationship">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$printParticipantRelationship='true'">
                                    <!-- e.g print (Mutter, leibliche Tochter, ...) -->
                                    <xsl:text> (</xsl:text>
                                    <xsl:call-template name="getParticipantRelationship">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                    <xsl:text>)</xsl:text>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="rightCollapsed">
                                <xsl:call-template name="getParticipantAddress">
                                    <xsl:with-param name="participant" select="."/>
                                </xsl:call-template>

                                <xsl:variable name="participantTelecom">
                                    <xsl:call-template name="getParticipantTelecom">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$participantTelecom != ''">
                                    <br />
                                    <xsl:call-template name="getParticipantTelecom">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="participantOrganizationName">
                                    <xsl:call-template name="getParticipantOrganizationName">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$participantOrganizationName != ''">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <xsl:call-template name="getParticipantOrganizationName">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="participantOrganizationAddress">
                                    <xsl:call-template name="getParticipantOrganizationAddress">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$participantOrganizationAddress != ''">
                                    <br />
                                    <xsl:call-template name="getParticipantOrganizationAddress">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:if>

                                <xsl:variable name="isParticipantTelecomAvailable">
                                    <xsl:call-template name="isParticipantOrganizationTelecomAvailable">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:if test="$isParticipantTelecomAvailable='true'">
                                    <xsl:call-template name="documentInformationSpacer" />
                                    <xsl:call-template name="getParticipantOrganizationTelecom">
                                        <xsl:with-param name="participant" select="."/>
                                    </xsl:call-template>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>

                    </xsl:for-each>

                    <!-- Verwahrer des Dokuments -->
                    <xsl:call-template name="documentInformationEntry">
                        <xsl:with-param name="entryId" select="generate-id(//n1:custodian)" />
                        <xsl:with-param name="left">
                            <strong>
                                <xsl:text>Verwahrer des Dokuments</xsl:text>
                            </strong>
                        </xsl:with-param>
                        <xsl:with-param name="right">
                            <xsl:call-template name="getCustodianName"/>
                        </xsl:with-param>
                        <xsl:with-param name="rightCollapsed">
                            <xsl:call-template name="getCustodianAddress"/>

                            <xsl:variable name="custodianTelecomAvailable">
                                <xsl:call-template name="isCustodianTelecomAvailable"/>
                            </xsl:variable>

                            <xsl:if test="$custodianTelecomAvailable='true'">
                                <xsl:call-template name="documentInformationSpacer"/>
                                <xsl:call-template name="getCustodianTelecom"/>
                            </xsl:if>
                        </xsl:with-param>
                    </xsl:call-template>

                    <!-- Schlagwörter -->
                    <xsl:call-template name="documentInformationEntry">
                        <xsl:with-param name="entryId" select="'ServiceEvents'" />
                        <xsl:with-param name="left">
                            <strong>
                                <xsl:text>Schlagwörter (Services)</xsl:text>
                            </strong>
                        </xsl:with-param>
                        <xsl:with-param name="right">
                            <xsl:call-template name="getServiceEvents" />
                        </xsl:with-param>
                    </xsl:call-template>

                    <!-- Dokumentinformationen -->
                    <xsl:call-template name="documentInformationEntry">
                        <xsl:with-param name="entryId" select="'docInformationEntry'" />
                        <xsl:with-param name="left">
                            <strong>
                                <xsl:text>Dokumentinformation</xsl:text>
                            </strong>
                        </xsl:with-param>
                        <xsl:with-param name="rightCollapsed">
                            <xsl:call-template name="getELGADokumentklasse"/>
                            <br />

                            <xsl:text>Dokument erzeugt am </xsl:text>
                            <xsl:call-template name="getDocumentCreatedDateTime"/>
                            <br />

                            <xsl:call-template name="getServiceEventTimes"/>
                            <br />

                            <xsl:text>Dokument-ID: {</xsl:text>
                            <xsl:call-template name="getDocumentIDRoot"/>
                            <xsl:text>} </xsl:text>
                            <xsl:call-template name="getDocumentIDExtension"/>
                            <br />

                            <xsl:text>Set ID: {</xsl:text>
                            <xsl:call-template name="getDocumentSetIDRoot"/>
                            <xsl:text>} </xsl:text>
                            <xsl:call-template name="getDocumentSetIDExtension"/>
                            <br />

                            <xsl:text>Dokumentversion: </xsl:text>
                            <xsl:call-template name="getDocumentVersion"/>
                            <br />

                            <xsl:text>Dieses Dokument entspricht den Vorgaben von: </xsl:text>
                            <xsl:call-template name="getNameFromOID"/>
                            <xsl:text>; ELGA Interoperabilitätsstufe: </xsl:text>
                            <xsl:call-template name="getEISFromOID"/>
                            <br />

                            <xsl:call-template name="getParameterSettings" />

                        </xsl:with-param>
                    </xsl:call-template>

                </div>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template name="getParameterSettings">

    <xsl:variable name="parameterSettings">
        <xsl:call-template name="renderParamWithValue">
            <xsl:with-param name="paramName">InfoButtonBaseUrl</xsl:with-param>
            <xsl:with-param name="paramValue" select="$infoButtonBaseURL"/>
            <xsl:with-param name="paramDefaultValue" select="'https://www.gesundheit.gv.at/linkaufloesung/applikation-flow?quelle=GHP&amp;flow=LO&amp;leistung=LA-GP-LO-'" />
            <xsl:with-param name="displayText">InfoButton-URL</xsl:with-param>
        </xsl:call-template>
    </xsl:variable>

    <xsl:choose>
        <xsl:when test="$parameterSettings != ''">
            <xsl:text>Dieses Dokument wurde mit folgenden Einstellungen erstellt: </xsl:text>
            <xsl:value-of select="substring($parameterSettings, 1, string-length($parameterSettings) - 2)"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>Dieses Dokument wurde mit den Standard-Einstellungen erstellt.</xsl:text>
        </xsl:otherwise>
    </xsl:choose>

</xsl:template>

<xsl:template name="renderParamWithValue">
    <xsl:param name="paramName"/>
    <xsl:param name="paramValue"/>
    <xsl:param name="paramDefaultValue"/>
    <xsl:param name="unit" select="''"/>
    <xsl:param name="displayText"/>

    <xsl:if test="$paramValue != $paramDefaultValue">
        <xsl:value-of select="$displayText"/>
        <xsl:text> (Parameter "</xsl:text>
        <xsl:value-of select="$paramName"/>
        <xsl:text>"): </xsl:text>
        <xsl:value-of select="$paramValue"/>
        <xsl:value-of select="$unit"/>
        <xsl:text>, </xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template name="documentInformationEntry">
    <xsl:param name="entryId" />
    <xsl:param name="left" />
    <xsl:param name="leftCollapsed" select="''"/>
    <xsl:param name="right" select="''" />
    <xsl:param name="rightCollapsed" select="''" />

    <div class="row" id="collapse-parent-{$entryId}">
        <div class="col-4">
            <xsl:copy-of select="$left" />
            <div class="collapse" id="collapse-left-{$entryId}">
                <xsl:copy-of select="$leftCollapsed" />
            </div>
        </div>
        <div class="col-7">
            <xsl:copy-of select="$right" />
            <div class="collapse" id="collapse-right-{$entryId}">
                <xsl:copy-of select="$rightCollapsed" />
            </div>
        </div>
        <div class="col-1">
            <xsl:if test="$rightCollapsed != ''">
                <button class="btn accordion-toggle collapsed accordionButton" id="document-information-{$entryId}-toggle" data-toggle="collapse" data-target="#collapse-left-{$entryId}, #collapse-right-{$entryId}" aria-expanded="false" aria-controls="collapse-left-{$entryId} collapse-right-{$entryId}"></button>
            </xsl:if>
        </div>
    </div>
</xsl:template>

<xsl:template name="documentInformationSpacer">
    <div class="row" style="margin: 1rem 0 0 0; padding: 0 0 0 0px; min-height: 0px; border: 0px none;" />
</xsl:template>
<xsl:template name="renderKeySets">
    <div class="row">
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationGreenFilledSmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto">Keine weitere Impfung erforderlich</div>
        </div>
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationGreenEmptySmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto" >Derzeit keine Handlung erforderlich</div>
        </div>
    </div>
    <div class="row keySetRow">
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationYellowEmptySmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto">Impfzeitraum startet in über 3 Monaten</div>
        </div>
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationYellowFilledSmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto" >Impfzeitraum startet innerhalb der nächsten 3 Monate</div>
        </div>
    </div>
    <div class="row keySetRow">
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationBlueFilledSmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto">Keine Daten erfasst</div>
        </div>
        <div class="media col-12 col-md-6 keySetCol">
            <span class="media-left my-auto">
                <img alt="" class="keySetIcon" src="data:image/png;base64,{$vaccinationRedFilledSmall}" />
            </span>
            <div class="media-body keySetBody textSmall my-auto" >Termin überfällig</div>
        </div>
    </div>
</xsl:template>

<xsl:template name="renderKeySetsBottom">
    <div class="container d-md-none" style="margin-bottom: 1em;">
        <xsl:call-template name="renderKeySets" />
    </div>
</xsl:template>


    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getCountryMapping">
        <xsl:param name="country" />
        
        <xsl:choose>
            <xsl:when test="$country='ABW'">Aruba</xsl:when>
            <xsl:when test="$country='AFG'">Afghanistan</xsl:when>
            <xsl:when test="$country='AGO'">Angola</xsl:when>
            <xsl:when test="$country='AIA'">Anguilla</xsl:when>
            <xsl:when test="$country='ALA'">Åland</xsl:when>
            <xsl:when test="$country='ALB'">Albanien</xsl:when>
            <xsl:when test="$country='AND'">Andorra</xsl:when>
            <xsl:when test="$country='ANT'">Niederländische Antillen</xsl:when>
            <xsl:when test="$country='ARE'">Vereinigte Arabische Emirate</xsl:when>
            <xsl:when test="$country='ARG'">Argentinien</xsl:when>
            <xsl:when test="$country='ARM'">Armenien</xsl:when>
            <xsl:when test="$country='ASC'">Ascension (verwaltet von St. Helena)</xsl:when>
            <xsl:when test="$country='ASM'">Amerikanisch-Samoa</xsl:when>
            <xsl:when test="$country='ATA'">Antarktis (Sonderstatus durch Antarktis-Vertrag)</xsl:when>
            <xsl:when test="$country='ATF'">Französische Süd- und Antarktisgebiete</xsl:when>
            <xsl:when test="$country='ATG'">Antigua und Barbuda</xsl:when>
            <xsl:when test="$country='AUS'">Australien</xsl:when>
            <xsl:when test="$country='AUT'">Österreich</xsl:when>
            <xsl:when test="$country='AZE'">Aserbaidschan</xsl:when>
            <xsl:when test="$country='BDI'">Burundi</xsl:when>
            <xsl:when test="$country='BEL'">Belgien</xsl:when>
            <xsl:when test="$country='BEN'">Benin</xsl:when>
            <xsl:when test="$country='BES'">Bonaire, Sint Eustatius und Saba (Niederlande</xsl:when>
            <xsl:when test="$country='BFA'">Burkina Faso</xsl:when>
            <xsl:when test="$country='BGD'">Bangladesch</xsl:when>
            <xsl:when test="$country='BGR'">Bulgarien</xsl:when>
            <xsl:when test="$country='BHR'">Bahrain</xsl:when>
            <xsl:when test="$country='BHS'">Bahamas</xsl:when>
            <xsl:when test="$country='BIH'">Bosnien und Herzegowina</xsl:when>
            <xsl:when test="$country='BLM'">Saint-Barthélemy</xsl:when>
            <xsl:when test="$country='BLR'">Belarus (Weißrussland)</xsl:when>
            <xsl:when test="$country='BLZ'">Belize</xsl:when>
            <xsl:when test="$country='BMU'">Bermuda</xsl:when>
            <xsl:when test="$country='BOL'">Bolivien</xsl:when>
            <xsl:when test="$country='BRA'">Brasilien</xsl:when>
            <xsl:when test="$country='BRB'">Barbados</xsl:when>
            <xsl:when test="$country='BRN'">Brunei Darussalam</xsl:when>
            <xsl:when test="$country='BTN'">Bhutan</xsl:when>
            <xsl:when test="$country='BUR'">Burma (jetzt Myanmar)</xsl:when>
            <xsl:when test="$country='BVT'">Bouvetinsel</xsl:when>
            <xsl:when test="$country='BWA'">Botsuana</xsl:when>
            <xsl:when test="$country='CAF'">Zentralafrikanische Republik</xsl:when>
            <xsl:when test="$country='CAN'">Kanada</xsl:when>
            <xsl:when test="$country='CCK'">Kokosinseln</xsl:when>
            <xsl:when test="$country='CHE'">Schweiz (Confoederatio Helvetica)</xsl:when>
            <xsl:when test="$country='CHL'">Chile</xsl:when>
            <xsl:when test="$country='CHN'">China</xsl:when>
            <xsl:when test="$country='CIV'">Côte dIvoire (Elfenbeinküste)</xsl:when>
            <xsl:when test="$country='CMR'">Kamerun</xsl:when>
            <xsl:when test="$country='COD'">Kongo</xsl:when>
            <xsl:when test="$country='COG'">Republik Kongo</xsl:when>
            <xsl:when test="$country='COK'">Cookinseln</xsl:when>
            <xsl:when test="$country='COL'">Kolumbien</xsl:when>
            <xsl:when test="$country='COM'">Komoren</xsl:when>
            <xsl:when test="$country='CPT'">Clipperton (reserviert für ITU)</xsl:when>
            <xsl:when test="$country='CPV'">Kap Verde</xsl:when>
            <xsl:when test="$country='CRI'">Costa Rica</xsl:when>
            <xsl:when test="$country='CSK'">Tschechoslowakei (ehemalig)</xsl:when>
            <xsl:when test="$country='CUB'">Kuba</xsl:when>
            <xsl:when test="$country='CUW'">Curaçao</xsl:when>
            <xsl:when test="$country='CXR'">Weihnachtsinsel</xsl:when>
            <xsl:when test="$country='CYM'">Kaimaninseln</xsl:when>
            <xsl:when test="$country='CYP'">Zypern</xsl:when>
            <xsl:when test="$country='CZE'">Tschechische Republik</xsl:when>
            <xsl:when test="$country='DEU'">Deutschland</xsl:when>
            <xsl:when test="$country='DGA'">Diego Garcia (reserviert für ITU)</xsl:when>
            <xsl:when test="$country='DJI'">Dschibuti</xsl:when>
            <xsl:when test="$country='DMA'">Dominica</xsl:when>
            <xsl:when test="$country='DNK'">Dänemark</xsl:when>
            <xsl:when test="$country='DOM'">Dominikanische Republik</xsl:when>
            <xsl:when test="$country='DZA'">Algerien</xsl:when>
            <xsl:when test="$country='ECU'">Ecuador</xsl:when>
            <xsl:when test="$country='EGY'">Ägypten</xsl:when>
            <xsl:when test="$country='ERI'">Eritrea</xsl:when>
            <xsl:when test="$country='ESH'">Westsahara</xsl:when>
            <xsl:when test="$country='ESP'">Spanien</xsl:when>
            <xsl:when test="$country='EST'">Estland</xsl:when>
            <xsl:when test="$country='ETH'">Äthiopien</xsl:when>
            <xsl:when test="$country='FIN'">Finnland</xsl:when>
            <xsl:when test="$country='FJI'">Fidschi</xsl:when>
            <xsl:when test="$country='FLK'">Falklandinseln</xsl:when>
            <xsl:when test="$country='FRA'">Frankreich</xsl:when>
            <xsl:when test="$country='FRO'">Färöer</xsl:when>
            <xsl:when test="$country='FSM'">Mikronesien</xsl:when>
            <xsl:when test="$country='FXX'">(europ. Frankreich ohne Übersee-Départements)</xsl:when>
            <xsl:when test="$country='GAB'">Gabun</xsl:when>
            <xsl:when test="$country='GBR'">Vereinigtes Königreich Großbritannien und Nordirland</xsl:when>
            <xsl:when test="$country='GEO'">Georgien</xsl:when>
            <xsl:when test="$country='GGY'">Guernsey (Kanalinsel)</xsl:when>
            <xsl:when test="$country='GHA'">Ghana</xsl:when>
            <xsl:when test="$country='GIB'">Gibraltar</xsl:when>
            <xsl:when test="$country='GIN'">Guinea</xsl:when>
            <xsl:when test="$country='GLP'">Guadeloupe</xsl:when>
            <xsl:when test="$country='GMB'">Gambia</xsl:when>
            <xsl:when test="$country='GNB'">Guinea-Bissau</xsl:when>
            <xsl:when test="$country='GNQ'">Äquatorialguinea</xsl:when>
            <xsl:when test="$country='GRC'">Griechenland</xsl:when>
            <xsl:when test="$country='GRD'">Grenada</xsl:when>
            <xsl:when test="$country='GRL'">Grönland</xsl:when>
            <xsl:when test="$country='GTM'">Guatemala</xsl:when>
            <xsl:when test="$country='GUF'">Französisch-Guayana</xsl:when>
            <xsl:when test="$country='GUM'">Guam</xsl:when>
            <xsl:when test="$country='GUY'">Guyana</xsl:when>
            <xsl:when test="$country='HKG'">Hongkong</xsl:when>
            <xsl:when test="$country='HMD'">Heard- und McDonald-Inseln</xsl:when>
            <xsl:when test="$country='HND'">Honduras</xsl:when>
            <xsl:when test="$country='HRV'">Kroatien</xsl:when>
            <xsl:when test="$country='HTI'">Haiti</xsl:when>
            <xsl:when test="$country='HUN'">Ungarn</xsl:when>
            <xsl:when test="$country='IDN'">Indonesien</xsl:when>
            <xsl:when test="$country='IMN'">Insel Man</xsl:when>
            <xsl:when test="$country='IND'">Indien</xsl:when>
            <xsl:when test="$country='IOT'">Britisches Territorium im Indischen Ozean</xsl:when>
            <xsl:when test="$country='IRL'">Irland</xsl:when>
            <xsl:when test="$country='IRN'">Iran</xsl:when>
            <xsl:when test="$country='IRQ'">Irak</xsl:when>
            <xsl:when test="$country='ISL'">Island</xsl:when>
            <xsl:when test="$country='ISR'">Israel</xsl:when>
            <xsl:when test="$country='ITA'">Italien</xsl:when>
            <xsl:when test="$country='JAM'">Jamaika</xsl:when>
            <xsl:when test="$country='JEY'">Jersey (Kanalinsel)</xsl:when>
            <xsl:when test="$country='JOR'">Jordanien</xsl:when>
            <xsl:when test="$country='JPN'">Japan</xsl:when>
            <xsl:when test="$country='KAZ'">Kasachstan</xsl:when>
            <xsl:when test="$country='KEN'">Kenia</xsl:when>
            <xsl:when test="$country='KGZ'">Kirgisistan</xsl:when>
            <xsl:when test="$country='KHM'">Kambodscha</xsl:when>
            <xsl:when test="$country='KIR'">Kiribati</xsl:when>
            <xsl:when test="$country='KNA'">St. Kitts und Nevis</xsl:when>
            <xsl:when test="$country='KOR'">Korea</xsl:when>
            <xsl:when test="$country='KOS'">Kosovo, Republik</xsl:when>
            <xsl:when test="$country='KWT'">Kuwait</xsl:when>
            <xsl:when test="$country='LAO'">Laos</xsl:when>
            <xsl:when test="$country='LBN'">Libanon</xsl:when>
            <xsl:when test="$country='LBR'">Liberia</xsl:when>
            <xsl:when test="$country='LBY'">Libysch-Arabische Dschamahirija (Libyen)</xsl:when>
            <xsl:when test="$country='LCA'">St. Lucia</xsl:when>
            <xsl:when test="$country='LIE'">Liechtenstein</xsl:when>
            <xsl:when test="$country='LKA'">Sri Lanka</xsl:when>
            <xsl:when test="$country='LSO'">Lesotho</xsl:when>
            <xsl:when test="$country='LTU'">Litauen</xsl:when>
            <xsl:when test="$country='LUX'">Luxemburg</xsl:when>
            <xsl:when test="$country='LVA'">Lettland</xsl:when>
            <xsl:when test="$country='MAC'">Macao</xsl:when>
            <xsl:when test="$country='MAF'">Saint-Martin (franz. Teil)</xsl:when>
            <xsl:when test="$country='MAR'">Marokko</xsl:when>
            <xsl:when test="$country='MCO'">Monaco</xsl:when>
            <xsl:when test="$country='MDA'">Moldawien (Republik Moldau)</xsl:when>
            <xsl:when test="$country='MDG'">Madagaskar</xsl:when>
            <xsl:when test="$country='MDV'">Malediven</xsl:when>
            <xsl:when test="$country='MEX'">Mexiko</xsl:when>
            <xsl:when test="$country='MHL'">Marshallinseln</xsl:when>
            <xsl:when test="$country='MKD'">Mazedonien</xsl:when>
            <xsl:when test="$country='MLI'">Mali</xsl:when>
            <xsl:when test="$country='MLT'">Malta</xsl:when>
            <xsl:when test="$country='MMR'">Myanmar (Burma)</xsl:when>
            <xsl:when test="$country='MNE'">Montenegro</xsl:when>
            <xsl:when test="$country='MNG'">Mongolei</xsl:when>
            <xsl:when test="$country='MNP'">Nördliche Marianen</xsl:when>
            <xsl:when test="$country='MOZ'">Mosambik</xsl:when>
            <xsl:when test="$country='MRT'">Mauretanien</xsl:when>
            <xsl:when test="$country='MSR'">Montserrat</xsl:when>
            <xsl:when test="$country='MTQ'">Martinique</xsl:when>
            <xsl:when test="$country='MUS'">Mauritius</xsl:when>
            <xsl:when test="$country='MWI'">Malawi</xsl:when>
            <xsl:when test="$country='MYS'">Malaysia</xsl:when>
            <xsl:when test="$country='MYT'">Mayotte</xsl:when>
            <xsl:when test="$country='NAM'">Namibia</xsl:when>
            <xsl:when test="$country='NCL'">Neukaledonien</xsl:when>
            <xsl:when test="$country='NER'">Niger</xsl:when>
            <xsl:when test="$country='NFK'">Norfolkinsel</xsl:when>
            <xsl:when test="$country='NGA'">Nigeria</xsl:when>
            <xsl:when test="$country='NIC'">Nicaragua</xsl:when>
            <xsl:when test="$country='NIU'">Niue</xsl:when>
            <xsl:when test="$country='NLD'">Niederlande</xsl:when>
            <xsl:when test="$country='NOR'">Norwegen</xsl:when>
            <xsl:when test="$country='NPL'">Nepal</xsl:when>
            <xsl:when test="$country='NRU'">Nauru</xsl:when>
            <xsl:when test="$country='NTZ'">Neutrale Zone (Saudi-Arabien und Irak)</xsl:when>
            <xsl:when test="$country='NZL'">Neuseeland</xsl:when>
            <xsl:when test="$country='OMN'">Oman</xsl:when>
            <xsl:when test="$country='PAK'">Pakistan</xsl:when>
            <xsl:when test="$country='PAN'">Panama</xsl:when>
            <xsl:when test="$country='PCN'">Pitcairninseln</xsl:when>
            <xsl:when test="$country='PER'">Peru</xsl:when>
            <xsl:when test="$country='PHL'">Philippinen</xsl:when>
            <xsl:when test="$country='PLW'">Palau</xsl:when>
            <xsl:when test="$country='PNG'">Papua-Neuguinea</xsl:when>
            <xsl:when test="$country='POL'">Polen</xsl:when>
            <xsl:when test="$country='PRI'">Puerto Rico</xsl:when>
            <xsl:when test="$country='PRK'">Korea</xsl:when>
            <xsl:when test="$country='PRT'">Portugal</xsl:when>
            <xsl:when test="$country='PRY'">Paraguay</xsl:when>
            <xsl:when test="$country='PSE'">Palästinensische Autonomiegebiete</xsl:when>
            <xsl:when test="$country='PYF'">Französisch-Polynesien</xsl:when>
            <xsl:when test="$country='QAT'">Katar</xsl:when>
            <xsl:when test="$country='REU'">Réunion</xsl:when>
            <xsl:when test="$country='ROU'">Rumänien</xsl:when>
            <xsl:when test="$country='RUS'">Russische Föderation</xsl:when>
            <xsl:when test="$country='RWA'">Ruanda</xsl:when>
            <xsl:when test="$country='SAU'">Saudi-Arabien</xsl:when>
            <xsl:when test="$country='SCG'">Serbien und Montenegro (ehemalig)</xsl:when>
            <xsl:when test="$country='SDN'">Sudan</xsl:when>
            <xsl:when test="$country='SEN'">Senegal</xsl:when>
            <xsl:when test="$country='SGP'">Singapur</xsl:when>
            <xsl:when test="$country='SGS'">Südgeorgien und die Südlichen Sandwichinseln</xsl:when>
            <xsl:when test="$country='SHN'">St. Helena</xsl:when>
            <xsl:when test="$country='SJM'">Svalbard und Jan Mayen</xsl:when>
            <xsl:when test="$country='SLB'">Salomonen</xsl:when>
            <xsl:when test="$country='SLE'">Sierra Leone</xsl:when>
            <xsl:when test="$country='SLV'">El Salvador</xsl:when>
            <xsl:when test="$country='SMR'">San Marino</xsl:when>
            <xsl:when test="$country='SOM'">Somalia</xsl:when>
            <xsl:when test="$country='SPM'">Saint-Pierre und Miquelon</xsl:when>
            <xsl:when test="$country='SRB'">Serbien</xsl:when>
            <xsl:when test="$country='SSD'">Südsudan</xsl:when>
            <xsl:when test="$country='STP'">São Tomé und Príncipe</xsl:when>
            <xsl:when test="$country='SUN'">UdSSR (jetzt: Russische Föderation)</xsl:when>
            <xsl:when test="$country='SUR'">Suriname</xsl:when>
            <xsl:when test="$country='SVK'">Slowakei</xsl:when>
            <xsl:when test="$country='SVN'">Slowenien</xsl:when>
            <xsl:when test="$country='SWE'">Schweden</xsl:when>
            <xsl:when test="$country='SWZ'">Swasiland</xsl:when>
            <xsl:when test="$country='SXM'">Sint Maarten (niederl. Teil)</xsl:when>
            <xsl:when test="$country='SYC'">Seychellen</xsl:when>
            <xsl:when test="$country='SYR'">Syrien</xsl:when>
            <xsl:when test="$country='TAA'">Tristan da Cunha (verwaltet von St. Helena)</xsl:when>
            <xsl:when test="$country='TCA'">Turks- und Caicosinseln</xsl:when>
            <xsl:when test="$country='TCD'">Tschad</xsl:when>
            <xsl:when test="$country='TGO'">Togo</xsl:when>
            <xsl:when test="$country='THA'">Thailand</xsl:when>
            <xsl:when test="$country='TJK'">Tadschikistan</xsl:when>
            <xsl:when test="$country='TKL'">Tokelau</xsl:when>
            <xsl:when test="$country='TKM'">Turkmenistan</xsl:when>
            <xsl:when test="$country='TLS'">Osttimor (Timor-Leste)</xsl:when>
            <xsl:when test="$country='TMP'">Osttimor (alt)</xsl:when>
            <xsl:when test="$country='TON'">Tonga</xsl:when>
            <xsl:when test="$country='TTO'">Trinidad und Tobago</xsl:when>
            <xsl:when test="$country='TUN'">Tunesien</xsl:when>
            <xsl:when test="$country='TUR'">Türkei</xsl:when>
            <xsl:when test="$country='TUV'">Tuvalu</xsl:when>
            <xsl:when test="$country='TWN'">Republik China (Taiwan)</xsl:when>
            <xsl:when test="$country='TZA'">Tansania</xsl:when>
            <xsl:when test="$country='UGA'">Uganda</xsl:when>
            <xsl:when test="$country='UKR'">Ukraine</xsl:when>
            <xsl:when test="$country='UMI'">United States Minor Outlying Islands</xsl:when>
            <xsl:when test="$country='URY'">Uruguay</xsl:when>
            <xsl:when test="$country='USA'">Vereinigte Staaten von Amerika</xsl:when>
            <xsl:when test="$country='UZB'">Usbekistan</xsl:when>
            <xsl:when test="$country='VAT'">Vatikanstadt</xsl:when>
            <xsl:when test="$country='VCT'">St. Vincent und die Grenadinen</xsl:when>
            <xsl:when test="$country='VEN'">Venezuela</xsl:when>
            <xsl:when test="$country='VGB'">Britische Jungferninseln</xsl:when>
            <xsl:when test="$country='VIR'">Amerikanische Jungferninseln</xsl:when>
            <xsl:when test="$country='VNM'">Vietnam</xsl:when>
            <xsl:when test="$country='VUT'">Vanuatu</xsl:when>
            <xsl:when test="$country='WLF'">Wallis und Futuna</xsl:when>
            <xsl:when test="$country='WSM'">Samoa</xsl:when>
            <xsl:when test="$country='XKS'">Kosovo</xsl:when>
            <xsl:when test="$country='XXA'">Staatenlos</xsl:when>
            <xsl:when test="$country='XXB'">Flüchtling gemäß Genfer Flüchtlingskonvention (GFK) von 1951</xsl:when>
            <xsl:when test="$country='XXC'">Anderer Flüchtling</xsl:when>
            <xsl:when test="$country='XXX'">Unbekannt</xsl:when>
            <xsl:when test="$country='YEM'">Jemen</xsl:when>
            <xsl:when test="$country='YUG'">Jugoslawien (ehemalig)</xsl:when>
            <xsl:when test="$country='ZAF'">Südafrika</xsl:when>
            <xsl:when test="$country='ZAR'">Zaire (jetzt Demokratische Republik Kongo)</xsl:when>
            <xsl:when test="$country='ZMB'">Sambia</xsl:when>
            <xsl:when test="$country='ZWE'">Simbabwe</xsl:when>
            <xsl:otherwise><xsl:value-of select="$country" /></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationActionTranslated">
        <xsl:param name="actionCode" />
        
        <xsl:choose>
            <xsl:when test="$actionCode='_Rot'"></xsl:when>
            <xsl:when test="$actionCode='424272000'">Vereinbaren Sie jetzt einen Termin - Impfschutz unklar.</xsl:when>
            <xsl:when test="$actionCode='789540001'">Vereinbaren Sie jetzt einen Termin - Impfung dringend empfohlen.</xsl:when>
            <xsl:when test="$actionCode='_Gelb'"></xsl:when>
            <xsl:when test="$actionCode='171279008'">Vereinbaren Sie jetzt einen Termin - Impfung fällig.</xsl:when>
            <xsl:when test="$actionCode='789539003'">Vereinbaren Sie einen Termin - Impfung bald fällig.</xsl:when>
            <xsl:when test="$actionCode='_Gelb-leer'"></xsl:when>
            <xsl:when test="$actionCode='122541000119104'">Erste Impfung zukünftig empfohlen</xsl:when>
            <xsl:when test="$actionCode='_Grün'"></xsl:when>
            <xsl:when test="$actionCode='191441008'">Keine Impfung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='713404003'">Keine weitere Impfung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='171258008'">Derzeit keine (weitere) Handlung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='_Blau'"></xsl:when>
            <xsl:when test="$actionCode='723620004'">Empfohlene Impfung, nächster Termin nicht berechenbar. Vereinbaren Sie einen Termin.</xsl:when>
            <xsl:when test="$actionCode='171288004'">Empfohlene Impfung, keine Daten erfasst. Vereinbaren Sie gegebenenfalls einen Termin.</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$actionCode" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationActionTranslatedLong">
        <xsl:param name="actionCode" />
        
        <xsl:choose>
            <xsl:when test="$actionCode='_Rot'"></xsl:when>
            <xsl:when test="$actionCode='424272000'">Ihr Impfschutz ist zu lange nicht mehr erneuert worden. Bitte vereinbaren Sie einen Termin zur ärztlichen Abklärung.</xsl:when>
            <xsl:when test="$actionCode='789540001'">Laut Empfehlung sollten Sie sich dringend impfen lassen. Bitte vereinbaren Sie einen Termin zur ärztlichen Abklärung.</xsl:when>
            <xsl:when test="$actionCode='_Gelb'"></xsl:when>
            <xsl:when test="$actionCode='171279008'">Laut Empfehlung ist eine Impfung erforderlich. Bitte vereinbaren Sie einen Termin zur ärztlichen Abklärung.</xsl:when>
            <xsl:when test="$actionCode='789539003'">Laut Empfehlungen steht bald eine Impfung an.</xsl:when>
            <xsl:when test="$actionCode='_Gelb-leer'"></xsl:when>
            <xsl:when test="$actionCode='122541000119104'">Sie haben diese Impfung noch nicht erhalten. Diese Impfung ist für Sie laut nationalem Impfplan zukünftig empfohlen.  Im Zeitraum der nächsten 3 Monate ist noch keine Impfung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='_Grün'"></xsl:when>
            <xsl:when test="$actionCode='191441008'">Schutz nach durchgemachter Erkrankung, keine weiteren Impfungen erforderlich.</xsl:when>
            <xsl:when test="$actionCode='713404003'">Derzeit laut nationalem Impfplan keine Impfung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='171258008'">Im Zeitraum der nächsten 3 Monate ist keine Impfung erforderlich.</xsl:when>
            <xsl:when test="$actionCode='_Blau'"></xsl:when>
            <xsl:when test="$actionCode='723620004'">Diese Impfung ist für Sie laut nationalem Impfplan empfohlen. Der nächste Termin kann nicht berechnet werden. Vereinbaren Sie einen Termin zur ärztlichen Abklärung.</xsl:when>
            <xsl:when test="$actionCode='171288004'">Diese Impfung ist für Sie laut nationalem Impfplan empfohlen. Es sind dazu noch keine Daten in Ihrem e-Impfpass  gespeichert. Bitte klären Sie bei Bedarf ärztlich ab, ob bzw. wann eine Impfung erforderlich ist.</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$actionCode" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="renderELGAImmunizationTargetAndereImpfungen">
        
        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code = '871772009' or @code = '427036009' or @code = '836389008' or @code = '840564009']">
            <xsl:call-template name="renderVaccinationSectionEntryOther">
                <xsl:with-param name="immunizationTargetId" select="@code"/>
                <xsl:with-param name="section" select="'other'" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="hasOtherVaccinations">
        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code = '871772009' or @code = '427036009' or @code = '836389008' or @code = '840564009']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="isOtherVaccination">
        <xsl:param name="immunizationTargetId" />
        <xsl:choose>
            <xsl:when test="$immunizationTargetId = '871772009' or $immunizationTargetId = '427036009' or $immunizationTargetId = '836389008' or $immunizationTargetId = '840564009'">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="renderELGAImmunizationTargetEmpfohleneImpfungen">
        
        <xsl:variable name="isUpdate">
            <xsl:call-template name="isUpdateDocument" />
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$isUpdate='true'">
                <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code = '836387005' or @code = '836381006' or @code = '1101000221104' or @code = '601000221108' or @code = '1031000221108' or @code = '836380007' or @code = '836374004' or @code = '836398006' or @code = '836382004' or @code = '871738001' or @code = '836388000' or @code = '871873006' or @code = '1981000221108' or @code = '871866001' or @code = '836379009' or @code = '836403007' or @code = '836495005' or @code = '836375003' or @code = '836377006' or @code = '871919004' or @code = '836401009' or @code = '871871008']">
                    <xsl:variable name="isGroupVaccination">
                        <xsl:call-template name="isGruppenImmunization">
                            <xsl:with-param name="immunizationTargetId" select="@code" />
                        </xsl:call-template>
                    </xsl:variable>
                    <xsl:call-template name="renderVaccinationSectionEntry">
                        <xsl:with-param name="immunizationTargetId" select="@code"/>
                        <xsl:with-param name="section" select="'general'" />
                        <xsl:with-param name="showGroupEntry" select="$isGroupVaccination" />
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="isGroupVaccination836387005">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836387005'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836387005='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836387005']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836387005'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836387005'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836381006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836381006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836381006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836381006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836381006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836381006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871896006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871896006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871896006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871896006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871896006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871896006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871917002">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871917002'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871917002='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871917002']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871917002'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871917002'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871889009">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871889009'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871889009='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871889009']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871889009'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871889009'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836508001">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836508001'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836508001='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836508001']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836508001'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836508001'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836503005">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836503005'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836503005='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836503005']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836503005'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836503005'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836507006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836507006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836507006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836507006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836507006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836507006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871928003">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871928003'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871928003='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871928003']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871928003'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871928003'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination838279002">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'838279002'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination838279002='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='838279002']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'838279002'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'838279002'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871892008">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871892008'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871892008='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871892008']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871892008'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871892008'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836505003">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836505003'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836505003='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836505003']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836505003'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836505003'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836502000">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836502000'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836502000='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836502000']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836502000'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836502000'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871929006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871929006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871929006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871929006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871929006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871929006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination1101000221104">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'1101000221104'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination1101000221104='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='1101000221104']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'1101000221104'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'1101000221104'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination601000221108">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'601000221108'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination601000221108='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='601000221108']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'601000221108'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'601000221108'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination1031000221108">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'1031000221108'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination1031000221108='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='1031000221108']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'1031000221108'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'1031000221108'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836380007">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836380007'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836380007='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836380007']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836380007'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836380007'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836504004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836504004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836504004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836504004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836504004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836504004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836374004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836374004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836374004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836374004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836374004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836374004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836493003">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836493003'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836493003='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836493003']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836493003'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836493003'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination865946000">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'865946000'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination865946000='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='865946000']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'865946000'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'865946000'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836398006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836398006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836398006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836398006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836398006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836398006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836382004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836382004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836382004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836382004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836382004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836382004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871738001">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871738001'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871738001='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871738001']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871738001'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871738001'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836499004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836499004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836499004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836499004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836499004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836499004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836494009">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836494009'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836494009='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836494009']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836494009'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836494009'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination838280004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'838280004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination838280004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='838280004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'838280004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'838280004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836388000">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836388000'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836388000='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836388000']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836388000'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836388000'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871873006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871873006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871873006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871873006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871873006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871873006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination1981000221108">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'1981000221108'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination1981000221108='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='1981000221108']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'1981000221108'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'1981000221108'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871866001">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871866001'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871866001='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871866001']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871866001'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871866001'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836379009">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836379009'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836379009='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836379009']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836379009'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836379009'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836403007">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836403007'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836403007='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836403007']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836403007'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836403007'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836495005">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836495005'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836495005='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836495005']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836495005'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836495005'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836375003">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836375003'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836375003='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836375003']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836375003'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836375003'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836501007">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836501007'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836501007='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836501007']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836501007'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836501007'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836377006">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836377006'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836377006='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836377006']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836377006'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836377006'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871919004">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871919004'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871919004='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871919004']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871919004'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871919004'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination836401009">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'836401009'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination836401009='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='836401009']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'836401009'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'836401009'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:variable name="isGroupVaccination871871008">
                    <xsl:call-template name="isGruppenImmunization">
                        <xsl:with-param name="immunizationTargetId" select="'871871008'" />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$isGroupVaccination871871008='true'">
                        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code='871871008']">
                            <xsl:call-template name="renderVaccinationSectionEntry">
                                <xsl:with-param name="immunizationTargetId" select="'871871008'"/>
                                <xsl:with-param name="section" select="'general'" />
                                <xsl:with-param name="showGroupEntry" select="string(true())" />
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="'871871008'"/>
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="isGeneralVaccination">
        <xsl:param name="immunizationTargetId" />
        <xsl:choose>
            <xsl:when test="$immunizationTargetId = '836387005' or $immunizationTargetId = '836381006' or $immunizationTargetId = '871896006' or $immunizationTargetId = '871917002' or $immunizationTargetId = '871889009' or $immunizationTargetId = '836508001' or $immunizationTargetId = '836503005' or $immunizationTargetId = '836507006' or $immunizationTargetId = '871928003' or $immunizationTargetId = '838279002' or $immunizationTargetId = '871892008' or $immunizationTargetId = '836505003' or $immunizationTargetId = '836502000' or $immunizationTargetId = '871929006' or $immunizationTargetId = '1101000221104' or $immunizationTargetId = '601000221108' or $immunizationTargetId = '1031000221108' or $immunizationTargetId = '836380007' or $immunizationTargetId = '836504004' or $immunizationTargetId = '836374004' or $immunizationTargetId = '836493003' or $immunizationTargetId = '865946000' or $immunizationTargetId = '836398006' or $immunizationTargetId = '836382004' or $immunizationTargetId = '871738001' or $immunizationTargetId = '836499004' or $immunizationTargetId = '836494009' or $immunizationTargetId = '838280004' or $immunizationTargetId = '836388000' or $immunizationTargetId = '871873006' or $immunizationTargetId = '1981000221108' or $immunizationTargetId = '871866001' or $immunizationTargetId = '836379009' or $immunizationTargetId = '836403007' or $immunizationTargetId = '836495005' or $immunizationTargetId = '836375003' or $immunizationTargetId = '836501007' or $immunizationTargetId = '836377006' or $immunizationTargetId = '871919004' or $immunizationTargetId = '836401009' or $immunizationTargetId = '871871008'">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    
    <xsl:template name="isGruppenImmunization">
        <xsl:param name="immunizationTargetId" />
        <xsl:choose>
            <xsl:when test="$immunizationTargetId = '871896006' or $immunizationTargetId = '871917002' or $immunizationTargetId = '871889009' or $immunizationTargetId = '836508001' or $immunizationTargetId = '836503005' or $immunizationTargetId = '836507006' or $immunizationTargetId = '871928003' or $immunizationTargetId = '838279002' or $immunizationTargetId = '871892008' or $immunizationTargetId = '836505003' or $immunizationTargetId = '836502000' or $immunizationTargetId = '871929006' or $immunizationTargetId = '836504004' or $immunizationTargetId = '836493003' or $immunizationTargetId = '865946000' or $immunizationTargetId = '836499004' or $immunizationTargetId = '836494009' or $immunizationTargetId = '838280004' or $immunizationTargetId = '836501007'">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationTargetName">
        <xsl:param name="immunizationTargetId" />
        
        <xsl:choose>
            <xsl:when test="$immunizationTargetId='_Einzel'"></xsl:when>
            <xsl:when test="$immunizationTargetId='_Empfohlene'"></xsl:when>
            <xsl:when test="$immunizationTargetId='836381006'">Diphtherie</xsl:when>
            <xsl:when test="$immunizationTargetId='836403007'">Frühsommermeningoencephalitis (FSME, Zecken-Impfung)</xsl:when>
            <xsl:when test="$immunizationTargetId='836380007'">Haemophlius-influenzae B</xsl:when>
            <xsl:when test="$immunizationTargetId='836375003'">Hepatitis A</xsl:when>
            <xsl:when test="$immunizationTargetId='836374004'">Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='871919004'">Herpes Zoster (Gürtelrose)</xsl:when>
            <xsl:when test="$immunizationTargetId='836379009'">Humane Papillomaviren (HPV)</xsl:when>
            <xsl:when test="$immunizationTargetId='836377006'">Influenza ('echte Grippe')</xsl:when>
            <xsl:when test="$immunizationTargetId='836382004'">Masern</xsl:when>
            <xsl:when test="$immunizationTargetId='836401009'">Meningokokken</xsl:when>
            <xsl:when test="$immunizationTargetId='1981000221108'">Meningokokken B</xsl:when>
            <xsl:when test="$immunizationTargetId='871866001'">Meningokokken C</xsl:when>
            <xsl:when test="$immunizationTargetId='871871008'">Meningokokken AC</xsl:when>
            <xsl:when test="$immunizationTargetId='871873006'">Meningokokken ACWY</xsl:when>
            <xsl:when test="$immunizationTargetId='871738001'">Mumps</xsl:when>
            <xsl:when test="$immunizationTargetId='601000221108'">Pertussis (Keuchhusten)</xsl:when>
            <xsl:when test="$immunizationTargetId='836398006'">Pneumokokken</xsl:when>
            <xsl:when test="$immunizationTargetId='1031000221108'">Poliomyelitis (Kinderlähmung)</xsl:when>
            <xsl:when test="$immunizationTargetId='836387005'">Rotaviren</xsl:when>
            <xsl:when test="$immunizationTargetId='836388000'">Röteln</xsl:when>
            <xsl:when test="$immunizationTargetId='1101000221104'">Tetanus (Wundstarrkrampf)</xsl:when>
            <xsl:when test="$immunizationTargetId='836495005'">Varizellen (Windpocken, Feuchtblattern)</xsl:when>
            <xsl:when test="$immunizationTargetId='_Reise'"></xsl:when>
            <xsl:when test="$immunizationTargetId='836383009'">Cholera</xsl:when>
            <xsl:when test="$immunizationTargetId='836385002'">Gelbfieber</xsl:when>
            <xsl:when test="$immunizationTargetId='836378001'">Japanische Encephalitis</xsl:when>
            <xsl:when test="$immunizationTargetId='836393002'">Tollwut</xsl:when>
            <xsl:when test="$immunizationTargetId='836390004'">Typhus</xsl:when>
            <xsl:when test="$immunizationTargetId='836402002'">Tuberkulose</xsl:when>
            <xsl:when test="$immunizationTargetId='_Weitere'"></xsl:when>
            <xsl:when test="$immunizationTargetId='871772009'">H1N1 Grippeviren (Influenza)</xsl:when>
            <xsl:when test="$immunizationTargetId='427036009'">H5N1 Grippeviren (Influenza)</xsl:when>
            <xsl:when test="$immunizationTargetId='836389008'">Pocken</xsl:when>
            <xsl:when test="$immunizationTargetId='840564009'">Leptospirose</xsl:when>
            <xsl:when test="$immunizationTargetId='_Kombinationen'"></xsl:when>
            <xsl:when test="$immunizationTargetId='871896006'">Diphtherie-Haemophilus-influenzae B-Pertussis-Poliomyelitis-Tetanus-Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='871917002'">Diphtheria-Tetanus-Pertussis-Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='871889009'">Diphtherie-Pertussis-Hepatitis B-Polio</xsl:when>
            <xsl:when test="$immunizationTargetId='836508001'">Diphtherie-Pertussis-Poliomyelitis-Tetanus</xsl:when>
            <xsl:when test="$immunizationTargetId='836503005'">Diphtherie-Pertussis-Tetanus</xsl:when>
            <xsl:when test="$immunizationTargetId='836507006'">Diphtherie-Pertussis-Tetanus-Haemophilus-influenzae B</xsl:when>
            <xsl:when test="$immunizationTargetId='871928003'">Diphtherie-Pertussis-Tetanus-Polio-Masern</xsl:when>
            <xsl:when test="$immunizationTargetId='838279002'">Diphtherie-Pertussis-Tetanus-Poliomyelitis-Haemophilus-influenzae B</xsl:when>
            <xsl:when test="$immunizationTargetId='871892008'">Diphtherie-Pertussis-Tetanus-Poliomyelitis-Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='836505003'">Diphtherie-Poliomyelitis-Tetanus</xsl:when>
            <xsl:when test="$immunizationTargetId='836502000'">Diphtherie-Tetanus</xsl:when>
            <xsl:when test="$immunizationTargetId='871929006'">Diphtherie-Tetanus-Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='836504004'">Haemophilus influenzae Type B-Tetanus</xsl:when>
            <xsl:when test="$immunizationTargetId='836493003'">Hepatitis A-Hepatitis B</xsl:when>
            <xsl:when test="$immunizationTargetId='865946000'">Hepatitis B-Haemophilus-influenzae B</xsl:when>
            <xsl:when test="$immunizationTargetId='836499004'">Masern-Mumps</xsl:when>
            <xsl:when test="$immunizationTargetId='836494009'">Masern-Mumps-Röteln</xsl:when>
            <xsl:when test="$immunizationTargetId='838280004'">Masern-Mumps-Röteln-Varizellen</xsl:when>
            <xsl:when test="$immunizationTargetId='836501007'">Typhus-Hepatitis A</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$immunizationTargetId" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="renderELGAImmunizationTargetReiseimpfungen">
        
        <xsl:for-each select="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code = '836383009' or @code = '836385002' or @code = '836378001' or @code = '836393002' or @code = '836390004' or @code = '836402002' or @code = '871896006' or @code = '871917002' or @code = '871889009' or @code = '836508001' or @code = '836503005' or @code = '836507006' or @code = '871928003' or @code = '838279002' or @code = '871892008' or @code = '836505003' or @code = '836502000' or @code = '871929006' or @code = '836504004' or @code = '836493003' or @code = '865946000' or @code = '836499004' or @code = '836494009' or @code = '838280004' or @code = '836501007']">
            <xsl:variable name="immunizationTargetId">
                <xsl:value-of select="@code" />
            </xsl:variable>
            <xsl:variable name="isGroupVaccination">
                <xsl:call-template name="isGruppenImmunization">
                    <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="$isGroupVaccination='true'">
                    <xsl:if test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.1']/../n1:entryRelationship/n1:observation/n1:code[@code=$immunizationTargetId]">
                        <xsl:call-template name="renderVaccinationSectionEntry">
                            <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                            <xsl:with-param name="section" select="'travel'" />
                            <xsl:with-param name="showGroupEntry" select="string(true())" />
                        </xsl:call-template>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="renderVaccinationSectionEntry">
                        <xsl:with-param name="immunizationTargetId" select="$immunizationTargetId"/>
                        <xsl:with-param name="section" select="'travel'" />
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="hasTravelVaccinations">
        <xsl:choose>
            <xsl:when test="//n1:templateId[@root='1.2.40.0.34.6.0.11.3.2']/../n1:code[@code = '836383009' or @code = '836385002' or @code = '836378001' or @code = '836393002' or @code = '836390004' or @code = '836402002']">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="isTravelVaccination">
        <xsl:param name="immunizationTargetId" />
        <xsl:choose>
            <xsl:when test="$immunizationTargetId = '836383009' or $immunizationTargetId = '836385002' or $immunizationTargetId = '836378001' or $immunizationTargetId = '836393002' or $immunizationTargetId = '836390004' or $immunizationTargetId = '836402002'">
                <xsl:value-of select="string(true())" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="string(false())" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationDose">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='B'">Auffrischungsimpfung</xsl:when>
            <xsl:when test="$code='B.I'">Auffrischungsserie Teil 1</xsl:when>
            <xsl:when test="$code='B.II'">Auffrischungsserie Teil 2</xsl:when>
            <xsl:when test="$code='D1'">Dosis 1</xsl:when>
            <xsl:when test="$code='D2'">Dosis 2</xsl:when>
            <xsl:when test="$code='D3'">Dosis 3</xsl:when>
            <xsl:when test="$code='D4'">Dosis 4</xsl:when>
            <xsl:when test="$code='D5'">Dosis 5</xsl:when>
            <xsl:when test="$code='D6'">Dosis 6</xsl:when>
            <xsl:when test="$code='D7'">Dosis 7</xsl:when>
            <xsl:when test="$code='D8'">Dosis 8</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$code" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationScheme">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='SCHEMA001'">Kombinationsschema Di-Te-Pert-HiB-IPV-HepB, Start im 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA002'">Kombinationsschema Di-Te-Pert-HiB-IPV-HepB, Start ab vollendetem 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA003'">Kombinationsschema Di-Te-Pert-HiB-IPV-HepB, Start ab vollendetem 6. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA004'">Kombinationsschema Di-Te-Pert-HiB-IPV-HepB, Indikation</xsl:when>
            <xsl:when test="$code='SCHEMA005'">FSME Grundschema, FSME-Immun</xsl:when>
            <xsl:when test="$code='SCHEMA006'">FSME Grundschema, Encepur</xsl:when>
            <xsl:when test="$code='SCHEMA007'">FSME Indikationsschema, FSME-Immun</xsl:when>
            <xsl:when test="$code='SCHEMA008'">FSME Indikationsschema, Encepur</xsl:when>
            <xsl:when test="$code='SCHEMA009'">FSME Indikationsschema, Encepur</xsl:when>
            <xsl:when test="$code='SCHEMA010'">FSME Schnellschema, Encepur</xsl:when>
            <xsl:when test="$code='SCHEMA011'">Haemophilus influenzae Typ B Indikationsschema</xsl:when>
            <xsl:when test="$code='SCHEMA012'">Hepatitis A Monokomponente Indikationsschema</xsl:when>
            <xsl:when test="$code='SCHEMA013'">Hepatitis AB Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA014'">Hepatitis A Monokomponente Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA015'">Hepatitis AB Schnellschema</xsl:when>
            <xsl:when test="$code='SCHEMA016'">Hepatitis A und Typhus Grundschema, ab vollendetem 16. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA017'">Hepatitis B Monokomponente Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA019'">Hepatitis B erhöhte Antigenmenge Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA020'">HPV Grundschema, bis zum vollendeten 15. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA021'">HPV Grundschema, ab vollendetem 15. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA022'">HPV Indikationsschema, bis zum vollendeten 15. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA023'">Influenza Grundschema, Erstimpfung bis zum vollendeten 9. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA024'">Grundschema Influenza, Erstimpfung ab vollendetem 9. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA025'">MMR Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA026'">MMR Indikationsschema, Erstimpfung ab vollendetem 8. Lebensmonat</xsl:when>
            <xsl:when test="$code='SCHEMA027'">MMR Indikationsschema, Erstimpfung vom vollendeten 6. bis zum vollendeten 8. Lebensmonat</xsl:when>
            <xsl:when test="$code='SCHEMA028'">Meningokokken B Indikationsschema, Erstimpfung 2-5 Monate</xsl:when>
            <xsl:when test="$code='SCHEMA029'">Meningokokken B Grundschema, Erstimpfung 3-5 Monate</xsl:when>
            <xsl:when test="$code='SCHEMA030'">Meningokokken B Grundschema, Erstimpfung 6-11 Monate</xsl:when>
            <xsl:when test="$code='SCHEMA031'">Meningokokken B Grundschema, Erstimpfung 12-23 Monate</xsl:when>
            <xsl:when test="$code='SCHEMA032'">Meningokokken B Grundschema, Erstimpfung 2-18 Jahre, Bexsero</xsl:when>
            <xsl:when test="$code='SCHEMA033'">Meningokokken B Indikationsschema, ab 18 Jahre, Bexsero</xsl:when>
            <xsl:when test="$code='SCHEMA034'">Meningokokken B Indikationsschema, ab 18 Jahre, Trumbenba</xsl:when>
            <xsl:when test="$code='SCHEMA035'">Meningokokken C Indikationsschema, vollendetes 2.- vollendetes 4. Lebensmonat, Neisvac C</xsl:when>
            <xsl:when test="$code='SCHEMA036'">Meningokokken C Indikationsschema, vollendetes 2.- vollendetes 12. Lebensmonat, Menjugate</xsl:when>
            <xsl:when test="$code='SCHEMA037'">Meningokokken C Indikationsschema, vollendetes 4.- vollendetes 12. Lebensmonat, Neisvac C</xsl:when>
            <xsl:when test="$code='SCHEMA038'">Meningokokken C Grundschema, ab vollendetem 12. Lebensmonat</xsl:when>
            <xsl:when test="$code='SCHEMA039'">Meningokokken ACWY Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA040'">Meningokokken ACWY Indikationsschema, ab vollendetem 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA041'">Meningokokken ACWY Indikationsschema, Erstimpfung im 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA042'">Pneumokokken Grundschema, Erstimpfung im 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA043'">Pneumokokken Grundschema, Erstimpfung im 2. bis zum vollendeten 5. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA044'">Pneumokokken Indikationsschema, Erstimpfung im 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA045'">Pneumokokken Indikationsschema, Erstimpfung im 2. bis zum vollendeten 5. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA046'">Pneumokokken Indikationsschema, Erstimpfung ab dem 3. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA050'">Rotavirus Grundschema, 2 Dosen, Erstimpfung vollendete 6.- vollendete 19. Lebenswoche, Rotarix</xsl:when>
            <xsl:when test="$code='SCHEMA051'">Rotavirus Grundschema, 2 Dosen, Erstimpfung vollendete 6.- vollendete 27. Lebenswoche, Rotateq</xsl:when>
            <xsl:when test="$code='SCHEMA052'">Rotavirus Grundschema, 1 Dose, vollendete 19.- vollendete 23. Lebenswoche, Rotarix</xsl:when>
            <xsl:when test="$code='SCHEMA053'">Rotavirus Grundschema, 1 Dose, vollendete 28.- vollendete 32. Lebenswoche, Rotateq</xsl:when>
            <xsl:when test="$code='SCHEMA054'">Rotavirus Grundschema, 3 Dosen, Erstimpfung vollendete 6.- vollendete 23. Lebenswoche, Rotateq</xsl:when>
            <xsl:when test="$code='SCHEMA060'">Varizellen Grundschema, ab vollendetem 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA061'">Kombinationsschema MMRV, ab vollendetem 9. Lebensmonat, MMR - MMRV - V</xsl:when>
            <xsl:when test="$code='SCHEMA062'">Kombinationsschema MMRV, ab vollendetem 12. Lebensmonat, MMRV - MMRV</xsl:when>
            <xsl:when test="$code='SCHEMA063'">Varizellen Indikationsschema, Erstimpfung im 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA064'">Herpes Zoster Grundschema, ab vollendetem 50. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA065'">Gelbfieber Grundschema, ab vollendetem 1. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA066'">Japanische Enzephalitis Grundschema, ab dem vollendeten 3. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA067'">Japanische Enzephalitis Schnellschema, ab vollendetem 18. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA068'">Typhus Grundschema, ab vollendetem 2. Lebensjahr, Typhim Vi</xsl:when>
            <xsl:when test="$code='SCHEMA069'">Typhus Grundschema, ab vollendetem 6. Lebensjahr, Vivotif-Kapseln</xsl:when>
            <xsl:when test="$code='SCHEMA070'">Tollwut Grundschema</xsl:when>
            <xsl:when test="$code='SCHEMA071'">Tollwut Schnellschema</xsl:when>
            <xsl:when test="$code='SCHEMA072'">Tollwut Postexpositionell Essen 4 Dosen</xsl:when>
            <xsl:when test="$code='SCHEMA073'">Tollwut Postexpositionell Essen 5 Dosen</xsl:when>
            <xsl:when test="$code='SCHEMA074'">Tollwut Postexpositionell Zagreb</xsl:when>
            <xsl:when test="$code='SCHEMA075'">Tollwut Postexpositionell mit Tollwut-Vorimpfung</xsl:when>
            <xsl:when test="$code='SCHEMA076'">Cholera Grundschema, Erstimpfung ab dem vollendeten 2. bis zum vollendeten 6. Lebensjahr</xsl:when>
            <xsl:when test="$code='SCHEMA078'">Cholera Grundschema, Erstimpfung ab dem vollendeten 6. Lebensjahr</xsl:when>
            <xsl:otherwise><xsl:text>unbekanntes Impfschema (</xsl:text><xsl:value-of select="$code" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationProduct">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='0056489'">TETANOL PUR FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='0514986'">FSME-IMMUN FSPR 0,5ML NAD F</xsl:when>
            <xsl:when test="$code='0515738'">FSME-IMMUN FSPR 0,5ML NAD F</xsl:when>
            <xsl:when test="$code='1076502'">VAXIGRIP FSPR M.KANUELE</xsl:when>
            <xsl:when test="$code='1079021'">SANDOVAC FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='1258120'">INFLUVAC FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='1260571'">POLIO SALK MER SPRAMP</xsl:when>
            <xsl:when test="$code='1265597'">INFLUVAC FSPR 0,5ML O.KANUEL</xsl:when>
            <xsl:when test="$code='1276939'">ACT-HIB TRSTAMP +LSM</xsl:when>
            <xsl:when test="$code='1290520'">DT-REDUCT MER FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='1292200'">ENGERIX-B SPRAMP 10MCG</xsl:when>
            <xsl:when test="$code='1301057'">HAVRIX FSPR 1440 ERW</xsl:when>
            <xsl:when test="$code='1304498'">TWINRIX ERW 1ML FSPR</xsl:when>
            <xsl:when test="$code='1309515'">TWINRIX KIND 0,5ML FSPR</xsl:when>
            <xsl:when test="$code='1315496'">HAVRIX FSPR 720 JUNIOR</xsl:when>
            <xsl:when test="$code='1316018'">VARILRIX PLV+LSM</xsl:when>
            <xsl:when test="$code='1325750'">PRIORIX IMPFDS</xsl:when>
            <xsl:when test="$code='1329251'">VIVOTIF KPS</xsl:when>
            <xsl:when test="$code='1333991'">TYPHERIX IJLSG 25MCG/0,5ML</xsl:when>
            <xsl:when test="$code='1349762'">FLUAD FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='1350268'">HBVAXPRO SUS INJ 40MCG FLAES</xsl:when>
            <xsl:when test="$code='1364721'">ENGERIX-B SPRAMP 20MCG</xsl:when>
            <xsl:when test="$code='2228368'">TD PUR ERW FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='2228374'">TD PUR ERW FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='2246975'">ENCEPUR FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='2249436'">ENCEPUR FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='2420746'">BOOSTRIX IJSUS 0,5ML</xsl:when>
            <xsl:when test="$code='2427180'">FSME-IMMUN FSPR 0,25ML NAD F</xsl:when>
            <xsl:when test="$code='2427197'">FSME-IMMUN FSPR 0,25ML NAD F</xsl:when>
            <xsl:when test="$code='2427872'">ENCEPUR FSPR 0,25ML KIND</xsl:when>
            <xsl:when test="$code='2434027'">VIATIM IJSUS</xsl:when>
            <xsl:when test="$code='2442831'">HEPATYRIX IJSUS FSPR</xsl:when>
            <xsl:when test="$code='2454461'">RABIPUR PLV LSM 2,5IE/ML</xsl:when>
            <xsl:when test="$code='2454923'">VARIVAX DFL</xsl:when>
            <xsl:when test="$code='2457324'">BOOSTRIX POLIO IJSUS 0,5ML</xsl:when>
            <xsl:when test="$code='2465140'">DUKORAL SUSP+BRGRAN 2X1DOSIS</xsl:when>
            <xsl:when test="$code='2467765'">HBVAXPRO SUS INJ 5MCG 2 KAN</xsl:when>
            <xsl:when test="$code='2467788'">REPEVAX FSPR 0,5ML +KANUELEN</xsl:when>
            <xsl:when test="$code='2467794'">TETRAVAC FSPR +2KANUELE</xsl:when>
            <xsl:when test="$code='2469988'">REVAXIS SPR+2 KANUE</xsl:when>
            <xsl:when test="$code='2469994'">TYPHIM VI FSPR 0,5ML +2 KAN.</xsl:when>
            <xsl:when test="$code='2470017'">STAMARIL DFL+FSPR+2 KANUEL</xsl:when>
            <xsl:when test="$code='2472795'">PROQUAD PLV FSPR +2KAN</xsl:when>
            <xsl:when test="$code='2472803'">ROTATEQ QUETSCHTB 2ML</xsl:when>
            <xsl:when test="$code='2472826'">ZOSTAVAX PLV +LSM IJSUS FSPR</xsl:when>
            <xsl:when test="$code='2479314'">INFANRIX HEXA GLASFL.</xsl:when>
            <xsl:when test="$code='3511764'">MMRVAXPRO PLV FSPR +2KAN</xsl:when>
            <xsl:when test="$code='3513450'">CERVARIX FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='3514171'">GARDASIL SPR +2KAN</xsl:when>
            <xsl:when test="$code='3519599'">HBVAXPRO SUS INJ 10MCG 2 KAN</xsl:when>
            <xsl:when test="$code='3521662'">MENJUGATE PLV +LSM FSPR</xsl:when>
            <xsl:when test="$code='3528434'">FLUVACCINOL INJ-SUS FSPR</xsl:when>
            <xsl:when test="$code='3532424'">NEISVAC-C FSPR 2 NADEL 0,5ML</xsl:when>
            <xsl:when test="$code='3533837'">SYNFLORIX FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='3537551'">IXIARO FSPR</xsl:when>
            <xsl:when test="$code='3539969'">INTANZA 15MCG FSPR</xsl:when>
            <xsl:when test="$code='3756589'">PREVENAR INJ.SUS 13 0,5ML</xsl:when>
            <xsl:when test="$code='3760993'">ROTARIX SUS FAPPLIK.1,5ML</xsl:when>
            <xsl:when test="$code='3761739'">INTANZA 9MCG FSPR</xsl:when>
            <xsl:when test="$code='3762986'">PRIORIX TETRA PLV DFL FSPR</xsl:when>
            <xsl:when test="$code='3782291'">MENVEO PLV IJLSG DFL+DFL</xsl:when>
            <xsl:when test="$code='3904699'">VAQTA FSPR INJ.SUS</xsl:when>
            <xsl:when test="$code='3904713'">VAQTA K FSPR INJ.SUS</xsl:when>
            <xsl:when test="$code='3909165'">NIMENRIX IJLSG FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='3911995'">OPTAFLU INJ-SUS FSPR</xsl:when>
            <xsl:when test="$code='3919867'">OPTAFLU INJ-SUS FSPR</xsl:when>
            <xsl:when test="$code='3920095'">BEXSERO INJ.SUS FSPR</xsl:when>
            <xsl:when test="$code='3925649'">FSME-IMMUN FSPR 0,25ML NAD B</xsl:when>
            <xsl:when test="$code='3925655'">FSME-IMMUN FSPR 0,25ML NAD B</xsl:when>
            <xsl:when test="$code='3927186'">FLUARIX INJ.SUS FSPR O.NADEL</xsl:when>
            <xsl:when test="$code='3928168'">HEXYON IJSUSP FSPR +2 KAN.</xsl:when>
            <xsl:when test="$code='3932448'">FSME-IMMUN FSPR 0,5ML NAD B</xsl:when>
            <xsl:when test="$code='3932454'">FSME-IMMUN FSPR 0,5ML NAD B</xsl:when>
            <xsl:when test="$code='4202025'">FLUENZ TETRA NA-SPRAY</xsl:when>
            <xsl:when test="$code='4202031'">FLUENZ TETRA NA-SPRAY</xsl:when>
            <xsl:when test="$code='4202462'">PNEUMOVAX 23 DFL 0,5ML</xsl:when>
            <xsl:when test="$code='4205785'">FLUARIX TETRA IJSUSP FSPR 2N</xsl:when>
            <xsl:when test="$code='4209197'">PNEUMOVAX 23 FSPR</xsl:when>
            <xsl:when test="$code='4209694'">FSME-IMMUN FSPR 0,5ML+S.NAD</xsl:when>
            <xsl:when test="$code='4209702'">FSME-IMMUN FSPR 0,25ML+S.NAD</xsl:when>
            <xsl:when test="$code='4215720'">VAXIGRIP FSPR O.KANUELE</xsl:when>
            <xsl:when test="$code='4224707'">GARDASIL 9 FSPR +2KAN</xsl:when>
            <xsl:when test="$code='4453106'">MENJUGATE IJSUS 10MCG FSPR</xsl:when>
            <xsl:when test="$code='4465799'">RABIPUR FSPR</xsl:when>
            <xsl:when test="$code='4466942'">TRUMENBA IJSUS FSPR+NAD0,5ML</xsl:when>
            <xsl:when test="$code='4467841'">VAXIGRIP TETRA IJSUS</xsl:when>
            <xsl:when test="$code='4467858'">VAXIGRIP TETRA IJSUS O.KANUE</xsl:when>
            <xsl:when test="$code='4477035'">PREVENAR INJ.SUS13 0,5ML+NAD</xsl:when>
            <xsl:when test="$code='4482993'">INFLUVAC TETRA FSPR 0,5ML</xsl:when>
            <xsl:when test="$code='4961340'">VIVOTIF MSR HKPS</xsl:when>
            <xsl:when test="$code='4963675'">FLUCELVAX TETRA IJSUS FSPR</xsl:when>
            <xsl:when test="$code='4963681'">FLUCELVAX TETRA IJSUS FSPR</xsl:when>
            <xsl:when test="$code='4966403'">FLUCELVAX TETRA IJSUS FSPR</xsl:when>
            <xsl:otherwise><xsl:call-template name="getImmunizationProductLegacy"><xsl:with-param name="code" select="$code" /></xsl:call-template></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getImmunizationProductLegacy">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='AHI001'">Acel - P Lederle</xsl:when>
            <xsl:when test="$code='AHI002'">Act-HIB+DPT</xsl:when>
            <xsl:when test="$code='AHI003'">Addigrip</xsl:when>
            <xsl:when test="$code='AHI004'">Arepanrix</xsl:when>
            <xsl:when test="$code='AHI005'">Arilvax</xsl:when>
            <xsl:when test="$code='AHI006'">Batrevac</xsl:when>
            <xsl:when test="$code='AHI007'">BCG Vaccine "Mérieux"</xsl:when>
            <xsl:when test="$code='AHI008'">Begrivac</xsl:when>
            <xsl:when test="$code='AHI009'">Celvapan</xsl:when>
            <xsl:when test="$code='AHI010'">Cholera - Impfstoff "Berna"</xsl:when>
            <xsl:when test="$code='AHI011'">Cholera - Vakzine "Sero"</xsl:when>
            <xsl:when test="$code='AHI012'">Daronrix</xsl:when>
            <xsl:when test="$code='AHI013'">Diftetall</xsl:when>
            <xsl:when test="$code='AHI014'">Diphtherie Adsorbat Impfstoff "Behring"</xsl:when>
            <xsl:when test="$code='AHI015'">Ditanrix</xsl:when>
            <xsl:when test="$code='AHI016'">DiTe Anatoxal Berna</xsl:when>
            <xsl:when test="$code='AHI017'">DiTe Anatoxal(dT) Berna</xsl:when>
            <xsl:when test="$code='AHI018'">DiTePer Anatoxal Berna</xsl:when>
            <xsl:when test="$code='AHI019'">DT Adsorbat "Mérieux"</xsl:when>
            <xsl:when test="$code='AHI020'">DPT Adsorbat "Mérieux"</xsl:when>
            <xsl:when test="$code='AHI021'">DTaP Vakzine SSI</xsl:when>
            <xsl:when test="$code='AHI022'">D.T.Vax</xsl:when>
            <xsl:when test="$code='AHI023'">Epaxal</xsl:when>
            <xsl:when test="$code='AHI024'">Ervevax</xsl:when>
            <xsl:when test="$code='AHI025'">Fluarix</xsl:when>
            <xsl:when test="$code='AHI026'">Fluenz</xsl:when>
            <xsl:when test="$code='AHI027'">Fluvirin</xsl:when>
            <xsl:when test="$code='AHI028'">Focetria</xsl:when>
            <xsl:when test="$code='AHI029'">Gen-HB-vax 10 ug</xsl:when>
            <xsl:when test="$code='AHI030'">Havrix 360 E.I.U./ml</xsl:when>
            <xsl:when test="$code='AHI031'">Hepacare</xsl:when>
            <xsl:when test="$code='AHI032'">Hepatyrix</xsl:when>
            <xsl:when test="$code='AHI033'">Hevac B "Pasteur"</xsl:when>
            <xsl:when test="$code='AHI034'">Hexavac</xsl:when>
            <xsl:when test="$code='AHI036'">Hiberix</xsl:when>
            <xsl:when test="$code='AHI037'">Humenza</xsl:when>
            <xsl:when test="$code='AHI038'">IDflu</xsl:when>
            <xsl:when test="$code='AHI039'">Immugrip</xsl:when>
            <xsl:when test="$code='AHI040'">Immovax Polio</xsl:when>
            <xsl:when test="$code='AHI041'">Infanrix</xsl:when>
            <xsl:when test="$code='AHI042'">Infanrix Penta</xsl:when>
            <xsl:when test="$code='AHI043'">Infanrix Tetra</xsl:when>
            <xsl:when test="$code='AHI044'">Infanrix + HepB</xsl:when>
            <xsl:when test="$code='AHI045'">Infanrix + HiB</xsl:when>
            <xsl:when test="$code='AHI046'">Inflexal V</xsl:when>
            <xsl:when test="$code='AHI047'">Intanza</xsl:when>
            <xsl:when test="$code='AHI048'">Invivac</xsl:when>
            <xsl:when test="$code='AHI049'">IPV Mérieux</xsl:when>
            <xsl:when test="$code='AHI050'">JE - Vax</xsl:when>
            <xsl:when test="$code='AHI051'">Japan B Encephalitis Vaccine</xsl:when>
            <xsl:when test="$code='AHI052'">Laevactin</xsl:when>
            <xsl:when test="$code='AHI053'">Masern Vaccine "Mérieux"</xsl:when>
            <xsl:when test="$code='AHI054'">Menomune ACWY</xsl:when>
            <xsl:when test="$code='AHI055'">Mumps Vaccine "Merieux"</xsl:when>
            <xsl:when test="$code='AHI056'">MMR Triplovax</xsl:when>
            <xsl:when test="$code='AHI057'">Mencevax ACWY</xsl:when>
            <xsl:when test="$code='AHI058'">Meningovax A+C</xsl:when>
            <xsl:when test="$code='AHI059'">Menactra</xsl:when>
            <xsl:when test="$code='AHI060'">Meningokokken-Impfstoff A+C Mérieux</xsl:when>
            <xsl:when test="$code='AHI061'">Meninvact C</xsl:when>
            <xsl:when test="$code='AHI062'">Mutagrip</xsl:when>
            <xsl:when test="$code='AHI063'">Optaflu</xsl:when>
            <xsl:when test="$code='AHI064'">Orochol</xsl:when>
            <xsl:when test="$code='AHI065'">PAC-Mérieux</xsl:when>
            <xsl:when test="$code='AHI066'">Pandemrix</xsl:when>
            <xsl:when test="$code='AHI067'">Pariorix</xsl:when>
            <xsl:when test="$code='AHI068'">Pediacel</xsl:when>
            <xsl:when test="$code='AHI069'">Pent-Act-HiB</xsl:when>
            <xsl:when test="$code='AHI070'">Pentavac</xsl:when>
            <xsl:when test="$code='AHI071'">Pertoral</xsl:when>
            <xsl:when test="$code='AHI072'">Pocken Vaccine</xsl:when>
            <xsl:when test="$code='AHI073'">Polio Sabin SB</xsl:when>
            <xsl:when test="$code='AHI074'">Poliomyelitis Vaccine "Berna"</xsl:when>
            <xsl:when test="$code='AHI075'">Pneumo 23 "Merieux"</xsl:when>
            <xsl:when test="$code='AHI076'">PNU-Imune</xsl:when>
            <xsl:when test="$code='AHI077'">Präpandemischer Impfstoff (H5N1) GSK</xsl:when>
            <xsl:when test="$code='AHI078'">Präpandemischer Impfstoff (H5N1) Novartis</xsl:when>
            <xsl:when test="$code='AHI079'">Prévigrip</xsl:when>
            <xsl:when test="$code='AHI080'">Prevenar (7-valent)</xsl:when>
            <xsl:when test="$code='AHI081'">Primavax</xsl:when>
            <xsl:when test="$code='AHI082'">Procomvax</xsl:when>
            <xsl:when test="$code='AHI083'">Provarivax</xsl:when>
            <xsl:when test="$code='AHI084'">ProHIBiT</xsl:when>
            <xsl:when test="$code='AHI085'">Pumarix</xsl:when>
            <xsl:when test="$code='AHI086'">Quatrovirelon</xsl:when>
            <xsl:when test="$code='AHI087'">Quintanrix</xsl:when>
            <xsl:when test="$code='AHI088'">Quintovirelon</xsl:when>
            <xsl:when test="$code='AHI089'">Rabies Imovax</xsl:when>
            <xsl:when test="$code='AHI090'">Rimparix</xsl:when>
            <xsl:when test="$code='AHI091'">Rimevax</xsl:when>
            <xsl:when test="$code='AHI092'">Rouvax</xsl:when>
            <xsl:when test="$code='AHI093'">Rudivax</xsl:when>
            <xsl:when test="$code='AHI094'">RotaShield</xsl:when>
            <xsl:when test="$code='AHI095'">Röteln-Impfstoff HDC Mérieux</xsl:when>
            <xsl:when test="$code='AHI096'">Rubeaten "Berna"</xsl:when>
            <xsl:when test="$code='AHI097'">Spirolept</xsl:when>
            <xsl:when test="$code='AHI098'">Tanrix</xsl:when>
            <xsl:when test="$code='AHI099'">Te-Anatoxal "Berna"</xsl:when>
            <xsl:when test="$code='AHI100'">Tetanol</xsl:when>
            <xsl:when test="$code='AHI101'">Tetanus-Adsorbat "Merieux"</xsl:when>
            <xsl:when test="$code='AHI102'">Td-Rix</xsl:when>
            <xsl:when test="$code='AHI103'">Tetagrip</xsl:when>
            <xsl:when test="$code='AHI104'">Tetracoq</xsl:when>
            <xsl:when test="$code='AHI105'">Triacelluvax</xsl:when>
            <xsl:when test="$code='AHI106'">Triaxis Polio</xsl:when>
            <xsl:when test="$code='AHI107'">Ticovac junior</xsl:when>
            <xsl:when test="$code='AHI108'">Ticovac</xsl:when>
            <xsl:when test="$code='AHI109'">Tollwut Vakzine "Pasteur Merieux"</xsl:when>
            <xsl:when test="$code='AHI110'">Tritanrix DTPw</xsl:when>
            <xsl:when test="$code='AHI111'">Tollwut Vaccine HDC</xsl:when>
            <xsl:when test="$code='AHI112'">Tritanrix HepB</xsl:when>
            <xsl:when test="$code='AHI113'">Tyavax</xsl:when>
            <xsl:when test="$code='AHI114'">Typherix</xsl:when>
            <xsl:when test="$code='AHI115'">Typhoral</xsl:when>
            <xsl:when test="$code='AHI116'">Vaccin Rabique inactivé Mérieux HDCV</xsl:when>
            <xsl:when test="$code='AHI117'">Vaccin GenHevac B Pasteur</xsl:when>
            <xsl:when test="$code='AHI118'">Vaccine Rabique Pasteur</xsl:when>
            <xsl:when test="$code='AHI119'">Vaccine Tétamique Pasteur</xsl:when>
            <xsl:when test="$code='AHI120'">Vaccine Boostrixtetra</xsl:when>
            <xsl:when test="$code='AHI121'">Varicella Impfstoff SB</xsl:when>
            <xsl:when test="$code='AHI122'">Vaxigrip junior</xsl:when>
            <xsl:when test="$code='AHI123'">Vaxigrip</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$code" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAMaritalStatus">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='D'">Geschieden</xsl:when>
            <xsl:when test="$code='M'">Verheiratet</xsl:when>
            <xsl:when test="$code='S'">Ledig</xsl:when>
            <xsl:when test="$code='T'">In Lebenspartnerschaft</xsl:when>
            <xsl:when test="$code='W'">Verwitwet</xsl:when>
            <xsl:otherwise>unbekannter Ehestatus</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAReligiousAffiliation">
        <xsl:param name="religiousAffiliation" />
        
        <xsl:choose>
            <xsl:when test="$religiousAffiliation/@code='100'">Katholische Kirche (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='101'">Römisch-Katholisch</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='102'">Griechisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='103'">Armenisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='104'">Bulgarisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='105'">Rumänische griechisch-katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='106'">Russisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='107'">Syrisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='108'">Ukrainische Griechisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='109'">Katholische Ostkirche (ohne nähere Angabe)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='110'">Griechisch-Orientalische Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='111'">Orthodoxe Kirchen (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='112'">Griechisch-Orthodoxe Kirche (Hl.Dreifaltigkeit)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='113'">Griechisch-Orthodoxe Kirche (Hl.Georg)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='114'">Bulgarisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='115'">Rumänisch-griechisch-orientalische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='116'">Russisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='117'">Serbisch-griechisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='118'">Ukrainisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='119'">Orientalisch-Orthodoxe Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='120'">Armenisch-apostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='121'">Syrisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='122'">Syrisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='123'">Koptisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='124'">Armenisch-apostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='125'">Äthiopisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='126'">Evangelische Kirchen Österreich</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='127'">Evangelische Kirche (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='128'">Evangelische Kirche A.B.</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='129'">Evangelische Kirche H.B.</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='130'">Andere Christliche Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='131'">Altkatholische Kirche Österreichs</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='132'">Anglikanische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='133'">Evangelisch-methodistische Kirche (EmK)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='134'">Sonstige Christliche Gemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='135'">Baptisten</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='136'">Bund evangelikaler Gemeinden in Österreich</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='137'">Freie Christengemeinde/Pfingstgemeinde</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='138'">Mennonitische Freikirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='139'">Kirche der Siebenten-Tags-Adventisten</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='140'">Christengemeinschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='141'">Jehovas Zeugen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='142'">Neuapostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='143'">Mormonen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='144'">Sonstige Christliche Gemeinschaften (O.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='145'">ELAIA Christengemeinden</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='146'">Pfingstkirche Gemeinde Gottes</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='148'">Nicht-christliche Gemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='149'">Israelitische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='150'">Islamische Glaubensgemeinschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='151'">Alevitische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='152'">Buddhistische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='153'">Baha` i</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='154'">Hinduistische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='155'">Sikh</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='156'">Shintoismus</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='157'">Vereinigungskirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='162'">Pastafarianismus</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='158'">Andere religiöse Bekenntnisgemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='159'">Konfessionslos, ohne Angabe</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='160'">Konfessionslos</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='161'">Ohne Angabe</xsl:when>
            <xsl:otherwise><xsl:value-of select="$religiousAffiliation/@displayName" /></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGALanguageAbilityMode">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='ESP'">spricht</xsl:when>
            <xsl:when test="$code='EWR'">schreibt</xsl:when>
            <xsl:when test="$code='RSP'">versteht gesprochen</xsl:when>
            <xsl:when test="$code='RWR'">versteht geschrieben</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAProficiencyLevelCode">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='E'">ausgezeichnet</xsl:when>
            <xsl:when test="$code='F'">ausreichend</xsl:when>
            <xsl:when test="$code='G'">gut</xsl:when>
            <xsl:when test="$code='P'">mangelhaft</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAHumanLanguage">
        <xsl:param name="code" />
        
        <xsl:variable name="trimmedCode">
            <xsl:choose>
              <xsl:when test="contains($code, '-')">
                <xsl:value-of select="substring-before($code,'-')"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$code" />
              </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$trimmedCode='aa'">Danakil-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ab'">Abchasisch</xsl:when>
            <xsl:when test="$trimmedCode='ace'">Aceh-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ach'">Acholi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ada'">Adangme-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ady'">Adygisch</xsl:when>
            <xsl:when test="$trimmedCode='ae'">Avestisch</xsl:when>
            <xsl:when test="$trimmedCode='af'">Afrikaans</xsl:when>
            <xsl:when test="$trimmedCode='afa'">Hamitosemitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='afh'">Afrihili</xsl:when>
            <xsl:when test="$trimmedCode='ain'">Ainu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ak'">Akan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='akk'">Akkadisch</xsl:when>
            <xsl:when test="$trimmedCode='ale'">Aleutisch</xsl:when>
            <xsl:when test="$trimmedCode='alg'">Algonkin-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='alt'">Altaisch</xsl:when>
            <xsl:when test="$trimmedCode='am'">Amharisch</xsl:when>
            <xsl:when test="$trimmedCode='an'">Aragonesisch</xsl:when>
            <xsl:when test="$trimmedCode='ang'">Altenglisch</xsl:when>
            <xsl:when test="$trimmedCode='anp'">Anga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='apa'">Apachen-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='ar'">Arabisch</xsl:when>
            <xsl:when test="$trimmedCode='arc'">Aramäisch</xsl:when>
            <xsl:when test="$trimmedCode='arn'">Arauka-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='arp'">Arapaho-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='art'">Kunstsprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='arw'">Arawak-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='as'">Assamesisch</xsl:when>
            <xsl:when test="$trimmedCode='ast'">Asturisch</xsl:when>
            <xsl:when test="$trimmedCode='ath'">Athapaskische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='aus'">Australische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='av'">Awarisch</xsl:when>
            <xsl:when test="$trimmedCode='awa'">Awadhi</xsl:when>
            <xsl:when test="$trimmedCode='ay'">Aymará-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='az'">Aserbeidschanisch</xsl:when>
            <xsl:when test="$trimmedCode='ba'">Baschkirisch</xsl:when>
            <xsl:when test="$trimmedCode='bad'">Banda-Sprachen (Ubangi-Sprachen)</xsl:when>
            <xsl:when test="$trimmedCode='bai'">Bamileke-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='bal'">Belutschisch</xsl:when>
            <xsl:when test="$trimmedCode='ban'">Balinesisch</xsl:when>
            <xsl:when test="$trimmedCode='bas'">Basaa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bat'">Baltische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='be'">Weißrussisch</xsl:when>
            <xsl:when test="$trimmedCode='bej'">Bedauye</xsl:when>
            <xsl:when test="$trimmedCode='bem'">Bemba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ber'">Berbersprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bg'">Bulgarisch</xsl:when>
            <xsl:when test="$trimmedCode='bh'">Bihari (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bho'">Bhojpuri</xsl:when>
            <xsl:when test="$trimmedCode='bi'">Beach-la-mar</xsl:when>
            <xsl:when test="$trimmedCode='bik'">Bikol-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bin'">Edo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bla'">Blackfoot-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bm'">Bambara-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bn'">Bengali</xsl:when>
            <xsl:when test="$trimmedCode='bnt'">Bantusprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bo'">Tibetisch</xsl:when>
            <xsl:when test="$trimmedCode='br'">Bretonisch</xsl:when>
            <xsl:when test="$trimmedCode='bra'">Braj-Bhakha</xsl:when>
            <xsl:when test="$trimmedCode='bs'">Bosnisch</xsl:when>
            <xsl:when test="$trimmedCode='btk'">Batak-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bua'">Burjatisch</xsl:when>
            <xsl:when test="$trimmedCode='bug'">Bugi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='byn'">Bilin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ca'">Katalanisch</xsl:when>
            <xsl:when test="$trimmedCode='cad'">Caddo-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='cai'">Indianersprachen, Zentralamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='car'">Karibische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='cau'">Kaukasische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ce'">Tschetschenisch</xsl:when>
            <xsl:when test="$trimmedCode='ceb'">Cebuano</xsl:when>
            <xsl:when test="$trimmedCode='cel'">Keltische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ch'">Chamorro-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chb'">Chibcha-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='chg'">Tschagataisch</xsl:when>
            <xsl:when test="$trimmedCode='chk'">Trukesisch</xsl:when>
            <xsl:when test="$trimmedCode='chm'">Tscheremissisch</xsl:when>
            <xsl:when test="$trimmedCode='chn'">Chinook-Jargon</xsl:when>
            <xsl:when test="$trimmedCode='cho'">Choctaw-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chp'">Chipewyan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chr'">Cherokee-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chy'">Cheyenne-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='cmc'">Cham-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='co'">Korsisch</xsl:when>
            <xsl:when test="$trimmedCode='cop'">Koptisch</xsl:when>
            <xsl:when test="$trimmedCode='cpe'">Kreolisch-Englisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cpf'">Kreolisch-Französisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cpp'">Kreolisch-Portugiesisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cr'">Cree-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='crh'">Krimtatarisch</xsl:when>
            <xsl:when test="$trimmedCode='crp'">Kreolische Sprachen, Pidginsprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cs'">Tschechisch</xsl:when>
            <xsl:when test="$trimmedCode='csb'">Kaschubisch</xsl:when>
            <xsl:when test="$trimmedCode='cu'">Kirchenslawisch</xsl:when>
            <xsl:when test="$trimmedCode='cus'">Kuschitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cv'">Tschuwaschisch</xsl:when>
            <xsl:when test="$trimmedCode='cy'">Kymrisch</xsl:when>
            <xsl:when test="$trimmedCode='da'">Dänisch</xsl:when>
            <xsl:when test="$trimmedCode='dak'">Dakota-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dar'">Darginisch</xsl:when>
            <xsl:when test="$trimmedCode='day'">Dajakisch</xsl:when>
            <xsl:when test="$trimmedCode='de'">Deutsch</xsl:when>
            <xsl:when test="$trimmedCode='del'">Delaware-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='den'">Slave-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dgr'">Dogrib-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='din'">Dinka-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='doi'">Dogri</xsl:when>
            <xsl:when test="$trimmedCode='dra'">Drawidische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='dsb'">Niedersorbisch</xsl:when>
            <xsl:when test="$trimmedCode='dua'">Duala-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='dum'">Mittelniederländisch</xsl:when>
            <xsl:when test="$trimmedCode='dv'">Maledivisch</xsl:when>
            <xsl:when test="$trimmedCode='dyu'">Dyula-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dz'">Dzongkha</xsl:when>
            <xsl:when test="$trimmedCode='ee'">Ewe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='efi'">Efik</xsl:when>
            <xsl:when test="$trimmedCode='egy'">Ägyptisch</xsl:when>
            <xsl:when test="$trimmedCode='eka'">Ekajuk</xsl:when>
            <xsl:when test="$trimmedCode='el'">Neugriechisch</xsl:when>
            <xsl:when test="$trimmedCode='elx'">Elamisch</xsl:when>
            <xsl:when test="$trimmedCode='en'">Englisch</xsl:when>
            <xsl:when test="$trimmedCode='enm'">Mittelenglisch</xsl:when>
            <xsl:when test="$trimmedCode='eo'">Esperanto</xsl:when>
            <xsl:when test="$trimmedCode='es'">Spanisch</xsl:when>
            <xsl:when test="$trimmedCode='et'">Estnisch</xsl:when>
            <xsl:when test="$trimmedCode='eu'">Baskisch</xsl:when>
            <xsl:when test="$trimmedCode='ewo'">Ewondo</xsl:when>
            <xsl:when test="$trimmedCode='fa'">Persisch</xsl:when>
            <xsl:when test="$trimmedCode='fan'">Pangwe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fat'">Fante-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ff'">Ful</xsl:when>
            <xsl:when test="$trimmedCode='fi'">Finnisch</xsl:when>
            <xsl:when test="$trimmedCode='fil'">Pilipino</xsl:when>
            <xsl:when test="$trimmedCode='fiu'">Finnougrische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='fj'">Fidschi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fo'">Färöisch</xsl:when>
            <xsl:when test="$trimmedCode='fon'">Fon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fr'">Französisch</xsl:when>
            <xsl:when test="$trimmedCode='frm'">Mittelfranzösisch</xsl:when>
            <xsl:when test="$trimmedCode='fro'">Altfranzösisch</xsl:when>
            <xsl:when test="$trimmedCode='frr'">Nordfriesisch</xsl:when>
            <xsl:when test="$trimmedCode='frs'">Ostfriesisch</xsl:when>
            <xsl:when test="$trimmedCode='fur'">Friulisch</xsl:when>
            <xsl:when test="$trimmedCode='fy'">Friesisch</xsl:when>
            <xsl:when test="$trimmedCode='ga'">Irisch</xsl:when>
            <xsl:when test="$trimmedCode='gaa'">Ga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gay'">Gayo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gba'">Gbaya-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gd'">Gälisch-Schottisch</xsl:when>
            <xsl:when test="$trimmedCode='gem'">Germanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='gez'">Altäthiopisch</xsl:when>
            <xsl:when test="$trimmedCode='gil'">Gilbertesisch</xsl:when>
            <xsl:when test="$trimmedCode='gl'">Galicisch</xsl:when>
            <xsl:when test="$trimmedCode='gmh'">Mittelhochdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gn'">Guaraní-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='goh'">Althochdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gon'">Gondi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gor'">Gorontalesisch</xsl:when>
            <xsl:when test="$trimmedCode='got'">Gotisch</xsl:when>
            <xsl:when test="$trimmedCode='grb'">Grebo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='grc'">Griechisch</xsl:when>
            <xsl:when test="$trimmedCode='gsw'">Schweizerdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gu'">Gujarati-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gv'">Manx</xsl:when>
            <xsl:when test="$trimmedCode='gwi'">Kutchin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ha'">Haussa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='hai'">Haida-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='haw'">Hawaiisch</xsl:when>
            <xsl:when test="$trimmedCode='he'">Hebräisch</xsl:when>
            <xsl:when test="$trimmedCode='hi'">Hindi</xsl:when>
            <xsl:when test="$trimmedCode='hil'">Hiligaynon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='him'">Himachali</xsl:when>
            <xsl:when test="$trimmedCode='hit'">Hethitisch</xsl:when>
            <xsl:when test="$trimmedCode='hmn'">Miao-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='ho'">Hiri-Motu</xsl:when>
            <xsl:when test="$trimmedCode='hr'">Kroatisch</xsl:when>
            <xsl:when test="$trimmedCode='hsb'">Obersorbisch</xsl:when>
            <xsl:when test="$trimmedCode='ht'">Haïtien (Haiti-Kreolisch)</xsl:when>
            <xsl:when test="$trimmedCode='hu'">Ungarisch</xsl:when>
            <xsl:when test="$trimmedCode='hup'">Hupa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='hy'">Armenisch</xsl:when>
            <xsl:when test="$trimmedCode='hz'">Herero-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ia'">Interlingua</xsl:when>
            <xsl:when test="$trimmedCode='iba'">Iban-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='id'">Bahasa Indonesia</xsl:when>
            <xsl:when test="$trimmedCode='ie'">Interlingue</xsl:when>
            <xsl:when test="$trimmedCode='ig'">Ibo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ii'">Lalo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ijo'">Ijo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ik'">Inupik</xsl:when>
            <xsl:when test="$trimmedCode='ilo'">Ilokano-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='inc'">Indoarische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ine'">Indogermanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='inh'">Inguschisch</xsl:when>
            <xsl:when test="$trimmedCode='io'">Ido</xsl:when>
            <xsl:when test="$trimmedCode='ira'">Iranische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='iro'">Irokesische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='is'">Isländisch</xsl:when>
            <xsl:when test="$trimmedCode='it'">Italienisch</xsl:when>
            <xsl:when test="$trimmedCode='iu'">Inuktitut</xsl:when>
            <xsl:when test="$trimmedCode='ja'">Japanisch</xsl:when>
            <xsl:when test="$trimmedCode='jbo'">Lojban</xsl:when>
            <xsl:when test="$trimmedCode='jpr'">Jüdisch-Persisch</xsl:when>
            <xsl:when test="$trimmedCode='jrb'">Jüdisch-Arabisch</xsl:when>
            <xsl:when test="$trimmedCode='jv'">Javanisch</xsl:when>
            <xsl:when test="$trimmedCode='ka'">Georgisch</xsl:when>
            <xsl:when test="$trimmedCode='kaa'">Karakalpakisch</xsl:when>
            <xsl:when test="$trimmedCode='kab'">Kabylisch</xsl:when>
            <xsl:when test="$trimmedCode='kac'">Kachin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kam'">Kamba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kar'">Karenisch</xsl:when>
            <xsl:when test="$trimmedCode='kaw'">Kawi</xsl:when>
            <xsl:when test="$trimmedCode='kbd'">Kabardinisch</xsl:when>
            <xsl:when test="$trimmedCode='kg'">Kongo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kha'">Khasi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='khi'">Khoisan-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='kho'">Sakisch</xsl:when>
            <xsl:when test="$trimmedCode='ki'">Kikuyu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kj'">Kwanyama-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kk'">Kasachisch</xsl:when>
            <xsl:when test="$trimmedCode='kl'">Grönländisch</xsl:when>
            <xsl:when test="$trimmedCode='km'">Kambodschanisch</xsl:when>
            <xsl:when test="$trimmedCode='kmb'">Kimbundu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kn'">Kannada</xsl:when>
            <xsl:when test="$trimmedCode='ko'">Koreanisch</xsl:when>
            <xsl:when test="$trimmedCode='kok'">Konkani</xsl:when>
            <xsl:when test="$trimmedCode='kos'">Kosraeanisch</xsl:when>
            <xsl:when test="$trimmedCode='kpe'">Kpelle-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kr'">Kanuri-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='krc'">Karatschaiisch-Balkarisch</xsl:when>
            <xsl:when test="$trimmedCode='krl'">Karelisch</xsl:when>
            <xsl:when test="$trimmedCode='kro'">Kru-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='kru'">Oraon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ks'">Kaschmiri</xsl:when>
            <xsl:when test="$trimmedCode='ku'">Kurdisch</xsl:when>
            <xsl:when test="$trimmedCode='kum'">Kumükisch</xsl:when>
            <xsl:when test="$trimmedCode='kut'">Kutenai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kv'">Komi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kw'">Kornisch</xsl:when>
            <xsl:when test="$trimmedCode='ky'">Kirgisisch</xsl:when>
            <xsl:when test="$trimmedCode='la'">Latein</xsl:when>
            <xsl:when test="$trimmedCode='lad'">Judenspanisch</xsl:when>
            <xsl:when test="$trimmedCode='lah'">Lahnda</xsl:when>
            <xsl:when test="$trimmedCode='lam'">Lamba-Sprache (Bantusprache)</xsl:when>
            <xsl:when test="$trimmedCode='lb'">Luxemburgisch</xsl:when>
            <xsl:when test="$trimmedCode='lez'">Lesgisch</xsl:when>
            <xsl:when test="$trimmedCode='lg'">Ganda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='li'">Limburgisch</xsl:when>
            <xsl:when test="$trimmedCode='ln'">Lingala</xsl:when>
            <xsl:when test="$trimmedCode='lo'">Laotisch</xsl:when>
            <xsl:when test="$trimmedCode='lol'">Mongo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='loz'">Rotse-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lt'">Litauisch</xsl:when>
            <xsl:when test="$trimmedCode='lu'">Luba-Katanga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lua'">Lulua-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lui'">Luiseño-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lun'">Lunda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='luo'">Luo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lus'">Lushai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lv'">Lettisch</xsl:when>
            <xsl:when test="$trimmedCode='mad'">Maduresisch</xsl:when>
            <xsl:when test="$trimmedCode='mag'">Khotta</xsl:when>
            <xsl:when test="$trimmedCode='mai'">Maithili</xsl:when>
            <xsl:when test="$trimmedCode='mak'">Makassarisch</xsl:when>
            <xsl:when test="$trimmedCode='man'">Malinke-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='map'">Austronesische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='mas'">Massai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mdf'">Mokscha-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mdr'">Mandaresisch</xsl:when>
            <xsl:when test="$trimmedCode='men'">Mende-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mg'">Malagassi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mga'">Mittelirisch</xsl:when>
            <xsl:when test="$trimmedCode='mh'">Marschallesisch</xsl:when>
            <xsl:when test="$trimmedCode='mi'">Maori-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mic'">Micmac-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='min'">Minangkabau-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mis'">Einzelne andere Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='mk'">Makedonisch</xsl:when>
            <xsl:when test="$trimmedCode='mkh'">Mon-Khmer-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ml'">Malayalam</xsl:when>
            <xsl:when test="$trimmedCode='mn'">Mongolisch</xsl:when>
            <xsl:when test="$trimmedCode='mnc'">Mandschurisch</xsl:when>
            <xsl:when test="$trimmedCode='mni'">Meithei-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mno'">Manobo-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='moh'">Mohawk-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mos'">Mossi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mr'">Marathi</xsl:when>
            <xsl:when test="$trimmedCode='ms'">Malaiisch</xsl:when>
            <xsl:when test="$trimmedCode='mt'">Maltesisch</xsl:when>
            <xsl:when test="$trimmedCode='mul'">Mehrere Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='mun'">Mundasprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='mus'">Muskogisch</xsl:when>
            <xsl:when test="$trimmedCode='mwl'">Mirandesisch</xsl:when>
            <xsl:when test="$trimmedCode='mwr'">Marwari</xsl:when>
            <xsl:when test="$trimmedCode='my'">Birmanisch</xsl:when>
            <xsl:when test="$trimmedCode='myn'">Maya-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='myv'">Erza-Mordwinisch</xsl:when>
            <xsl:when test="$trimmedCode='na'">Nauruanisch</xsl:when>
            <xsl:when test="$trimmedCode='nah'">Nahuatl</xsl:when>
            <xsl:when test="$trimmedCode='nai'">Indianersprachen, Nordamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='nap'">Neapel / Mundart</xsl:when>
            <xsl:when test="$trimmedCode='nb'">Bokmål</xsl:when>
            <xsl:when test="$trimmedCode='nd'">Ndebele-Sprache (Simbabwe)</xsl:when>
            <xsl:when test="$trimmedCode='nds'">Niederdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='ne'">Nepali</xsl:when>
            <xsl:when test="$trimmedCode='new'">Newari</xsl:when>
            <xsl:when test="$trimmedCode='ng'">Ndonga</xsl:when>
            <xsl:when test="$trimmedCode='nia'">Nias-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nic'">Nigerkordofanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='niu'">Niue-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nl'">Niederländisch</xsl:when>
            <xsl:when test="$trimmedCode='nn'">Nynorsk</xsl:when>
            <xsl:when test="$trimmedCode='no'">Norwegisch</xsl:when>
            <xsl:when test="$trimmedCode='nog'">Nogaisch</xsl:when>
            <xsl:when test="$trimmedCode='non'">Altnorwegisch</xsl:when>
            <xsl:when test="$trimmedCode='nqo'">N'Ko</xsl:when>
            <xsl:when test="$trimmedCode='nr'">Ndebele-Sprache (Transvaal)</xsl:when>
            <xsl:when test="$trimmedCode='nso'">Pedi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nub'">Nubische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='nv'">Navajo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nwc'">Alt-Newari</xsl:when>
            <xsl:when test="$trimmedCode='ny'">Nyanja-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nym'">Nyamwezi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nyn'">Nkole-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nyo'">Nyoro-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nzi'">Nzima-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='oc'">Okzitanisch</xsl:when>
            <xsl:when test="$trimmedCode='oj'">Ojibwa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='om'">Galla-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='or'">Oriya-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='os'">Ossetisch</xsl:when>
            <xsl:when test="$trimmedCode='osa'">Osage-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ota'">Osmanisch</xsl:when>
            <xsl:when test="$trimmedCode='oto'">Otomangue-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='pa'">Pandschabi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='paa'">Papuasprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='pag'">Pangasinan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='pal'">Mittelpersisch</xsl:when>
            <xsl:when test="$trimmedCode='pam'">Pampanggan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='pap'">Papiamento</xsl:when>
            <xsl:when test="$trimmedCode='pau'">Palau-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='peo'">Altpersisch</xsl:when>
            <xsl:when test="$trimmedCode='phi'">Philippinisch-Austronesisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='phn'">Phönikisch</xsl:when>
            <xsl:when test="$trimmedCode='pi'">Pali</xsl:when>
            <xsl:when test="$trimmedCode='pl'">Polnisch</xsl:when>
            <xsl:when test="$trimmedCode='pon'">Ponapeanisch</xsl:when>
            <xsl:when test="$trimmedCode='pra'">Prakrit</xsl:when>
            <xsl:when test="$trimmedCode='pro'">Altokzitanisch</xsl:when>
            <xsl:when test="$trimmedCode='ps'">Paschtu</xsl:when>
            <xsl:when test="$trimmedCode='pt'">Portugiesisch</xsl:when>
            <xsl:when test="$trimmedCode='qaa'">Reserviert für lokale Verwendung</xsl:when>
            <xsl:when test="$trimmedCode='qu'">Quechua-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='raj'">Rajasthani</xsl:when>
            <xsl:when test="$trimmedCode='rap'">Osterinsel-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='rar'">Rarotonganisch</xsl:when>
            <xsl:when test="$trimmedCode='rm'">Rätoromanisch</xsl:when>
            <xsl:when test="$trimmedCode='rn'">Rundi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ro'">Rumänisch</xsl:when>
            <xsl:when test="$trimmedCode='roa'">Romanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='rom'">Romani (Sprache)</xsl:when>
            <xsl:when test="$trimmedCode='ru'">Russisch</xsl:when>
            <xsl:when test="$trimmedCode='rup'">Aromunisch</xsl:when>
            <xsl:when test="$trimmedCode='rw'">Rwanda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sa'">Sanskrit</xsl:when>
            <xsl:when test="$trimmedCode='sad'">Sandawe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sah'">Jakutisch</xsl:when>
            <xsl:when test="$trimmedCode='sai'">Indianersprachen, Südamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sal'">Salish-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sam'">Samaritanisch</xsl:when>
            <xsl:when test="$trimmedCode='sas'">Sasak</xsl:when>
            <xsl:when test="$trimmedCode='sat'">Santali</xsl:when>
            <xsl:when test="$trimmedCode='sc'">Sardisch</xsl:when>
            <xsl:when test="$trimmedCode='scn'">Sizilianisch</xsl:when>
            <xsl:when test="$trimmedCode='sco'">Schottisch</xsl:when>
            <xsl:when test="$trimmedCode='sd'">Sindhi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='se'">Nordsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sel'">Selkupisch</xsl:when>
            <xsl:when test="$trimmedCode='sem'">Semitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sg'">Sango-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sga'">Altirisch</xsl:when>
            <xsl:when test="$trimmedCode='sgn'">Zeichensprachen</xsl:when>
            <xsl:when test="$trimmedCode='shn'">Schan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='si'">Singhalesisch</xsl:when>
            <xsl:when test="$trimmedCode='sid'">Sidamo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sio'">Sioux-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sit'">Sinotibetische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sk'">Slowakisch</xsl:when>
            <xsl:when test="$trimmedCode='sl'">Slowenisch</xsl:when>
            <xsl:when test="$trimmedCode='sla'">Slawische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sm'">Samoanisch</xsl:when>
            <xsl:when test="$trimmedCode='sma'">Südsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='smi'">Saamisch</xsl:when>
            <xsl:when test="$trimmedCode='smj'">Lulesaamisch</xsl:when>
            <xsl:when test="$trimmedCode='smn'">Inarisaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sms'">Skoltsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sn'">Schona-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='snk'">Soninke-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='so'">Somali</xsl:when>
            <xsl:when test="$trimmedCode='sog'">Sogdisch</xsl:when>
            <xsl:when test="$trimmedCode='son'">Songhai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sq'">Albanisch</xsl:when>
            <xsl:when test="$trimmedCode='sr'">Serbisch</xsl:when>
            <xsl:when test="$trimmedCode='srn'">Sranantongo</xsl:when>
            <xsl:when test="$trimmedCode='srr'">Serer-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ss'">Swasi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ssa'">Nilosaharanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='st'">Süd-Sotho-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='su'">Sundanesisch</xsl:when>
            <xsl:when test="$trimmedCode='suk'">Sukuma-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sus'">Susu</xsl:when>
            <xsl:when test="$trimmedCode='sux'">Sumerisch</xsl:when>
            <xsl:when test="$trimmedCode='sv'">Schwedisch</xsl:when>
            <xsl:when test="$trimmedCode='sw'">Swahili</xsl:when>
            <xsl:when test="$trimmedCode='syc'">Syrisch</xsl:when>
            <xsl:when test="$trimmedCode='syr'">Neuostaramäisch</xsl:when>
            <xsl:when test="$trimmedCode='ta'">Tamil</xsl:when>
            <xsl:when test="$trimmedCode='tai'">Thaisprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='te'">Telugu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tem'">Temne-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ter'">Tereno-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tet'">Tetum-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tg'">Tadschikisch</xsl:when>
            <xsl:when test="$trimmedCode='th'">Thailändisch</xsl:when>
            <xsl:when test="$trimmedCode='ti'">Tigrinja-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tig'">Tigre-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tiv'">Tiv-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tk'">Turkmenisch</xsl:when>
            <xsl:when test="$trimmedCode='tkl'">Tokelauanisch</xsl:when>
            <xsl:when test="$trimmedCode='tl'">Tagalog</xsl:when>
            <xsl:when test="$trimmedCode='tlh'">Klingonisch</xsl:when>
            <xsl:when test="$trimmedCode='tli'">Tlingit-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tmh'">Tamaeq</xsl:when>
            <xsl:when test="$trimmedCode='tn'">Tswana-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='to'">Tongaisch</xsl:when>
            <xsl:when test="$trimmedCode='tog'">Tonga (Bantusprache, Sambia)</xsl:when>
            <xsl:when test="$trimmedCode='tpi'">Neumelanesisch</xsl:when>
            <xsl:when test="$trimmedCode='tr'">Türkisch</xsl:when>
            <xsl:when test="$trimmedCode='ts'">Tsonga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tsi'">Tsimshian-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tt'">Tatarisch</xsl:when>
            <xsl:when test="$trimmedCode='tum'">Tumbuka-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tup'">Tupi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tut'">Altaische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='tvl'">Elliceanisch</xsl:when>
            <xsl:when test="$trimmedCode='tw'">Twi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ty'">Tahitisch</xsl:when>
            <xsl:when test="$trimmedCode='tyv'">Tuwinisch</xsl:when>
            <xsl:when test="$trimmedCode='udm'">Udmurtisch</xsl:when>
            <xsl:when test="$trimmedCode='ug'">Uigurisch</xsl:when>
            <xsl:when test="$trimmedCode='uga'">Ugaritisch</xsl:when>
            <xsl:when test="$trimmedCode='uk'">Ukrainisch</xsl:when>
            <xsl:when test="$trimmedCode='umb'">Mbundu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='und'">Nicht zu entscheiden</xsl:when>
            <xsl:when test="$trimmedCode='ur'">Urdu</xsl:when>
            <xsl:when test="$trimmedCode='uz'">Usbekisch</xsl:when>
            <xsl:when test="$trimmedCode='vai'">Vai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ve'">Venda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='vi'">Vietnamesisch</xsl:when>
            <xsl:when test="$trimmedCode='vo'">Volapük</xsl:when>
            <xsl:when test="$trimmedCode='vot'">Wotisch</xsl:when>
            <xsl:when test="$trimmedCode='wa'">Wallonisch</xsl:when>
            <xsl:when test="$trimmedCode='wak'">Wakash-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='wal'">Walamo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='war'">Waray</xsl:when>
            <xsl:when test="$trimmedCode='was'">Washo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='wen'">Sorbisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='wo'">Wolof-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='xal'">Kalmückisch</xsl:when>
            <xsl:when test="$trimmedCode='xh'">Xhosa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='yao'">Yao-Sprache (Bantusprache)</xsl:when>
            <xsl:when test="$trimmedCode='yap'">Yapesisch</xsl:when>
            <xsl:when test="$trimmedCode='yi'">Jiddisch</xsl:when>
            <xsl:when test="$trimmedCode='yo'">Yoruba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ypk'">Ypik-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='za'">Zhuang</xsl:when>
            <xsl:when test="$trimmedCode='zap'">Zapotekisch</xsl:when>
            <xsl:when test="$trimmedCode='zbl'">Bliss-Symbol</xsl:when>
            <xsl:when test="$trimmedCode='zen'">Zenaga</xsl:when>
            <xsl:when test="$trimmedCode='zgh'">Tamazight</xsl:when>
            <xsl:when test="$trimmedCode='zh'">Chinesisch</xsl:when>
            <xsl:when test="$trimmedCode='znd'">Zande-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='zu'">Zulu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='zun'">Zuñi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='zxx'">Kein linguistischer Inhalt</xsl:when>
            <xsl:when test="$trimmedCode='zza'">Zazaki</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$trimmedCode" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAPersonalRelationship">
        <xsl:param name="participant" />
        
        <xsl:variable name="code"><xsl:value-of select="$participant/*/n1:code/@code"/></xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$code='FAMMEMB'">Familienmitglied</xsl:when>
            <xsl:when test="$code='SPS'">Ehepartner</xsl:when>
            <xsl:when test="$code='HUSB'">Ehemann</xsl:when>
            <xsl:when test="$code='WIFE'">Ehefrau</xsl:when>
            <xsl:when test="$code='PRN'">Elternteil</xsl:when>
            <xsl:when test="$code='FTH'">Vater</xsl:when>
            <xsl:when test="$code='MTH'">Mutter</xsl:when>
            <xsl:when test="$code='NPRN'">leibliches Elternteil</xsl:when>
            <xsl:when test="$code='NFTH'">leiblicher Vater</xsl:when>
            <xsl:when test="$code='NMTH'">leibliche Mutter</xsl:when>
            <xsl:when test="$code='PRNINLAW'">Schwiegereltern</xsl:when>
            <xsl:when test="$code='FTHINLAW'">Schwiegervater</xsl:when>
            <xsl:when test="$code='MTHINLAW'">Schwiegermutter</xsl:when>
            <xsl:when test="$code='STPPRN'">Stiefelternteil</xsl:when>
            <xsl:when test="$code='STPFTH'">Stiefvater</xsl:when>
            <xsl:when test="$code='STPMTH'">Stiefmutter</xsl:when>
            <xsl:when test="$code='SIB'">Geschwister</xsl:when>
            <xsl:when test="$code='BRO'">Bruder</xsl:when>
            <xsl:when test="$code='SIS'">Schwester</xsl:when>
            <xsl:when test="$code='HSIB'">Halbgeschwister</xsl:when>
            <xsl:when test="$code='HBRO'">Halbbruder</xsl:when>
            <xsl:when test="$code='HSIS'">Halbschwester</xsl:when>
            <xsl:when test="$code='NSIB'">leibliche Geschwister</xsl:when>
            <xsl:when test="$code='NBRO'">leiblicher Bruder</xsl:when>
            <xsl:when test="$code='NSIS'">leibliche Schwester</xsl:when>
            <xsl:when test="$code='SIBINLAW'">Schwager/ Schwägerin</xsl:when>
            <xsl:when test="$code='BROINLAW'">Schwager</xsl:when>
            <xsl:when test="$code='SISINLAW'">Schwägerin</xsl:when>
            <xsl:when test="$code='STPSIB'">Stiefgeschwister</xsl:when>
            <xsl:when test="$code='STPBRO'">Stiefbruder</xsl:when>
            <xsl:when test="$code='STPSIS'">Stiefschwester</xsl:when>
            <xsl:when test="$code='CHILD'">Kind</xsl:when>
            <xsl:when test="$code='NCHILD'">leibliches Kind</xsl:when>
            <xsl:when test="$code='CHLDADOPT'">Adoptivkind</xsl:when>
            <xsl:when test="$code='CHLDFOST'">Pflegekind</xsl:when>
            <xsl:when test="$code='CHLDINLAW'">Schwiegerkind</xsl:when>
            <xsl:when test="$code='STPCHLD'">Stiefkind</xsl:when>
            <xsl:when test="$code='DAUC'">Tochter</xsl:when>
            <xsl:when test="$code='DAU'">leibliche Tochter</xsl:when>
            <xsl:when test="$code='DAUADOPT'">Adoptivtocher</xsl:when>
            <xsl:when test="$code='DAUFOST'">Pflegetochter</xsl:when>
            <xsl:when test="$code='DAUINLAW'">Schwiegertochter</xsl:when>
            <xsl:when test="$code='STPDAU'">Stieftochter</xsl:when>
            <xsl:when test="$code='SONC'">Sohn</xsl:when>
            <xsl:when test="$code='SON'">leiblicher Sohn</xsl:when>
            <xsl:when test="$code='SONADOPT'">Adoptivsohn</xsl:when>
            <xsl:when test="$code='SONFOST'">Pflegesohn</xsl:when>
            <xsl:when test="$code='SONINLAW'">Schwiegersohn</xsl:when>
            <xsl:when test="$code='STPSON'">Stiefsohn</xsl:when>
            <xsl:when test="$code='GRPRN'">Großelternteil</xsl:when>
            <xsl:when test="$code='GRFTH'">Großvater</xsl:when>
            <xsl:when test="$code='GRMTH'">Großmutter</xsl:when>
            <xsl:when test="$code='GGRPRN'">Urgroßelternteil</xsl:when>
            <xsl:when test="$code='GGRFTH'">Urgroßvater</xsl:when>
            <xsl:when test="$code='GGRMTH'">Urgroßmutter</xsl:when>
            <xsl:when test="$code='GRNDCHILD'">Enkelkind</xsl:when>
            <xsl:when test="$code='GRNDDAU'">Enkeltochter</xsl:when>
            <xsl:when test="$code='GRNDSON'">Enkelsohn</xsl:when>
            <xsl:when test="$code='AUNT'">Tante</xsl:when>
            <xsl:when test="$code='UNCLE'">Onkel</xsl:when>
            <xsl:when test="$code='NIENEPH'">Nichte/Neffe</xsl:when>
            <xsl:when test="$code='COUSN'">Cousine/Cousin</xsl:when>
            <xsl:when test="$code='FRND'">Bekannte/Bekannter</xsl:when>
            <xsl:when test="$code='SIGOTHR'">wichtige Bezugsperson (z.B. Lebensgefährte)</xsl:when>
            <xsl:when test="$code='ROOM'">MitbewohnerIn</xsl:when>
            <xsl:when test="$code='DOMPART'">LebenspartnerIn</xsl:when>
            <xsl:when test="$code='NBOR'">NachbarIn</xsl:when>
            <xsl:when test="$code='SPON'">Pflegeperson</xsl:when>
            <xsl:when test="$code='GUARD'">SachwalterIn</xsl:when>
            <xsl:when test="$code='SELF'">Patient selbst</xsl:when>
            <xsl:otherwise><xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getHL7ATXDSDokumentenklassen">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='18842-5'">Entlassungsbrief</xsl:when>
            <xsl:when test="$code='11490-0'">Entlassungsbrief Ärztlich</xsl:when>
            <xsl:when test="$code='34745-0'">Entlassungsbrief Pflege</xsl:when>
            <xsl:when test="$code='18761-7'">Transferbericht (Verlegungsbericht)</xsl:when>
            <xsl:when test="$code='11502-2'">Laborbefund</xsl:when>
            <xsl:when test="$code='18748-4'">Befund bildgebende Diagnostik</xsl:when>
            <xsl:when test="$code='25045-6'">Computertomographie-Befund</xsl:when>
            <xsl:when test="$code='25056-3'">Magnetresonanztomographie-Befund</xsl:when>
            <xsl:when test="$code='25061-3'">Ultraschall-Befund</xsl:when>
            <xsl:when test="$code='49118-3'">Nuklearmedizinischer Befund</xsl:when>
            <xsl:when test="$code='44136-0'">Positronen-Emissions-Tomographie-Befund</xsl:when>
            <xsl:when test="$code='18745-0'">Herzkatheter-Befund</xsl:when>
            <xsl:when test="$code='42148-7'">Echokardiographie-Befund</xsl:when>
            <xsl:when test="$code='18782-3'">Radiologie-Befund</xsl:when>
            <xsl:when test="$code='18746-8'">Kolonoskopie-Befund</xsl:when>
            <xsl:when test="$code='18751-8'">Endoskopie-Befund</xsl:when>
            <xsl:when test="$code='11525-3'">Geburtshilfliche Ultraschalluntersuchung</xsl:when>
            <xsl:when test="$code='55113-5'">KOS Objekte</xsl:when>
            <xsl:when test="$code='52471-0'">Medikation</xsl:when>
            <xsl:when test="$code='57833-6'">Rezept</xsl:when>
            <xsl:when test="$code='60593-1'">Abgabe</xsl:when>
            <xsl:when test="$code='56445-0'">Medikationsliste</xsl:when>
            <xsl:when test="$code='61356-2'">Pharmazeutische Empfehlung</xsl:when>
            <xsl:when test="$code='11529-5'">Pathologiebefund</xsl:when>
            <xsl:when test="$code='18743-5'">Obduktionsbefund</xsl:when>
            <xsl:when test="$code='18725-2'">Mikrobiologie-Befund</xsl:when>
            <xsl:when test="$code='11504-8'">OP-Bericht</xsl:when>
            <xsl:when test="$code='57829-4'">Verordnung von Heilbehelfen und Hilfsmitteln</xsl:when>
            <xsl:when test="$code='64288-4'">Brillenverordnung</xsl:when>
            <xsl:when test="$code='75476-2'">Ärztlicher Befund</xsl:when>
            <xsl:when test="$code='34131-3'">Ärztlicher Statusbericht</xsl:when>
            <xsl:when test="$code='34764-1'">Allgemeinmedizinischer Befund</xsl:when>
            <xsl:when test="$code='77403-4'">Anästhesiologischer Befund</xsl:when>
            <xsl:when test="$code='34803-7'">Arbeitsmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34807-8'">Augenbefund</xsl:when>
            <xsl:when test="$code='33720-4'">Immunhämatologischer Befund</xsl:when>
            <xsl:when test="$code='34847-4'">Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='34758-3'">Dermatologiebefund</xsl:when>
            <xsl:when test="$code='34760-9'">Diabetologischer Befund</xsl:when>
            <xsl:when test="$code='34879-7'">Endokrinologiebefund</xsl:when>
            <xsl:when test="$code='34761-7'">Gastroenterologiebefund</xsl:when>
            <xsl:when test="$code='34853-2'">Gefäßchirurgischer Befund</xsl:when>
            <xsl:when test="$code='34776-5'">Geriatriebefund</xsl:when>
            <xsl:when test="$code='69438-0'">Gerichtsmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34777-3'">Gynäkologie-Befund</xsl:when>
            <xsl:when test="$code='34816-9'">Hals-Nasen-Ohrenheilkunde-Befund</xsl:when>
            <xsl:when test="$code='34779-9'">Hämatologie-Befund</xsl:when>
            <xsl:when test="$code='80575-4'">Herzchirurgischer Befund</xsl:when>
            <xsl:when test="$code='77429-9'">Immunologischer Befund</xsl:when>
            <xsl:when test="$code='34781-5'">Infektiologiebefund</xsl:when>
            <xsl:when test="$code='85238-4'">Internistischer Befund</xsl:when>
            <xsl:when test="$code='34099-2'">Kardiologiebefund</xsl:when>
            <xsl:when test="$code='68881-2'">Kinder- und Jugendchirurgischer Befund</xsl:when>
            <xsl:when test="$code='68645-1'">Kinder- und Jugendpsychiatrischer Befund</xsl:when>
            <xsl:when test="$code='78254-0'">Medizinisch-Genetischer Befund</xsl:when>
            <xsl:when test="$code='34812-8'">Mund-, Kiefer- und Gesichtschirurgischer Befund</xsl:when>
            <xsl:when test="$code='34795-5'">Nephrologischer befund</xsl:when>
            <xsl:when test="$code='34798-9'">Neurochirurgischer Befund</xsl:when>
            <xsl:when test="$code='34797-1'">Neurologischer Befund</xsl:when>
            <xsl:when test="$code='34878-9'">Notfallmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34805-2'">Onkologiebefund</xsl:when>
            <xsl:when test="$code='34814-4'">Orthopädischer/Orthopädisch-Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='78726-7'">Pädiatrischer Befund</xsl:when>
            <xsl:when test="$code='78568-3'">Palliativmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34820-1'">Pharmakologisch-Toxikologischer Befund</xsl:when>
            <xsl:when test="$code='34822-7'">Physikalisch-Medizinischer Befund</xsl:when>
            <xsl:when test="$code='34826-8'">Plastisch-Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='67862-3'">Präoperativer Befund</xsl:when>
            <xsl:when test="$code='34788-0'">Psychiatrischer Befund</xsl:when>
            <xsl:when test="$code='34103-2'">Pulmologischer Befund</xsl:when>
            <xsl:when test="$code='82359-1'">Reproduktionsmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34839-1'">Rheumatologischer Befund</xsl:when>
            <xsl:when test="$code='85866-2'">Schlafmedizinischer Befund</xsl:when>
            <xsl:when test="$code='78738-2'">Sportmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34831-8'">Strahlentherapeutisch-Radioonkologischer Befund</xsl:when>
            <xsl:when test="$code='34849-0'">Thoraxchirurgischer Befund</xsl:when>
            <xsl:when test="$code='78732-5'">Unfallchirurgischer Befund</xsl:when>
            <xsl:when test="$code='34851-6'">Urologischer Befund</xsl:when>
            <xsl:when test="$code='34756-7'">Zahn-, Mund- und Kieferheilkunde-Befund</xsl:when>
            <xsl:when test="$code='28651-8'">Pflegesituationsbericht</xsl:when>
            <xsl:when test="$code='46215-0'">Wunddokumentation</xsl:when>
            <xsl:when test="$code='57016-8'">Patienteneinverständniserklärung</xsl:when>
            <xsl:when test="$code='42348-3'">Patientenverfügung</xsl:when>
            <xsl:when test="$code='64298-3'">Vorsorgevollmacht</xsl:when>
            <xsl:when test="$code='34855-7'">Ergotherapeutischer Bericht</xsl:when>
            <xsl:when test="$code='34845-8'">Logopädischer Bericht</xsl:when>
            <xsl:when test="$code='34841-7'">Sozialpädagogischer Bericht</xsl:when>
            <xsl:when test="$code='34791-4'">Psychologischer Bericht</xsl:when>
            <xsl:when test="$code='34800-3'">Diätologie-Bericht</xsl:when>
            <xsl:when test="$code='34824-3'">Physiotherapiebericht</xsl:when>
            <xsl:when test="$code='57057-2'">Geburtsbericht (ärztlich)</xsl:when>
            <xsl:when test="$code='59268-3'">Geburtsbericht (Hebamme)</xsl:when>
            <xsl:when test="$code='34810-2'">Optometrischer Bericht</xsl:when>
            <xsl:when test="$code='29749-9'">Dialysebericht</xsl:when>
            <xsl:when test="$code='72134-0'">Krebsregistermeldung</xsl:when>
            <xsl:when test="$code='57830-2'">Einweisungsbericht</xsl:when>
            <xsl:when test="$code='57834-4'">Anforderung für Patiententransport</xsl:when>
            <xsl:when test="$code='11524-6'">EKG-Bericht</xsl:when>
            <xsl:when test="$code='46209-3'">Anforderung / Auftrag</xsl:when>
            <xsl:when test="$code='11488-4'">Befund</xsl:when>
            <xsl:when test="$code='57831-0'">Antrag auf Anschlussheilverfahren</xsl:when>
            <xsl:when test="$code='60591-5'">Patient Summary</xsl:when>
            <xsl:when test="$code='34133-9'">Krankengeschichte</xsl:when>
            <xsl:when test="$code='11369-6'">Immunisierungsstatus</xsl:when>
            <xsl:when test="$code='82593-5'">Immunisierungsstatus - Zusammenfassung</xsl:when>
            <xsl:when test="$code='87273-9'">Update Immunisierungsstatus</xsl:when>
            <xsl:when test="$code='75496-0'">Telemedizin Bericht</xsl:when>
            <xsl:when test="$code='75497-8'">Telemedizin Fortschrittbericht</xsl:when>
            <xsl:when test="$code='75498-6'">Telemedizin Endbericht</xsl:when>
            <xsl:when test="$code='75500-9'">Triage-Dokumentation</xsl:when>
            <xsl:when test="$code='54094-8'">Triage der Notfallabteilung</xsl:when>
            <xsl:when test="$code='75499-4'">Hotline-Triage (Telefonkontakt)</xsl:when>
            <xsl:otherwise>unbestätigte Dokumentenklasse</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"></meta>

                <style type="text/css">
/*!
 * Bootstrap v4.3.1 (https://getbootstrap.com/)
 * Copyright 2011-2019 The Bootstrap Authors
 * Copyright 2011-2019 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */:root{--blue:#007bff;--indigo:#6610f2;--purple:#6f42c1;--pink:#e83e8c;--red:#dc3545;--orange:#fd7e14;--yellow:#ffc107;--green:#28a745;--teal:#20c997;--cyan:#17a2b8;--white:#fff;--gray:#6c757d;--gray-dark:#343a40;--primary:#007bff;--secondary:#6c757d;--success:#28a745;--info:#17a2b8;--warning:#ffc107;--danger:#dc3545;--light:#f8f9fa;--dark:#343a40;--breakpoint-xs:0;--breakpoint-sm:576px;--breakpoint-md:768px;--breakpoint-lg:992px;--breakpoint-xl:1200px;--font-family-sans-serif:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";--font-family-monospace:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace}*,::after,::before{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15;-webkit-text-size-adjust:100%;-webkit-tap-highlight-color:transparent}article,aside,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}body{margin:0;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#212529;text-align:left;background-color:#fff}[tabindex="-1"]:focus{outline:0!important}hr{box-sizing:content-box;height:0;overflow:visible}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:.5rem}p{margin-top:0;margin-bottom:1rem}abbr[data-original-title],abbr[title]{text-decoration:underline;-webkit-text-decoration:underline dotted;text-decoration:underline dotted;cursor:help;border-bottom:0;-webkit-text-decoration-skip-ink:none;text-decoration-skip-ink:none}address{margin-bottom:1rem;font-style:normal;line-height:inherit}dl,ol,ul{margin-top:0;margin-bottom:1rem}ol ol,ol ul,ul ol,ul ul{margin-bottom:0}dt{font-weight:700}dd{margin-bottom:.5rem;margin-left:0}blockquote{margin:0 0 1rem}b,strong{font-weight:bolder}small{font-size:80%}sub,sup{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}a{color:#007bff;text-decoration:none;background-color:transparent}a:hover{color:#0056b3;text-decoration:underline}a:not([href]):not([tabindex]){color:inherit;text-decoration:none}a:not([href]):not([tabindex]):focus,a:not([href]):not([tabindex]):hover{color:inherit;text-decoration:none}a:not([href]):not([tabindex]):focus{outline:0}code,kbd,pre,samp{font-family:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;font-size:1em}pre{margin-top:0;margin-bottom:1rem;overflow:auto}figure{margin:0 0 1rem}img{vertical-align:middle;border-style:none}svg{overflow:hidden;vertical-align:middle}table{border-collapse:collapse}caption{padding-top:.75rem;padding-bottom:.75rem;color:#6c757d;text-align:left;caption-side:bottom}th{text-align:inherit}label{display:inline-block;margin-bottom:.5rem}button{border-radius:0}button:focus{outline:1px dotted;outline:5px auto -webkit-focus-ring-color}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button,select{text-transform:none}select{word-wrap:normal}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}[type=button]:not(:disabled),[type=reset]:not(:disabled),[type=submit]:not(:disabled),button:not(:disabled){cursor:pointer}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{padding:0;border-style:none}input[type=checkbox],input[type=radio]{box-sizing:border-box;padding:0}input[type=date],input[type=datetime-local],input[type=month],input[type=time]{-webkit-appearance:listbox}textarea{overflow:auto;resize:vertical}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;max-width:100%;padding:0;margin-bottom:.5rem;font-size:1.5rem;line-height:inherit;color:inherit;white-space:normal}progress{vertical-align:baseline}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{outline-offset:-2px;-webkit-appearance:none}[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}output{display:inline-block}summary{display:list-item;cursor:pointer}template{display:none}[hidden]{display:none!important}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{margin-bottom:.5rem;font-weight:500;line-height:1.2}.h1,h1{font-size:2.5rem}.h2,h2{font-size:2rem}.h3,h3{font-size:1.75rem}.h4,h4{font-size:1.5rem}.h5,h5{font-size:1.25rem}.h6,h6{font-size:1rem}.lead{font-size:1.25rem;font-weight:300}.display-1{font-size:6rem;font-weight:300;line-height:1.2}.display-2{font-size:5.5rem;font-weight:300;line-height:1.2}.display-3{font-size:4.5rem;font-weight:300;line-height:1.2}.display-4{font-size:3.5rem;font-weight:300;line-height:1.2}hr{margin-top:1rem;margin-bottom:1rem;border:0;border-top:1px solid rgba(0,0,0,.1)}.small,small{font-size:80%;font-weight:400}.mark,mark{padding:.2em;background-color:#fcf8e3}.list-unstyled{padding-left:0;list-style:none}.list-inline{padding-left:0;list-style:none}.list-inline-item{display:inline-block}.list-inline-item:not(:last-child){margin-right:.5rem}.initialism{font-size:90%;text-transform:uppercase}.blockquote{margin-bottom:1rem;font-size:1.25rem}.blockquote-footer{display:block;font-size:80%;color:#6c757d}.blockquote-footer::before{content:"\2014\00A0"}.img-fluid{max-width:100%;height:auto}.img-thumbnail{padding:.25rem;background-color:#fff;border:1px solid #dee2e6;border-radius:.25rem;max-width:100%;height:auto}.figure{display:inline-block}.figure-img{margin-bottom:.5rem;line-height:1}.figure-caption{font-size:90%;color:#6c757d}code{font-size:87.5%;color:#e83e8c;word-break:break-word}a>code{color:inherit}kbd{padding:.2rem .4rem;font-size:87.5%;color:#fff;background-color:#212529;border-radius:.2rem}kbd kbd{padding:0;font-size:100%;font-weight:700}pre{display:block;font-size:87.5%;color:#212529}pre code{font-size:inherit;color:inherit;word-break:normal}.pre-scrollable{max-height:340px;overflow-y:scroll}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container{max-width:540px}}@media (min-width:768px){.container{max-width:720px}}@media (min-width:992px){.container{max-width:960px}}@media (min-width:1200px){.container{max-width:1140px}}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{position:relative;width:100%;padding-right:15px;padding-left:15px}.col{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:100%}.col-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-first{-ms-flex-order:-1;order:-1}.order-last{-ms-flex-order:13;order:13}.order-0{-ms-flex-order:0;order:0}.order-1{-ms-flex-order:1;order:1}.order-2{-ms-flex-order:2;order:2}.order-3{-ms-flex-order:3;order:3}.order-4{-ms-flex-order:4;order:4}.order-5{-ms-flex-order:5;order:5}.order-6{-ms-flex-order:6;order:6}.order-7{-ms-flex-order:7;order:7}.order-8{-ms-flex-order:8;order:8}.order-9{-ms-flex-order:9;order:9}.order-10{-ms-flex-order:10;order:10}.order-11{-ms-flex-order:11;order:11}.order-12{-ms-flex-order:12;order:12}.offset-1{margin-left:8.333333%}.offset-2{margin-left:16.666667%}.offset-3{margin-left:25%}.offset-4{margin-left:33.333333%}.offset-5{margin-left:41.666667%}.offset-6{margin-left:50%}.offset-7{margin-left:58.333333%}.offset-8{margin-left:66.666667%}.offset-9{margin-left:75%}.offset-10{margin-left:83.333333%}.offset-11{margin-left:91.666667%}@media (min-width:576px){.col-sm{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-sm-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:100%}.col-sm-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-sm-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-sm-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-sm-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-sm-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-sm-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-sm-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-sm-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-sm-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-sm-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-sm-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-sm-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-sm-first{-ms-flex-order:-1;order:-1}.order-sm-last{-ms-flex-order:13;order:13}.order-sm-0{-ms-flex-order:0;order:0}.order-sm-1{-ms-flex-order:1;order:1}.order-sm-2{-ms-flex-order:2;order:2}.order-sm-3{-ms-flex-order:3;order:3}.order-sm-4{-ms-flex-order:4;order:4}.order-sm-5{-ms-flex-order:5;order:5}.order-sm-6{-ms-flex-order:6;order:6}.order-sm-7{-ms-flex-order:7;order:7}.order-sm-8{-ms-flex-order:8;order:8}.order-sm-9{-ms-flex-order:9;order:9}.order-sm-10{-ms-flex-order:10;order:10}.order-sm-11{-ms-flex-order:11;order:11}.order-sm-12{-ms-flex-order:12;order:12}.offset-sm-0{margin-left:0}.offset-sm-1{margin-left:8.333333%}.offset-sm-2{margin-left:16.666667%}.offset-sm-3{margin-left:25%}.offset-sm-4{margin-left:33.333333%}.offset-sm-5{margin-left:41.666667%}.offset-sm-6{margin-left:50%}.offset-sm-7{margin-left:58.333333%}.offset-sm-8{margin-left:66.666667%}.offset-sm-9{margin-left:75%}.offset-sm-10{margin-left:83.333333%}.offset-sm-11{margin-left:91.666667%}}@media (min-width:768px){.col-md{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-md-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:100%}.col-md-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-md-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-md-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-md-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-md-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-md-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-md-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-md-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-md-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-md-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-md-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-md-first{-ms-flex-order:-1;order:-1}.order-md-last{-ms-flex-order:13;order:13}.order-md-0{-ms-flex-order:0;order:0}.order-md-1{-ms-flex-order:1;order:1}.order-md-2{-ms-flex-order:2;order:2}.order-md-3{-ms-flex-order:3;order:3}.order-md-4{-ms-flex-order:4;order:4}.order-md-5{-ms-flex-order:5;order:5}.order-md-6{-ms-flex-order:6;order:6}.order-md-7{-ms-flex-order:7;order:7}.order-md-8{-ms-flex-order:8;order:8}.order-md-9{-ms-flex-order:9;order:9}.order-md-10{-ms-flex-order:10;order:10}.order-md-11{-ms-flex-order:11;order:11}.order-md-12{-ms-flex-order:12;order:12}.offset-md-0{margin-left:0}.offset-md-1{margin-left:8.333333%}.offset-md-2{margin-left:16.666667%}.offset-md-3{margin-left:25%}.offset-md-4{margin-left:33.333333%}.offset-md-5{margin-left:41.666667%}.offset-md-6{margin-left:50%}.offset-md-7{margin-left:58.333333%}.offset-md-8{margin-left:66.666667%}.offset-md-9{margin-left:75%}.offset-md-10{margin-left:83.333333%}.offset-md-11{margin-left:91.666667%}}@media (min-width:992px){.col-lg{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-lg-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:100%}.col-lg-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-lg-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-lg-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-lg-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-lg-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-lg-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-lg-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-lg-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-lg-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-lg-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-lg-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-lg-first{-ms-flex-order:-1;order:-1}.order-lg-last{-ms-flex-order:13;order:13}.order-lg-0{-ms-flex-order:0;order:0}.order-lg-1{-ms-flex-order:1;order:1}.order-lg-2{-ms-flex-order:2;order:2}.order-lg-3{-ms-flex-order:3;order:3}.order-lg-4{-ms-flex-order:4;order:4}.order-lg-5{-ms-flex-order:5;order:5}.order-lg-6{-ms-flex-order:6;order:6}.order-lg-7{-ms-flex-order:7;order:7}.order-lg-8{-ms-flex-order:8;order:8}.order-lg-9{-ms-flex-order:9;order:9}.order-lg-10{-ms-flex-order:10;order:10}.order-lg-11{-ms-flex-order:11;order:11}.order-lg-12{-ms-flex-order:12;order:12}.offset-lg-0{margin-left:0}.offset-lg-1{margin-left:8.333333%}.offset-lg-2{margin-left:16.666667%}.offset-lg-3{margin-left:25%}.offset-lg-4{margin-left:33.333333%}.offset-lg-5{margin-left:41.666667%}.offset-lg-6{margin-left:50%}.offset-lg-7{margin-left:58.333333%}.offset-lg-8{margin-left:66.666667%}.offset-lg-9{margin-left:75%}.offset-lg-10{margin-left:83.333333%}.offset-lg-11{margin-left:91.666667%}}@media (min-width:1200px){.col-xl{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-xl-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:100%}.col-xl-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-xl-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-xl-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-xl-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-xl-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-xl-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-xl-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-xl-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-xl-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-xl-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-xl-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-xl-first{-ms-flex-order:-1;order:-1}.order-xl-last{-ms-flex-order:13;order:13}.order-xl-0{-ms-flex-order:0;order:0}.order-xl-1{-ms-flex-order:1;order:1}.order-xl-2{-ms-flex-order:2;order:2}.order-xl-3{-ms-flex-order:3;order:3}.order-xl-4{-ms-flex-order:4;order:4}.order-xl-5{-ms-flex-order:5;order:5}.order-xl-6{-ms-flex-order:6;order:6}.order-xl-7{-ms-flex-order:7;order:7}.order-xl-8{-ms-flex-order:8;order:8}.order-xl-9{-ms-flex-order:9;order:9}.order-xl-10{-ms-flex-order:10;order:10}.order-xl-11{-ms-flex-order:11;order:11}.order-xl-12{-ms-flex-order:12;order:12}.offset-xl-0{margin-left:0}.offset-xl-1{margin-left:8.333333%}.offset-xl-2{margin-left:16.666667%}.offset-xl-3{margin-left:25%}.offset-xl-4{margin-left:33.333333%}.offset-xl-5{margin-left:41.666667%}.offset-xl-6{margin-left:50%}.offset-xl-7{margin-left:58.333333%}.offset-xl-8{margin-left:66.666667%}.offset-xl-9{margin-left:75%}.offset-xl-10{margin-left:83.333333%}.offset-xl-11{margin-left:91.666667%}}.table{width:100%;margin-bottom:1rem;color:#212529}.table td,.table th{padding:.75rem;vertical-align:top;border-top:1px solid #dee2e6}.table thead th{vertical-align:bottom;border-bottom:2px solid #dee2e6}.table tbody+tbody{border-top:2px solid #dee2e6}.table-sm td,.table-sm th{padding:.3rem}.table-bordered{border:1px solid #dee2e6}.table-bordered td,.table-bordered th{border:1px solid #dee2e6}.table-bordered thead td,.table-bordered thead th{border-bottom-width:2px}.table-borderless tbody+tbody,.table-borderless td,.table-borderless th,.table-borderless thead th{border:0}.table-striped tbody tr:nth-of-type(odd){background-color:rgba(0,0,0,.05)}.table-hover tbody tr:hover{color:#212529;background-color:rgba(0,0,0,.075)}.table-primary,.table-primary>td,.table-primary>th{background-color:#b8daff}.table-primary tbody+tbody,.table-primary td,.table-primary th,.table-primary thead th{border-color:#7abaff}.table-hover .table-primary:hover{background-color:#9fcdff}.table-hover .table-primary:hover>td,.table-hover .table-primary:hover>th{background-color:#9fcdff}.table-secondary,.table-secondary>td,.table-secondary>th{background-color:#d6d8db}.table-secondary tbody+tbody,.table-secondary td,.table-secondary th,.table-secondary thead th{border-color:#b3b7bb}.table-hover .table-secondary:hover{background-color:#c8cbcf}.table-hover .table-secondary:hover>td,.table-hover .table-secondary:hover>th{background-color:#c8cbcf}.table-success,.table-success>td,.table-success>th{background-color:#c3e6cb}.table-success tbody+tbody,.table-success td,.table-success th,.table-success thead th{border-color:#8fd19e}.table-hover .table-success:hover{background-color:#b1dfbb}.table-hover .table-success:hover>td,.table-hover .table-success:hover>th{background-color:#b1dfbb}.table-info,.table-info>td,.table-info>th{background-color:#bee5eb}.table-info tbody+tbody,.table-info td,.table-info th,.table-info thead th{border-color:#86cfda}.table-hover .table-info:hover{background-color:#abdde5}.table-hover .table-info:hover>td,.table-hover .table-info:hover>th{background-color:#abdde5}.table-warning,.table-warning>td,.table-warning>th{background-color:#ffeeba}.table-warning tbody+tbody,.table-warning td,.table-warning th,.table-warning thead th{border-color:#ffdf7e}.table-hover .table-warning:hover{background-color:#ffe8a1}.table-hover .table-warning:hover>td,.table-hover .table-warning:hover>th{background-color:#ffe8a1}.table-danger,.table-danger>td,.table-danger>th{background-color:#f5c6cb}.table-danger tbody+tbody,.table-danger td,.table-danger th,.table-danger thead th{border-color:#ed969e}.table-hover .table-danger:hover{background-color:#f1b0b7}.table-hover .table-danger:hover>td,.table-hover .table-danger:hover>th{background-color:#f1b0b7}.table-light,.table-light>td,.table-light>th{background-color:#fdfdfe}.table-light tbody+tbody,.table-light td,.table-light th,.table-light thead th{border-color:#fbfcfc}.table-hover .table-light:hover{background-color:#ececf6}.table-hover .table-light:hover>td,.table-hover .table-light:hover>th{background-color:#ececf6}.table-dark,.table-dark>td,.table-dark>th{background-color:#c6c8ca}.table-dark tbody+tbody,.table-dark td,.table-dark th,.table-dark thead th{border-color:#95999c}.table-hover .table-dark:hover{background-color:#b9bbbe}.table-hover .table-dark:hover>td,.table-hover .table-dark:hover>th{background-color:#b9bbbe}.table-active,.table-active>td,.table-active>th{background-color:rgba(0,0,0,.075)}.table-hover .table-active:hover{background-color:rgba(0,0,0,.075)}.table-hover .table-active:hover>td,.table-hover .table-active:hover>th{background-color:rgba(0,0,0,.075)}.table .thead-dark th{color:#fff;background-color:#343a40;border-color:#454d55}.table .thead-light th{color:#495057;background-color:#e9ecef;border-color:#dee2e6}.table-dark{color:#fff;background-color:#343a40}.table-dark td,.table-dark th,.table-dark thead th{border-color:#454d55}.table-dark.table-bordered{border:0}.table-dark.table-striped tbody tr:nth-of-type(odd){background-color:rgba(255,255,255,.05)}.table-dark.table-hover tbody tr:hover{color:#fff;background-color:rgba(255,255,255,.075)}@media (max-width:575.98px){.table-responsive-sm{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch}.table-responsive-sm>.table-bordered{border:0}}@media (max-width:767.98px){.table-responsive-md{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch}.table-responsive-md>.table-bordered{border:0}}@media (max-width:991.98px){.table-responsive-lg{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch}.table-responsive-lg>.table-bordered{border:0}}@media (max-width:1199.98px){.table-responsive-xl{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch}.table-responsive-xl>.table-bordered{border:0}}.table-responsive{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch}.table-responsive>.table-bordered{border:0}.form-control{display:block;width:100%;height:calc(1.5em + .75rem + 2px);padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#495057;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;border-radius:.25rem;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media (prefers-reduced-motion:reduce){.form-control{transition:none}}.form-control::-ms-expand{background-color:transparent;border:0}.form-control:focus{color:#495057;background-color:#fff;border-color:#80bdff;outline:0;box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.form-control::-webkit-input-placeholder{color:#6c757d;opacity:1}.form-control::-moz-placeholder{color:#6c757d;opacity:1}.form-control:-ms-input-placeholder{color:#6c757d;opacity:1}.form-control::-ms-input-placeholder{color:#6c757d;opacity:1}.form-control::placeholder{color:#6c757d;opacity:1}.form-control:disabled,.form-control[readonly]{background-color:#e9ecef;opacity:1}select.form-control:focus::-ms-value{color:#495057;background-color:#fff}.form-control-file,.form-control-range{display:block;width:100%}.col-form-label{padding-top:calc(.375rem + 1px);padding-bottom:calc(.375rem + 1px);margin-bottom:0;font-size:inherit;line-height:1.5}.col-form-label-lg{padding-top:calc(.5rem + 1px);padding-bottom:calc(.5rem + 1px);font-size:1.25rem;line-height:1.5}.col-form-label-sm{padding-top:calc(.25rem + 1px);padding-bottom:calc(.25rem + 1px);font-size:.875rem;line-height:1.5}.form-control-plaintext{display:block;width:100%;padding-top:.375rem;padding-bottom:.375rem;margin-bottom:0;line-height:1.5;color:#212529;background-color:transparent;border:solid transparent;border-width:1px 0}.form-control-plaintext.form-control-lg,.form-control-plaintext.form-control-sm{padding-right:0;padding-left:0}.form-control-sm{height:calc(1.5em + .5rem + 2px);padding:.25rem .5rem;font-size:.875rem;line-height:1.5;border-radius:.2rem}.form-control-lg{height:calc(1.5em + 1rem + 2px);padding:.5rem 1rem;font-size:1.25rem;line-height:1.5;border-radius:.3rem}select.form-control[multiple],select.form-control[size]{height:auto}textarea.form-control{height:auto}.form-group{margin-bottom:1rem}.form-text{display:block;margin-top:.25rem}.form-row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-5px;margin-left:-5px}.form-row>.col,.form-row>[class*=col-]{padding-right:5px;padding-left:5px}.form-check{position:relative;display:block;padding-left:1.25rem}.form-check-input{position:absolute;margin-top:.3rem;margin-left:-1.25rem}.form-check-input:disabled~.form-check-label{color:#6c757d}.form-check-label{margin-bottom:0}.form-check-inline{display:-ms-inline-flexbox;display:inline-flex;-ms-flex-align:center;align-items:center;padding-left:0;margin-right:.75rem}.form-check-inline .form-check-input{position:static;margin-top:0;margin-right:.3125rem;margin-left:0}.valid-feedback{display:none;width:100%;margin-top:.25rem;font-size:80%;color:#28a745}.valid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.25rem .5rem;margin-top:.1rem;font-size:.875rem;line-height:1.5;color:#fff;background-color:rgba(40,167,69,.9);border-radius:.25rem}.form-control.is-valid,.was-validated .form-control:valid{border-color:#28a745;padding-right:calc(1.5em + .75rem);background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%2328a745' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");background-repeat:no-repeat;background-position:center right calc(.375em + .1875rem);background-size:calc(.75em + .375rem) calc(.75em + .375rem)}.form-control.is-valid:focus,.was-validated .form-control:valid:focus{border-color:#28a745;box-shadow:0 0 0 .2rem rgba(40,167,69,.25)}.form-control.is-valid~.valid-feedback,.form-control.is-valid~.valid-tooltip,.was-validated .form-control:valid~.valid-feedback,.was-validated .form-control:valid~.valid-tooltip{display:block}.was-validated textarea.form-control:valid,textarea.form-control.is-valid{padding-right:calc(1.5em + .75rem);background-position:top calc(.375em + .1875rem) right calc(.375em + .1875rem)}.custom-select.is-valid,.was-validated .custom-select:valid{border-color:#28a745;padding-right:calc((1em + .75rem) * 3 / 4 + 1.75rem);background:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right .75rem center/8px 10px,url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%2328a745' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e") #fff no-repeat center right 1.75rem/calc(.75em + .375rem) calc(.75em + .375rem)}.custom-select.is-valid:focus,.was-validated .custom-select:valid:focus{border-color:#28a745;box-shadow:0 0 0 .2rem rgba(40,167,69,.25)}.custom-select.is-valid~.valid-feedback,.custom-select.is-valid~.valid-tooltip,.was-validated .custom-select:valid~.valid-feedback,.was-validated .custom-select:valid~.valid-tooltip{display:block}.form-control-file.is-valid~.valid-feedback,.form-control-file.is-valid~.valid-tooltip,.was-validated .form-control-file:valid~.valid-feedback,.was-validated .form-control-file:valid~.valid-tooltip{display:block}.form-check-input.is-valid~.form-check-label,.was-validated .form-check-input:valid~.form-check-label{color:#28a745}.form-check-input.is-valid~.valid-feedback,.form-check-input.is-valid~.valid-tooltip,.was-validated .form-check-input:valid~.valid-feedback,.was-validated .form-check-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid~.custom-control-label,.was-validated .custom-control-input:valid~.custom-control-label{color:#28a745}.custom-control-input.is-valid~.custom-control-label::before,.was-validated .custom-control-input:valid~.custom-control-label::before{border-color:#28a745}.custom-control-input.is-valid~.valid-feedback,.custom-control-input.is-valid~.valid-tooltip,.was-validated .custom-control-input:valid~.valid-feedback,.was-validated .custom-control-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid:checked~.custom-control-label::before,.was-validated .custom-control-input:valid:checked~.custom-control-label::before{border-color:#34ce57;background-color:#34ce57}.custom-control-input.is-valid:focus~.custom-control-label::before,.was-validated .custom-control-input:valid:focus~.custom-control-label::before{box-shadow:0 0 0 .2rem rgba(40,167,69,.25)}.custom-control-input.is-valid:focus:not(:checked)~.custom-control-label::before,.was-validated .custom-control-input:valid:focus:not(:checked)~.custom-control-label::before{border-color:#28a745}.custom-file-input.is-valid~.custom-file-label,.was-validated .custom-file-input:valid~.custom-file-label{border-color:#28a745}.custom-file-input.is-valid~.valid-feedback,.custom-file-input.is-valid~.valid-tooltip,.was-validated .custom-file-input:valid~.valid-feedback,.was-validated .custom-file-input:valid~.valid-tooltip{display:block}.custom-file-input.is-valid:focus~.custom-file-label,.was-validated .custom-file-input:valid:focus~.custom-file-label{border-color:#28a745;box-shadow:0 0 0 .2rem rgba(40,167,69,.25)}.invalid-feedback{display:none;width:100%;margin-top:.25rem;font-size:80%;color:#dc3545}.invalid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.25rem .5rem;margin-top:.1rem;font-size:.875rem;line-height:1.5;color:#fff;background-color:rgba(220,53,69,.9);border-radius:.25rem}.form-control.is-invalid,.was-validated .form-control:invalid{border-color:#dc3545;padding-right:calc(1.5em + .75rem);background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23dc3545' viewBox='-2 -2 7 7'%3e%3cpath stroke='%23dc3545' d='M0 0l3 3m0-3L0 3'/%3e%3ccircle r='.5'/%3e%3ccircle cx='3' r='.5'/%3e%3ccircle cy='3' r='.5'/%3e%3ccircle cx='3' cy='3' r='.5'/%3e%3c/svg%3E");background-repeat:no-repeat;background-position:center right calc(.375em + .1875rem);background-size:calc(.75em + .375rem) calc(.75em + .375rem)}.form-control.is-invalid:focus,.was-validated .form-control:invalid:focus{border-color:#dc3545;box-shadow:0 0 0 .2rem rgba(220,53,69,.25)}.form-control.is-invalid~.invalid-feedback,.form-control.is-invalid~.invalid-tooltip,.was-validated .form-control:invalid~.invalid-feedback,.was-validated .form-control:invalid~.invalid-tooltip{display:block}.was-validated textarea.form-control:invalid,textarea.form-control.is-invalid{padding-right:calc(1.5em + .75rem);background-position:top calc(.375em + .1875rem) right calc(.375em + .1875rem)}.custom-select.is-invalid,.was-validated .custom-select:invalid{border-color:#dc3545;padding-right:calc((1em + .75rem) * 3 / 4 + 1.75rem);background:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right .75rem center/8px 10px,url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23dc3545' viewBox='-2 -2 7 7'%3e%3cpath stroke='%23dc3545' d='M0 0l3 3m0-3L0 3'/%3e%3ccircle r='.5'/%3e%3ccircle cx='3' r='.5'/%3e%3ccircle cy='3' r='.5'/%3e%3ccircle cx='3' cy='3' r='.5'/%3e%3c/svg%3E") #fff no-repeat center right 1.75rem/calc(.75em + .375rem) calc(.75em + .375rem)}.custom-select.is-invalid:focus,.was-validated .custom-select:invalid:focus{border-color:#dc3545;box-shadow:0 0 0 .2rem rgba(220,53,69,.25)}.custom-select.is-invalid~.invalid-feedback,.custom-select.is-invalid~.invalid-tooltip,.was-validated .custom-select:invalid~.invalid-feedback,.was-validated .custom-select:invalid~.invalid-tooltip{display:block}.form-control-file.is-invalid~.invalid-feedback,.form-control-file.is-invalid~.invalid-tooltip,.was-validated .form-control-file:invalid~.invalid-feedback,.was-validated .form-control-file:invalid~.invalid-tooltip{display:block}.form-check-input.is-invalid~.form-check-label,.was-validated .form-check-input:invalid~.form-check-label{color:#dc3545}.form-check-input.is-invalid~.invalid-feedback,.form-check-input.is-invalid~.invalid-tooltip,.was-validated .form-check-input:invalid~.invalid-feedback,.was-validated .form-check-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid~.custom-control-label,.was-validated .custom-control-input:invalid~.custom-control-label{color:#dc3545}.custom-control-input.is-invalid~.custom-control-label::before,.was-validated .custom-control-input:invalid~.custom-control-label::before{border-color:#dc3545}.custom-control-input.is-invalid~.invalid-feedback,.custom-control-input.is-invalid~.invalid-tooltip,.was-validated .custom-control-input:invalid~.invalid-feedback,.was-validated .custom-control-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid:checked~.custom-control-label::before,.was-validated .custom-control-input:invalid:checked~.custom-control-label::before{border-color:#e4606d;background-color:#e4606d}.custom-control-input.is-invalid:focus~.custom-control-label::before,.was-validated .custom-control-input:invalid:focus~.custom-control-label::before{box-shadow:0 0 0 .2rem rgba(220,53,69,.25)}.custom-control-input.is-invalid:focus:not(:checked)~.custom-control-label::before,.was-validated .custom-control-input:invalid:focus:not(:checked)~.custom-control-label::before{border-color:#dc3545}.custom-file-input.is-invalid~.custom-file-label,.was-validated .custom-file-input:invalid~.custom-file-label{border-color:#dc3545}.custom-file-input.is-invalid~.invalid-feedback,.custom-file-input.is-invalid~.invalid-tooltip,.was-validated .custom-file-input:invalid~.invalid-feedback,.was-validated .custom-file-input:invalid~.invalid-tooltip{display:block}.custom-file-input.is-invalid:focus~.custom-file-label,.was-validated .custom-file-input:invalid:focus~.custom-file-label{border-color:#dc3545;box-shadow:0 0 0 .2rem rgba(220,53,69,.25)}.form-inline{display:-ms-flexbox;display:flex;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center;align-items:center}.form-inline .form-check{width:100%}@media (min-width:576px){.form-inline label{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;margin-bottom:0}.form-inline .form-group{display:-ms-flexbox;display:flex;-ms-flex:0 0 auto;flex:0 0 auto;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center;align-items:center;margin-bottom:0}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-plaintext{display:inline-block}.form-inline .custom-select,.form-inline .input-group{width:auto}.form-inline .form-check{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;width:auto;padding-left:0}.form-inline .form-check-input{position:relative;-ms-flex-negative:0;flex-shrink:0;margin-top:0;margin-right:.25rem;margin-left:0}.form-inline .custom-control{-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.form-inline .custom-control-label{margin-bottom:0}}.btn{display:inline-block;font-weight:400;color:#212529;text-align:center;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-color:transparent;border:1px solid transparent;padding:.375rem .75rem;font-size:1rem;line-height:1.5;border-radius:.25rem;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media (prefers-reduced-motion:reduce){.btn{transition:none}}.btn:hover{color:#212529;text-decoration:none}.btn.focus,.btn:focus{outline:0;box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.btn.disabled,.btn:disabled{opacity:.65}a.btn.disabled,fieldset:disabled a.btn{pointer-events:none}.btn-primary{color:#fff;background-color:#007bff;border-color:#007bff}.btn-primary:hover{color:#fff;background-color:#0069d9;border-color:#0062cc}.btn-primary.focus,.btn-primary:focus{box-shadow:0 0 0 .2rem rgba(38,143,255,.5)}.btn-primary.disabled,.btn-primary:disabled{color:#fff;background-color:#007bff;border-color:#007bff}.btn-primary:not(:disabled):not(.disabled).active,.btn-primary:not(:disabled):not(.disabled):active,.show>.btn-primary.dropdown-toggle{color:#fff;background-color:#0062cc;border-color:#005cbf}.btn-primary:not(:disabled):not(.disabled).active:focus,.btn-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(38,143,255,.5)}.btn-secondary{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-secondary:hover{color:#fff;background-color:#5a6268;border-color:#545b62}.btn-secondary.focus,.btn-secondary:focus{box-shadow:0 0 0 .2rem rgba(130,138,145,.5)}.btn-secondary.disabled,.btn-secondary:disabled{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-secondary:not(:disabled):not(.disabled).active,.btn-secondary:not(:disabled):not(.disabled):active,.show>.btn-secondary.dropdown-toggle{color:#fff;background-color:#545b62;border-color:#4e555b}.btn-secondary:not(:disabled):not(.disabled).active:focus,.btn-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(130,138,145,.5)}.btn-success{color:#fff;background-color:#28a745;border-color:#28a745}.btn-success:hover{color:#fff;background-color:#218838;border-color:#1e7e34}.btn-success.focus,.btn-success:focus{box-shadow:0 0 0 .2rem rgba(72,180,97,.5)}.btn-success.disabled,.btn-success:disabled{color:#fff;background-color:#28a745;border-color:#28a745}.btn-success:not(:disabled):not(.disabled).active,.btn-success:not(:disabled):not(.disabled):active,.show>.btn-success.dropdown-toggle{color:#fff;background-color:#1e7e34;border-color:#1c7430}.btn-success:not(:disabled):not(.disabled).active:focus,.btn-success:not(:disabled):not(.disabled):active:focus,.show>.btn-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(72,180,97,.5)}.btn-info{color:#fff;background-color:#17a2b8;border-color:#17a2b8}.btn-info:hover{color:#fff;background-color:#138496;border-color:#117a8b}.btn-info.focus,.btn-info:focus{box-shadow:0 0 0 .2rem rgba(58,176,195,.5)}.btn-info.disabled,.btn-info:disabled{color:#fff;background-color:#17a2b8;border-color:#17a2b8}.btn-info:not(:disabled):not(.disabled).active,.btn-info:not(:disabled):not(.disabled):active,.show>.btn-info.dropdown-toggle{color:#fff;background-color:#117a8b;border-color:#10707f}.btn-info:not(:disabled):not(.disabled).active:focus,.btn-info:not(:disabled):not(.disabled):active:focus,.show>.btn-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(58,176,195,.5)}.btn-warning{color:#212529;background-color:#ffc107;border-color:#ffc107}.btn-warning:hover{color:#212529;background-color:#e0a800;border-color:#d39e00}.btn-warning.focus,.btn-warning:focus{box-shadow:0 0 0 .2rem rgba(222,170,12,.5)}.btn-warning.disabled,.btn-warning:disabled{color:#212529;background-color:#ffc107;border-color:#ffc107}.btn-warning:not(:disabled):not(.disabled).active,.btn-warning:not(:disabled):not(.disabled):active,.show>.btn-warning.dropdown-toggle{color:#212529;background-color:#d39e00;border-color:#c69500}.btn-warning:not(:disabled):not(.disabled).active:focus,.btn-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(222,170,12,.5)}.btn-danger{color:#fff;background-color:#dc3545;border-color:#dc3545}.btn-danger:hover{color:#fff;background-color:#c82333;border-color:#bd2130}.btn-danger.focus,.btn-danger:focus{box-shadow:0 0 0 .2rem rgba(225,83,97,.5)}.btn-danger.disabled,.btn-danger:disabled{color:#fff;background-color:#dc3545;border-color:#dc3545}.btn-danger:not(:disabled):not(.disabled).active,.btn-danger:not(:disabled):not(.disabled):active,.show>.btn-danger.dropdown-toggle{color:#fff;background-color:#bd2130;border-color:#b21f2d}.btn-danger:not(:disabled):not(.disabled).active:focus,.btn-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(225,83,97,.5)}.btn-light{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-light:hover{color:#212529;background-color:#e2e6ea;border-color:#dae0e5}.btn-light.focus,.btn-light:focus{box-shadow:0 0 0 .2rem rgba(216,217,219,.5)}.btn-light.disabled,.btn-light:disabled{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-light:not(:disabled):not(.disabled).active,.btn-light:not(:disabled):not(.disabled):active,.show>.btn-light.dropdown-toggle{color:#212529;background-color:#dae0e5;border-color:#d3d9df}.btn-light:not(:disabled):not(.disabled).active:focus,.btn-light:not(:disabled):not(.disabled):active:focus,.show>.btn-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(216,217,219,.5)}.btn-dark{color:#fff;background-color:#343a40;border-color:#343a40}.btn-dark:hover{color:#fff;background-color:#23272b;border-color:#1d2124}.btn-dark.focus,.btn-dark:focus{box-shadow:0 0 0 .2rem rgba(82,88,93,.5)}.btn-dark.disabled,.btn-dark:disabled{color:#fff;background-color:#343a40;border-color:#343a40}.btn-dark:not(:disabled):not(.disabled).active,.btn-dark:not(:disabled):not(.disabled):active,.show>.btn-dark.dropdown-toggle{color:#fff;background-color:#1d2124;border-color:#171a1d}.btn-dark:not(:disabled):not(.disabled).active:focus,.btn-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(82,88,93,.5)}.btn-outline-primary{color:#007bff;border-color:#007bff}.btn-outline-primary:hover{color:#fff;background-color:#007bff;border-color:#007bff}.btn-outline-primary.focus,.btn-outline-primary:focus{box-shadow:0 0 0 .2rem rgba(0,123,255,.5)}.btn-outline-primary.disabled,.btn-outline-primary:disabled{color:#007bff;background-color:transparent}.btn-outline-primary:not(:disabled):not(.disabled).active,.btn-outline-primary:not(:disabled):not(.disabled):active,.show>.btn-outline-primary.dropdown-toggle{color:#fff;background-color:#007bff;border-color:#007bff}.btn-outline-primary:not(:disabled):not(.disabled).active:focus,.btn-outline-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(0,123,255,.5)}.btn-outline-secondary{color:#6c757d;border-color:#6c757d}.btn-outline-secondary:hover{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-outline-secondary.focus,.btn-outline-secondary:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-outline-secondary.disabled,.btn-outline-secondary:disabled{color:#6c757d;background-color:transparent}.btn-outline-secondary:not(:disabled):not(.disabled).active,.btn-outline-secondary:not(:disabled):not(.disabled):active,.show>.btn-outline-secondary.dropdown-toggle{color:#fff;background-color:#6c757d;border-color:#6c757d}.btn-outline-secondary:not(:disabled):not(.disabled).active:focus,.btn-outline-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.btn-outline-success{color:#28a745;border-color:#28a745}.btn-outline-success:hover{color:#fff;background-color:#28a745;border-color:#28a745}.btn-outline-success.focus,.btn-outline-success:focus{box-shadow:0 0 0 .2rem rgba(40,167,69,.5)}.btn-outline-success.disabled,.btn-outline-success:disabled{color:#28a745;background-color:transparent}.btn-outline-success:not(:disabled):not(.disabled).active,.btn-outline-success:not(:disabled):not(.disabled):active,.show>.btn-outline-success.dropdown-toggle{color:#fff;background-color:#28a745;border-color:#28a745}.btn-outline-success:not(:disabled):not(.disabled).active:focus,.btn-outline-success:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(40,167,69,.5)}.btn-outline-info{color:#17a2b8;border-color:#17a2b8}.btn-outline-info:hover{color:#fff;background-color:#17a2b8;border-color:#17a2b8}.btn-outline-info.focus,.btn-outline-info:focus{box-shadow:0 0 0 .2rem rgba(23,162,184,.5)}.btn-outline-info.disabled,.btn-outline-info:disabled{color:#17a2b8;background-color:transparent}.btn-outline-info:not(:disabled):not(.disabled).active,.btn-outline-info:not(:disabled):not(.disabled):active,.show>.btn-outline-info.dropdown-toggle{color:#fff;background-color:#17a2b8;border-color:#17a2b8}.btn-outline-info:not(:disabled):not(.disabled).active:focus,.btn-outline-info:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(23,162,184,.5)}.btn-outline-warning{color:#ffc107;border-color:#ffc107}.btn-outline-warning:hover{color:#212529;background-color:#ffc107;border-color:#ffc107}.btn-outline-warning.focus,.btn-outline-warning:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-outline-warning.disabled,.btn-outline-warning:disabled{color:#ffc107;background-color:transparent}.btn-outline-warning:not(:disabled):not(.disabled).active,.btn-outline-warning:not(:disabled):not(.disabled):active,.show>.btn-outline-warning.dropdown-toggle{color:#212529;background-color:#ffc107;border-color:#ffc107}.btn-outline-warning:not(:disabled):not(.disabled).active:focus,.btn-outline-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-outline-danger{color:#dc3545;border-color:#dc3545}.btn-outline-danger:hover{color:#fff;background-color:#dc3545;border-color:#dc3545}.btn-outline-danger.focus,.btn-outline-danger:focus{box-shadow:0 0 0 .2rem rgba(220,53,69,.5)}.btn-outline-danger.disabled,.btn-outline-danger:disabled{color:#dc3545;background-color:transparent}.btn-outline-danger:not(:disabled):not(.disabled).active,.btn-outline-danger:not(:disabled):not(.disabled):active,.show>.btn-outline-danger.dropdown-toggle{color:#fff;background-color:#dc3545;border-color:#dc3545}.btn-outline-danger:not(:disabled):not(.disabled).active:focus,.btn-outline-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(220,53,69,.5)}.btn-outline-light{color:#f8f9fa;border-color:#f8f9fa}.btn-outline-light:hover{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-outline-light.focus,.btn-outline-light:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-outline-light.disabled,.btn-outline-light:disabled{color:#f8f9fa;background-color:transparent}.btn-outline-light:not(:disabled):not(.disabled).active,.btn-outline-light:not(:disabled):not(.disabled):active,.show>.btn-outline-light.dropdown-toggle{color:#212529;background-color:#f8f9fa;border-color:#f8f9fa}.btn-outline-light:not(:disabled):not(.disabled).active:focus,.btn-outline-light:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.btn-outline-dark{color:#343a40;border-color:#343a40}.btn-outline-dark:hover{color:#fff;background-color:#343a40;border-color:#343a40}.btn-outline-dark.focus,.btn-outline-dark:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-outline-dark.disabled,.btn-outline-dark:disabled{color:#343a40;background-color:transparent}.btn-outline-dark:not(:disabled):not(.disabled).active,.btn-outline-dark:not(:disabled):not(.disabled):active,.show>.btn-outline-dark.dropdown-toggle{color:#fff;background-color:#343a40;border-color:#343a40}.btn-outline-dark:not(:disabled):not(.disabled).active:focus,.btn-outline-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.btn-link{font-weight:400;color:#007bff;text-decoration:none}.btn-link:hover{color:#0056b3;text-decoration:underline}.btn-link.focus,.btn-link:focus{text-decoration:underline;box-shadow:none}.btn-link.disabled,.btn-link:disabled{color:#6c757d;pointer-events:none}.btn-group-lg>.btn,.btn-lg{padding:.5rem 1rem;font-size:1.25rem;line-height:1.5;border-radius:.3rem}.btn-group-sm>.btn,.btn-sm{padding:.25rem .5rem;font-size:.875rem;line-height:1.5;border-radius:.2rem}.btn-block{display:block;width:100%}.btn-block+.btn-block{margin-top:.5rem}input[type=button].btn-block,input[type=reset].btn-block,input[type=submit].btn-block{width:100%}.fade{transition:opacity .15s linear}@media (prefers-reduced-motion:reduce){.fade{transition:none}}.fade:not(.show){opacity:0}.collapse:not(.show){display:none}.collapsing{position:relative;height:0;overflow:hidden;transition:height .35s ease}@media (prefers-reduced-motion:reduce){.collapsing{transition:none}}.dropdown,.dropleft,.dropright,.dropup{position:relative}.dropdown-toggle{white-space:nowrap}.dropdown-toggle::after{display:inline-block;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid;border-right:.3em solid transparent;border-bottom:0;border-left:.3em solid transparent}.dropdown-toggle:empty::after{margin-left:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:10rem;padding:.5rem 0;margin:.125rem 0 0;font-size:1rem;color:#212529;text-align:left;list-style:none;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.15);border-radius:.25rem}.dropdown-menu-left{right:auto;left:0}.dropdown-menu-right{right:0;left:auto}@media (min-width:576px){.dropdown-menu-sm-left{right:auto;left:0}.dropdown-menu-sm-right{right:0;left:auto}}@media (min-width:768px){.dropdown-menu-md-left{right:auto;left:0}.dropdown-menu-md-right{right:0;left:auto}}@media (min-width:992px){.dropdown-menu-lg-left{right:auto;left:0}.dropdown-menu-lg-right{right:0;left:auto}}@media (min-width:1200px){.dropdown-menu-xl-left{right:auto;left:0}.dropdown-menu-xl-right{right:0;left:auto}}.dropup .dropdown-menu{top:auto;bottom:100%;margin-top:0;margin-bottom:.125rem}.dropup .dropdown-toggle::after{display:inline-block;margin-left:.255em;vertical-align:.255em;content:"";border-top:0;border-right:.3em solid transparent;border-bottom:.3em solid;border-left:.3em solid transparent}.dropup .dropdown-toggle:empty::after{margin-left:0}.dropright .dropdown-menu{top:0;right:auto;left:100%;margin-top:0;margin-left:.125rem}.dropright .dropdown-toggle::after{display:inline-block;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:0;border-bottom:.3em solid transparent;border-left:.3em solid}.dropright .dropdown-toggle:empty::after{margin-left:0}.dropright .dropdown-toggle::after{vertical-align:0}.dropleft .dropdown-menu{top:0;right:100%;left:auto;margin-top:0;margin-right:.125rem}.dropleft .dropdown-toggle::after{display:inline-block;margin-left:.255em;vertical-align:.255em;content:""}.dropleft .dropdown-toggle::after{display:none}.dropleft .dropdown-toggle::before{display:inline-block;margin-right:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:.3em solid;border-bottom:.3em solid transparent}.dropleft .dropdown-toggle:empty::after{margin-left:0}.dropleft .dropdown-toggle::before{vertical-align:0}.dropdown-menu[x-placement^=bottom],.dropdown-menu[x-placement^=left],.dropdown-menu[x-placement^=right],.dropdown-menu[x-placement^=top]{right:auto;bottom:auto}.dropdown-divider{height:0;margin:.5rem 0;overflow:hidden;border-top:1px solid #e9ecef}.dropdown-item{display:block;width:100%;padding:.25rem 1.5rem;clear:both;font-weight:400;color:#212529;text-align:inherit;white-space:nowrap;background-color:transparent;border:0}.dropdown-item:focus,.dropdown-item:hover{color:#16181b;text-decoration:none;background-color:#f8f9fa}.dropdown-item.active,.dropdown-item:active{color:#fff;text-decoration:none;background-color:#007bff}.dropdown-item.disabled,.dropdown-item:disabled{color:#6c757d;pointer-events:none;background-color:transparent}.dropdown-menu.show{display:block}.dropdown-header{display:block;padding:.5rem 1.5rem;margin-bottom:0;font-size:.875rem;color:#6c757d;white-space:nowrap}.dropdown-item-text{display:block;padding:.25rem 1.5rem;color:#212529}.btn-group,.btn-group-vertical{position:relative;display:-ms-inline-flexbox;display:inline-flex;vertical-align:middle}.btn-group-vertical>.btn,.btn-group>.btn{position:relative;-ms-flex:1 1 auto;flex:1 1 auto}.btn-group-vertical>.btn:hover,.btn-group>.btn:hover{z-index:1}.btn-group-vertical>.btn.active,.btn-group-vertical>.btn:active,.btn-group-vertical>.btn:focus,.btn-group>.btn.active,.btn-group>.btn:active,.btn-group>.btn:focus{z-index:1}.btn-toolbar{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-pack:start;justify-content:flex-start}.btn-toolbar .input-group{width:auto}.btn-group>.btn-group:not(:first-child),.btn-group>.btn:not(:first-child){margin-left:-1px}.btn-group>.btn-group:not(:last-child)>.btn,.btn-group>.btn:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:not(:first-child)>.btn,.btn-group>.btn:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.dropdown-toggle-split{padding-right:.5625rem;padding-left:.5625rem}.dropdown-toggle-split::after,.dropright .dropdown-toggle-split::after,.dropup .dropdown-toggle-split::after{margin-left:0}.dropleft .dropdown-toggle-split::before{margin-right:0}.btn-group-sm>.btn+.dropdown-toggle-split,.btn-sm+.dropdown-toggle-split{padding-right:.375rem;padding-left:.375rem}.btn-group-lg>.btn+.dropdown-toggle-split,.btn-lg+.dropdown-toggle-split{padding-right:.75rem;padding-left:.75rem}.btn-group-vertical{-ms-flex-direction:column;flex-direction:column;-ms-flex-align:start;align-items:flex-start;-ms-flex-pack:center;justify-content:center}.btn-group-vertical>.btn,.btn-group-vertical>.btn-group{width:100%}.btn-group-vertical>.btn-group:not(:first-child),.btn-group-vertical>.btn:not(:first-child){margin-top:-1px}.btn-group-vertical>.btn-group:not(:last-child)>.btn,.btn-group-vertical>.btn:not(:last-child):not(.dropdown-toggle){border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:not(:first-child)>.btn,.btn-group-vertical>.btn:not(:first-child){border-top-left-radius:0;border-top-right-radius:0}.btn-group-toggle>.btn,.btn-group-toggle>.btn-group>.btn{margin-bottom:0}.btn-group-toggle>.btn input[type=checkbox],.btn-group-toggle>.btn input[type=radio],.btn-group-toggle>.btn-group>.btn input[type=checkbox],.btn-group-toggle>.btn-group>.btn input[type=radio]{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.input-group{position:relative;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-align:stretch;align-items:stretch;width:100%}.input-group>.custom-file,.input-group>.custom-select,.input-group>.form-control,.input-group>.form-control-plaintext{position:relative;-ms-flex:1 1 auto;flex:1 1 auto;width:1%;margin-bottom:0}.input-group>.custom-file+.custom-file,.input-group>.custom-file+.custom-select,.input-group>.custom-file+.form-control,.input-group>.custom-select+.custom-file,.input-group>.custom-select+.custom-select,.input-group>.custom-select+.form-control,.input-group>.form-control+.custom-file,.input-group>.form-control+.custom-select,.input-group>.form-control+.form-control,.input-group>.form-control-plaintext+.custom-file,.input-group>.form-control-plaintext+.custom-select,.input-group>.form-control-plaintext+.form-control{margin-left:-1px}.input-group>.custom-file .custom-file-input:focus~.custom-file-label,.input-group>.custom-select:focus,.input-group>.form-control:focus{z-index:3}.input-group>.custom-file .custom-file-input:focus{z-index:4}.input-group>.custom-select:not(:last-child),.input-group>.form-control:not(:last-child){border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-select:not(:first-child),.input-group>.form-control:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.input-group>.custom-file{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.input-group>.custom-file:not(:last-child) .custom-file-label,.input-group>.custom-file:not(:last-child) .custom-file-label::after{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-file:not(:first-child) .custom-file-label{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-append,.input-group-prepend{display:-ms-flexbox;display:flex}.input-group-append .btn,.input-group-prepend .btn{position:relative;z-index:2}.input-group-append .btn:focus,.input-group-prepend .btn:focus{z-index:3}.input-group-append .btn+.btn,.input-group-append .btn+.input-group-text,.input-group-append .input-group-text+.btn,.input-group-append .input-group-text+.input-group-text,.input-group-prepend .btn+.btn,.input-group-prepend .btn+.input-group-text,.input-group-prepend .input-group-text+.btn,.input-group-prepend .input-group-text+.input-group-text{margin-left:-1px}.input-group-prepend{margin-right:-1px}.input-group-append{margin-left:-1px}.input-group-text{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:.375rem .75rem;margin-bottom:0;font-size:1rem;font-weight:400;line-height:1.5;color:#495057;text-align:center;white-space:nowrap;background-color:#e9ecef;border:1px solid #ced4da;border-radius:.25rem}.input-group-text input[type=checkbox],.input-group-text input[type=radio]{margin-top:0}.input-group-lg>.custom-select,.input-group-lg>.form-control:not(textarea){height:calc(1.5em + 1rem + 2px)}.input-group-lg>.custom-select,.input-group-lg>.form-control,.input-group-lg>.input-group-append>.btn,.input-group-lg>.input-group-append>.input-group-text,.input-group-lg>.input-group-prepend>.btn,.input-group-lg>.input-group-prepend>.input-group-text{padding:.5rem 1rem;font-size:1.25rem;line-height:1.5;border-radius:.3rem}.input-group-sm>.custom-select,.input-group-sm>.form-control:not(textarea){height:calc(1.5em + .5rem + 2px)}.input-group-sm>.custom-select,.input-group-sm>.form-control,.input-group-sm>.input-group-append>.btn,.input-group-sm>.input-group-append>.input-group-text,.input-group-sm>.input-group-prepend>.btn,.input-group-sm>.input-group-prepend>.input-group-text{padding:.25rem .5rem;font-size:.875rem;line-height:1.5;border-radius:.2rem}.input-group-lg>.custom-select,.input-group-sm>.custom-select{padding-right:1.75rem}.input-group>.input-group-append:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group>.input-group-append:last-child>.input-group-text:not(:last-child),.input-group>.input-group-append:not(:last-child)>.btn,.input-group>.input-group-append:not(:last-child)>.input-group-text,.input-group>.input-group-prepend>.btn,.input-group>.input-group-prepend>.input-group-text{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.input-group-append>.btn,.input-group>.input-group-append>.input-group-text,.input-group>.input-group-prepend:first-child>.btn:not(:first-child),.input-group>.input-group-prepend:first-child>.input-group-text:not(:first-child),.input-group>.input-group-prepend:not(:first-child)>.btn,.input-group>.input-group-prepend:not(:first-child)>.input-group-text{border-top-left-radius:0;border-bottom-left-radius:0}.custom-control{position:relative;display:block;min-height:1.5rem;padding-left:1.5rem}.custom-control-inline{display:-ms-inline-flexbox;display:inline-flex;margin-right:1rem}.custom-control-input{position:absolute;z-index:-1;opacity:0}.custom-control-input:checked~.custom-control-label::before{color:#fff;border-color:#007bff;background-color:#007bff}.custom-control-input:focus~.custom-control-label::before{box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.custom-control-input:focus:not(:checked)~.custom-control-label::before{border-color:#80bdff}.custom-control-input:not(:disabled):active~.custom-control-label::before{color:#fff;background-color:#b3d7ff;border-color:#b3d7ff}.custom-control-input:disabled~.custom-control-label{color:#6c757d}.custom-control-input:disabled~.custom-control-label::before{background-color:#e9ecef}.custom-control-label{position:relative;margin-bottom:0;vertical-align:top}.custom-control-label::before{position:absolute;top:.25rem;left:-1.5rem;display:block;width:1rem;height:1rem;pointer-events:none;content:"";background-color:#fff;border:#adb5bd solid 1px}.custom-control-label::after{position:absolute;top:.25rem;left:-1.5rem;display:block;width:1rem;height:1rem;content:"";background:no-repeat 50%/50% 50%}.custom-checkbox .custom-control-label::before{border-radius:.25rem}.custom-checkbox .custom-control-input:checked~.custom-control-label::after{background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z'/%3e%3c/svg%3e")}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label::before{border-color:#007bff;background-color:#007bff}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label::after{background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 4'%3e%3cpath stroke='%23fff' d='M0 2h4'/%3e%3c/svg%3e")}.custom-checkbox .custom-control-input:disabled:checked~.custom-control-label::before{background-color:rgba(0,123,255,.5)}.custom-checkbox .custom-control-input:disabled:indeterminate~.custom-control-label::before{background-color:rgba(0,123,255,.5)}.custom-radio .custom-control-label::before{border-radius:50%}.custom-radio .custom-control-input:checked~.custom-control-label::after{background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3e%3ccircle r='3' fill='%23fff'/%3e%3c/svg%3e")}.custom-radio .custom-control-input:disabled:checked~.custom-control-label::before{background-color:rgba(0,123,255,.5)}.custom-switch{padding-left:2.25rem}.custom-switch .custom-control-label::before{left:-2.25rem;width:1.75rem;pointer-events:all;border-radius:.5rem}.custom-switch .custom-control-label::after{top:calc(.25rem + 2px);left:calc(-2.25rem + 2px);width:calc(1rem - 4px);height:calc(1rem - 4px);background-color:#adb5bd;border-radius:.5rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-transform .15s ease-in-out;transition:transform .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;transition:transform .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-transform .15s ease-in-out}@media (prefers-reduced-motion:reduce){.custom-switch .custom-control-label::after{transition:none}}.custom-switch .custom-control-input:checked~.custom-control-label::after{background-color:#fff;-webkit-transform:translateX(.75rem);transform:translateX(.75rem)}.custom-switch .custom-control-input:disabled:checked~.custom-control-label::before{background-color:rgba(0,123,255,.5)}.custom-select{display:inline-block;width:100%;height:calc(1.5em + .75rem + 2px);padding:.375rem 1.75rem .375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#495057;vertical-align:middle;background:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right .75rem center/8px 10px;background-color:#fff;border:1px solid #ced4da;border-radius:.25rem;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-select:focus{border-color:#80bdff;outline:0;box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.custom-select:focus::-ms-value{color:#495057;background-color:#fff}.custom-select[multiple],.custom-select[size]:not([size="1"]){height:auto;padding-right:.75rem;background-image:none}.custom-select:disabled{color:#6c757d;background-color:#e9ecef}.custom-select::-ms-expand{display:none}.custom-select-sm{height:calc(1.5em + .5rem + 2px);padding-top:.25rem;padding-bottom:.25rem;padding-left:.5rem;font-size:.875rem}.custom-select-lg{height:calc(1.5em + 1rem + 2px);padding-top:.5rem;padding-bottom:.5rem;padding-left:1rem;font-size:1.25rem}.custom-file{position:relative;display:inline-block;width:100%;height:calc(1.5em + .75rem + 2px);margin-bottom:0}.custom-file-input{position:relative;z-index:2;width:100%;height:calc(1.5em + .75rem + 2px);margin:0;opacity:0}.custom-file-input:focus~.custom-file-label{border-color:#80bdff;box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.custom-file-input:disabled~.custom-file-label{background-color:#e9ecef}.custom-file-input:lang(en)~.custom-file-label::after{content:"Browse"}.custom-file-input~.custom-file-label[data-browse]::after{content:attr(data-browse)}.custom-file-label{position:absolute;top:0;right:0;left:0;z-index:1;height:calc(1.5em + .75rem + 2px);padding:.375rem .75rem;font-weight:400;line-height:1.5;color:#495057;background-color:#fff;border:1px solid #ced4da;border-radius:.25rem}.custom-file-label::after{position:absolute;top:0;right:0;bottom:0;z-index:3;display:block;height:calc(1.5em + .75rem);padding:.375rem .75rem;line-height:1.5;color:#495057;content:"Browse";background-color:#e9ecef;border-left:inherit;border-radius:0 .25rem .25rem 0}.custom-range{width:100%;height:calc(1rem + .4rem);padding:0;background-color:transparent;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-range:focus{outline:0}.custom-range:focus::-webkit-slider-thumb{box-shadow:0 0 0 1px #fff,0 0 0 .2rem rgba(0,123,255,.25)}.custom-range:focus::-moz-range-thumb{box-shadow:0 0 0 1px #fff,0 0 0 .2rem rgba(0,123,255,.25)}.custom-range:focus::-ms-thumb{box-shadow:0 0 0 1px #fff,0 0 0 .2rem rgba(0,123,255,.25)}.custom-range::-moz-focus-outer{border:0}.custom-range::-webkit-slider-thumb{width:1rem;height:1rem;margin-top:-.25rem;background-color:#007bff;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;-webkit-appearance:none;appearance:none}@media (prefers-reduced-motion:reduce){.custom-range::-webkit-slider-thumb{transition:none}}.custom-range::-webkit-slider-thumb:active{background-color:#b3d7ff}.custom-range::-webkit-slider-runnable-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#dee2e6;border-color:transparent;border-radius:1rem}.custom-range::-moz-range-thumb{width:1rem;height:1rem;background-color:#007bff;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;-moz-appearance:none;appearance:none}@media (prefers-reduced-motion:reduce){.custom-range::-moz-range-thumb{transition:none}}.custom-range::-moz-range-thumb:active{background-color:#b3d7ff}.custom-range::-moz-range-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#dee2e6;border-color:transparent;border-radius:1rem}.custom-range::-ms-thumb{width:1rem;height:1rem;margin-top:0;margin-right:.2rem;margin-left:.2rem;background-color:#007bff;border:0;border-radius:1rem;transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;appearance:none}@media (prefers-reduced-motion:reduce){.custom-range::-ms-thumb{transition:none}}.custom-range::-ms-thumb:active{background-color:#b3d7ff}.custom-range::-ms-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:transparent;border-color:transparent;border-width:.5rem}.custom-range::-ms-fill-lower{background-color:#dee2e6;border-radius:1rem}.custom-range::-ms-fill-upper{margin-right:15px;background-color:#dee2e6;border-radius:1rem}.custom-range:disabled::-webkit-slider-thumb{background-color:#adb5bd}.custom-range:disabled::-webkit-slider-runnable-track{cursor:default}.custom-range:disabled::-moz-range-thumb{background-color:#adb5bd}.custom-range:disabled::-moz-range-track{cursor:default}.custom-range:disabled::-ms-thumb{background-color:#adb5bd}.custom-control-label::before,.custom-file-label,.custom-select{transition:background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media (prefers-reduced-motion:reduce){.custom-control-label::before,.custom-file-label,.custom-select{transition:none}}.nav{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;padding-left:0;margin-bottom:0;list-style:none}.nav-link{display:block;padding:.5rem 1rem}.nav-link:focus,.nav-link:hover{text-decoration:none}.nav-link.disabled{color:#6c757d;pointer-events:none;cursor:default}.nav-tabs{border-bottom:1px solid #dee2e6}.nav-tabs .nav-item{margin-bottom:-1px}.nav-tabs .nav-link{border:1px solid transparent;border-top-left-radius:.25rem;border-top-right-radius:.25rem}.nav-tabs .nav-link:focus,.nav-tabs .nav-link:hover{border-color:#e9ecef #e9ecef #dee2e6}.nav-tabs .nav-link.disabled{color:#6c757d;background-color:transparent;border-color:transparent}.nav-tabs .nav-item.show .nav-link,.nav-tabs .nav-link.active{color:#495057;background-color:#fff;border-color:#dee2e6 #dee2e6 #fff}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-left-radius:0;border-top-right-radius:0}.nav-pills .nav-link{border-radius:.25rem}.nav-pills .nav-link.active,.nav-pills .show>.nav-link{color:#fff;background-color:#007bff}.nav-fill .nav-item{-ms-flex:1 1 auto;flex:1 1 auto;text-align:center}.nav-justified .nav-item{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;text-align:center}.tab-content>.tab-pane{display:none}.tab-content>.active{display:block}.navbar{position:relative;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-align:center;align-items:center;-ms-flex-pack:justify;justify-content:space-between;padding:.5rem 1rem}.navbar>.container,.navbar>.container-fluid{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-align:center;align-items:center;-ms-flex-pack:justify;justify-content:space-between}.navbar-brand{display:inline-block;padding-top:.3125rem;padding-bottom:.3125rem;margin-right:1rem;font-size:1.25rem;line-height:inherit;white-space:nowrap}.navbar-brand:focus,.navbar-brand:hover{text-decoration:none}.navbar-nav{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .nav-link{padding-right:0;padding-left:0}.navbar-nav .dropdown-menu{position:static;float:none}.navbar-text{display:inline-block;padding-top:.5rem;padding-bottom:.5rem}.navbar-collapse{-ms-flex-preferred-size:100%;flex-basis:100%;-ms-flex-positive:1;flex-grow:1;-ms-flex-align:center;align-items:center}.navbar-toggler{padding:.25rem .75rem;font-size:1.25rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:.25rem}.navbar-toggler:focus,.navbar-toggler:hover{text-decoration:none}.navbar-toggler-icon{display:inline-block;width:1.5em;height:1.5em;vertical-align:middle;content:"";background:no-repeat center center;background-size:100% 100%}@media (max-width:575.98px){.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:576px){.navbar-expand-sm{-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:start;justify-content:flex-start}.navbar-expand-sm .navbar-nav{-ms-flex-direction:row;flex-direction:row}.navbar-expand-sm .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-sm .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{-ms-flex-wrap:nowrap;flex-wrap:nowrap}.navbar-expand-sm .navbar-collapse{display:-ms-flexbox!important;display:flex!important;-ms-flex-preferred-size:auto;flex-basis:auto}.navbar-expand-sm .navbar-toggler{display:none}}@media (max-width:767.98px){.navbar-expand-md>.container,.navbar-expand-md>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:768px){.navbar-expand-md{-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:start;justify-content:flex-start}.navbar-expand-md .navbar-nav{-ms-flex-direction:row;flex-direction:row}.navbar-expand-md .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-md .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-md>.container,.navbar-expand-md>.container-fluid{-ms-flex-wrap:nowrap;flex-wrap:nowrap}.navbar-expand-md .navbar-collapse{display:-ms-flexbox!important;display:flex!important;-ms-flex-preferred-size:auto;flex-basis:auto}.navbar-expand-md .navbar-toggler{display:none}}@media (max-width:991.98px){.navbar-expand-lg>.container,.navbar-expand-lg>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:992px){.navbar-expand-lg{-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:start;justify-content:flex-start}.navbar-expand-lg .navbar-nav{-ms-flex-direction:row;flex-direction:row}.navbar-expand-lg .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-lg .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-lg>.container,.navbar-expand-lg>.container-fluid{-ms-flex-wrap:nowrap;flex-wrap:nowrap}.navbar-expand-lg .navbar-collapse{display:-ms-flexbox!important;display:flex!important;-ms-flex-preferred-size:auto;flex-basis:auto}.navbar-expand-lg .navbar-toggler{display:none}}@media (max-width:1199.98px){.navbar-expand-xl>.container,.navbar-expand-xl>.container-fluid{padding-right:0;padding-left:0}}@media (min-width:1200px){.navbar-expand-xl{-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:start;justify-content:flex-start}.navbar-expand-xl .navbar-nav{-ms-flex-direction:row;flex-direction:row}.navbar-expand-xl .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-xl .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-xl>.container,.navbar-expand-xl>.container-fluid{-ms-flex-wrap:nowrap;flex-wrap:nowrap}.navbar-expand-xl .navbar-collapse{display:-ms-flexbox!important;display:flex!important;-ms-flex-preferred-size:auto;flex-basis:auto}.navbar-expand-xl .navbar-toggler{display:none}}.navbar-expand{-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:start;justify-content:flex-start}.navbar-expand>.container,.navbar-expand>.container-fluid{padding-right:0;padding-left:0}.navbar-expand .navbar-nav{-ms-flex-direction:row;flex-direction:row}.navbar-expand .navbar-nav .dropdown-menu{position:absolute}.navbar-expand .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand>.container,.navbar-expand>.container-fluid{-ms-flex-wrap:nowrap;flex-wrap:nowrap}.navbar-expand .navbar-collapse{display:-ms-flexbox!important;display:flex!important;-ms-flex-preferred-size:auto;flex-basis:auto}.navbar-expand .navbar-toggler{display:none}.navbar-light .navbar-brand{color:rgba(0,0,0,.9)}.navbar-light .navbar-brand:focus,.navbar-light .navbar-brand:hover{color:rgba(0,0,0,.9)}.navbar-light .navbar-nav .nav-link{color:rgba(0,0,0,.5)}.navbar-light .navbar-nav .nav-link:focus,.navbar-light .navbar-nav .nav-link:hover{color:rgba(0,0,0,.7)}.navbar-light .navbar-nav .nav-link.disabled{color:rgba(0,0,0,.3)}.navbar-light .navbar-nav .active>.nav-link,.navbar-light .navbar-nav .nav-link.active,.navbar-light .navbar-nav .nav-link.show,.navbar-light .navbar-nav .show>.nav-link{color:rgba(0,0,0,.9)}.navbar-light .navbar-toggler{color:rgba(0,0,0,.5);border-color:rgba(0,0,0,.1)}.navbar-light .navbar-toggler-icon{background-image:url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(0, 0, 0, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e")}.navbar-light .navbar-text{color:rgba(0,0,0,.5)}.navbar-light .navbar-text a{color:rgba(0,0,0,.9)}.navbar-light .navbar-text a:focus,.navbar-light .navbar-text a:hover{color:rgba(0,0,0,.9)}.navbar-dark .navbar-brand{color:#fff}.navbar-dark .navbar-brand:focus,.navbar-dark .navbar-brand:hover{color:#fff}.navbar-dark .navbar-nav .nav-link{color:rgba(255,255,255,.5)}.navbar-dark .navbar-nav .nav-link:focus,.navbar-dark .navbar-nav .nav-link:hover{color:rgba(255,255,255,.75)}.navbar-dark .navbar-nav .nav-link.disabled{color:rgba(255,255,255,.25)}.navbar-dark .navbar-nav .active>.nav-link,.navbar-dark .navbar-nav .nav-link.active,.navbar-dark .navbar-nav .nav-link.show,.navbar-dark .navbar-nav .show>.nav-link{color:#fff}.navbar-dark .navbar-toggler{color:rgba(255,255,255,.5);border-color:rgba(255,255,255,.1)}.navbar-dark .navbar-toggler-icon{background-image:url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(255, 255, 255, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e")}.navbar-dark .navbar-text{color:rgba(255,255,255,.5)}.navbar-dark .navbar-text a{color:#fff}.navbar-dark .navbar-text a:focus,.navbar-dark .navbar-text a:hover{color:#fff}.card{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#fff;background-clip:border-box;border:1px solid rgba(0,0,0,.125);border-radius:.25rem}.card>hr{margin-right:0;margin-left:0}.card>.list-group:first-child .list-group-item:first-child{border-top-left-radius:.25rem;border-top-right-radius:.25rem}.card>.list-group:last-child .list-group-item:last-child{border-bottom-right-radius:.25rem;border-bottom-left-radius:.25rem}.card-body{-ms-flex:1 1 auto;flex:1 1 auto;padding:1.25rem}.card-title{margin-bottom:.75rem}.card-subtitle{margin-top:-.375rem;margin-bottom:0}.card-text:last-child{margin-bottom:0}.card-link:hover{text-decoration:none}.card-link+.card-link{margin-left:1.25rem}.card-header{padding:.75rem 1.25rem;margin-bottom:0;background-color:rgba(0,0,0,.03);border-bottom:1px solid rgba(0,0,0,.125)}.card-header:first-child{border-radius:calc(.25rem - 1px) calc(.25rem - 1px) 0 0}.card-header+.list-group .list-group-item:first-child{border-top:0}.card-footer{padding:.75rem 1.25rem;background-color:rgba(0,0,0,.03);border-top:1px solid rgba(0,0,0,.125)}.card-footer:last-child{border-radius:0 0 calc(.25rem - 1px) calc(.25rem - 1px)}.card-header-tabs{margin-right:-.625rem;margin-bottom:-.75rem;margin-left:-.625rem;border-bottom:0}.card-header-pills{margin-right:-.625rem;margin-left:-.625rem}.card-img-overlay{position:absolute;top:0;right:0;bottom:0;left:0;padding:1.25rem}.card-img{width:100%;border-radius:calc(.25rem - 1px)}.card-img-top{width:100%;border-top-left-radius:calc(.25rem - 1px);border-top-right-radius:calc(.25rem - 1px)}.card-img-bottom{width:100%;border-bottom-right-radius:calc(.25rem - 1px);border-bottom-left-radius:calc(.25rem - 1px)}.card-deck{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.card-deck .card{margin-bottom:15px}@media (min-width:576px){.card-deck{-ms-flex-flow:row wrap;flex-flow:row wrap;margin-right:-15px;margin-left:-15px}.card-deck .card{display:-ms-flexbox;display:flex;-ms-flex:1 0 0%;flex:1 0 0%;-ms-flex-direction:column;flex-direction:column;margin-right:15px;margin-bottom:0;margin-left:15px}}.card-group{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.card-group>.card{margin-bottom:15px}@media (min-width:576px){.card-group{-ms-flex-flow:row wrap;flex-flow:row wrap}.card-group>.card{-ms-flex:1 0 0%;flex:1 0 0%;margin-bottom:0}.card-group>.card+.card{margin-left:0;border-left:0}.card-group>.card:not(:last-child){border-top-right-radius:0;border-bottom-right-radius:0}.card-group>.card:not(:last-child) .card-header,.card-group>.card:not(:last-child) .card-img-top{border-top-right-radius:0}.card-group>.card:not(:last-child) .card-footer,.card-group>.card:not(:last-child) .card-img-bottom{border-bottom-right-radius:0}.card-group>.card:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.card-group>.card:not(:first-child) .card-header,.card-group>.card:not(:first-child) .card-img-top{border-top-left-radius:0}.card-group>.card:not(:first-child) .card-footer,.card-group>.card:not(:first-child) .card-img-bottom{border-bottom-left-radius:0}}.card-columns .card{margin-bottom:.75rem}@media (min-width:576px){.card-columns{-webkit-column-count:3;-moz-column-count:3;column-count:3;-webkit-column-gap:1.25rem;-moz-column-gap:1.25rem;column-gap:1.25rem;orphans:1;widows:1}.card-columns .card{display:inline-block;width:100%}}.accordion>.card{overflow:hidden}.accordion>.card:not(:first-of-type) .card-header:first-child{border-radius:0}.accordion>.card:not(:first-of-type):not(:last-of-type){border-bottom:0;border-radius:0}.accordion>.card:first-of-type{border-bottom:0;border-bottom-right-radius:0;border-bottom-left-radius:0}.accordion>.card:last-of-type{border-top-left-radius:0;border-top-right-radius:0}.accordion>.card .card-header{margin-bottom:-1px}.breadcrumb{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;padding:.75rem 1rem;margin-bottom:1rem;list-style:none;background-color:#e9ecef;border-radius:.25rem}.breadcrumb-item+.breadcrumb-item{padding-left:.5rem}.breadcrumb-item+.breadcrumb-item::before{display:inline-block;padding-right:.5rem;color:#6c757d;content:"/"}.breadcrumb-item+.breadcrumb-item:hover::before{text-decoration:underline}.breadcrumb-item+.breadcrumb-item:hover::before{text-decoration:none}.breadcrumb-item.active{color:#6c757d}.pagination{display:-ms-flexbox;display:flex;padding-left:0;list-style:none;border-radius:.25rem}.page-link{position:relative;display:block;padding:.5rem .75rem;margin-left:-1px;line-height:1.25;color:#007bff;background-color:#fff;border:1px solid #dee2e6}.page-link:hover{z-index:2;color:#0056b3;text-decoration:none;background-color:#e9ecef;border-color:#dee2e6}.page-link:focus{z-index:2;outline:0;box-shadow:0 0 0 .2rem rgba(0,123,255,.25)}.page-item:first-child .page-link{margin-left:0;border-top-left-radius:.25rem;border-bottom-left-radius:.25rem}.page-item:last-child .page-link{border-top-right-radius:.25rem;border-bottom-right-radius:.25rem}.page-item.active .page-link{z-index:1;color:#fff;background-color:#007bff;border-color:#007bff}.page-item.disabled .page-link{color:#6c757d;pointer-events:none;cursor:auto;background-color:#fff;border-color:#dee2e6}.pagination-lg .page-link{padding:.75rem 1.5rem;font-size:1.25rem;line-height:1.5}.pagination-lg .page-item:first-child .page-link{border-top-left-radius:.3rem;border-bottom-left-radius:.3rem}.pagination-lg .page-item:last-child .page-link{border-top-right-radius:.3rem;border-bottom-right-radius:.3rem}.pagination-sm .page-link{padding:.25rem .5rem;font-size:.875rem;line-height:1.5}.pagination-sm .page-item:first-child .page-link{border-top-left-radius:.2rem;border-bottom-left-radius:.2rem}.pagination-sm .page-item:last-child .page-link{border-top-right-radius:.2rem;border-bottom-right-radius:.2rem}.badge{display:inline-block;padding:.25em .4em;font-size:75%;font-weight:700;line-height:1;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25rem;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media (prefers-reduced-motion:reduce){.badge{transition:none}}a.badge:focus,a.badge:hover{text-decoration:none}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.badge-pill{padding-right:.6em;padding-left:.6em;border-radius:10rem}.badge-primary{color:#fff;background-color:#007bff}a.badge-primary:focus,a.badge-primary:hover{color:#fff;background-color:#0062cc}a.badge-primary.focus,a.badge-primary:focus{outline:0;box-shadow:0 0 0 .2rem rgba(0,123,255,.5)}.badge-secondary{color:#fff;background-color:#6c757d}a.badge-secondary:focus,a.badge-secondary:hover{color:#fff;background-color:#545b62}a.badge-secondary.focus,a.badge-secondary:focus{outline:0;box-shadow:0 0 0 .2rem rgba(108,117,125,.5)}.badge-success{color:#fff;background-color:#28a745}a.badge-success:focus,a.badge-success:hover{color:#fff;background-color:#1e7e34}a.badge-success.focus,a.badge-success:focus{outline:0;box-shadow:0 0 0 .2rem rgba(40,167,69,.5)}.badge-info{color:#fff;background-color:#17a2b8}a.badge-info:focus,a.badge-info:hover{color:#fff;background-color:#117a8b}a.badge-info.focus,a.badge-info:focus{outline:0;box-shadow:0 0 0 .2rem rgba(23,162,184,.5)}.badge-warning{color:#212529;background-color:#ffc107}a.badge-warning:focus,a.badge-warning:hover{color:#212529;background-color:#d39e00}a.badge-warning.focus,a.badge-warning:focus{outline:0;box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.badge-danger{color:#fff;background-color:#dc3545}a.badge-danger:focus,a.badge-danger:hover{color:#fff;background-color:#bd2130}a.badge-danger.focus,a.badge-danger:focus{outline:0;box-shadow:0 0 0 .2rem rgba(220,53,69,.5)}.badge-light{color:#212529;background-color:#f8f9fa}a.badge-light:focus,a.badge-light:hover{color:#212529;background-color:#dae0e5}a.badge-light.focus,a.badge-light:focus{outline:0;box-shadow:0 0 0 .2rem rgba(248,249,250,.5)}.badge-dark{color:#fff;background-color:#343a40}a.badge-dark:focus,a.badge-dark:hover{color:#fff;background-color:#1d2124}a.badge-dark.focus,a.badge-dark:focus{outline:0;box-shadow:0 0 0 .2rem rgba(52,58,64,.5)}.jumbotron{padding:2rem 1rem;margin-bottom:2rem;background-color:#e9ecef;border-radius:.3rem}@media (min-width:576px){.jumbotron{padding:4rem 2rem}}.jumbotron-fluid{padding-right:0;padding-left:0;border-radius:0}.alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}.alert-heading{color:inherit}.alert-link{font-weight:700}.alert-dismissible{padding-right:4rem}.alert-dismissible .close{position:absolute;top:0;right:0;padding:.75rem 1.25rem;color:inherit}.alert-primary{color:#004085;background-color:#cce5ff;border-color:#b8daff}.alert-primary hr{border-top-color:#9fcdff}.alert-primary .alert-link{color:#002752}.alert-secondary{color:#383d41;background-color:#e2e3e5;border-color:#d6d8db}.alert-secondary hr{border-top-color:#c8cbcf}.alert-secondary .alert-link{color:#202326}.alert-success{color:#155724;background-color:#d4edda;border-color:#c3e6cb}.alert-success hr{border-top-color:#b1dfbb}.alert-success .alert-link{color:#0b2e13}.alert-info{color:#0c5460;background-color:#d1ecf1;border-color:#bee5eb}.alert-info hr{border-top-color:#abdde5}.alert-info .alert-link{color:#062c33}.alert-warning{color:#856404;background-color:#fff3cd;border-color:#ffeeba}.alert-warning hr{border-top-color:#ffe8a1}.alert-warning .alert-link{color:#533f03}.alert-danger{color:#721c24;background-color:#f8d7da;border-color:#f5c6cb}.alert-danger hr{border-top-color:#f1b0b7}.alert-danger .alert-link{color:#491217}.alert-light{color:#818182;background-color:#fefefe;border-color:#fdfdfe}.alert-light hr{border-top-color:#ececf6}.alert-light .alert-link{color:#686868}.alert-dark{color:#1b1e21;background-color:#d6d8d9;border-color:#c6c8ca}.alert-dark hr{border-top-color:#b9bbbe}.alert-dark .alert-link{color:#040505}@-webkit-keyframes progress-bar-stripes{from{background-position:1rem 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:1rem 0}to{background-position:0 0}}.progress{display:-ms-flexbox;display:flex;height:1rem;overflow:hidden;font-size:.75rem;background-color:#e9ecef;border-radius:.25rem}.progress-bar{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;-ms-flex-pack:center;justify-content:center;color:#fff;text-align:center;white-space:nowrap;background-color:#007bff;transition:width .6s ease}@media (prefers-reduced-motion:reduce){.progress-bar{transition:none}}.progress-bar-striped{background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-size:1rem 1rem}.progress-bar-animated{-webkit-animation:progress-bar-stripes 1s linear infinite;animation:progress-bar-stripes 1s linear infinite}@media (prefers-reduced-motion:reduce){.progress-bar-animated{-webkit-animation:none;animation:none}}.media{display:-ms-flexbox;display:flex;-ms-flex-align:start;align-items:flex-start}.media-body{-ms-flex:1;flex:1}.list-group{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;padding-left:0;margin-bottom:0}.list-group-item-action{width:100%;color:#495057;text-align:inherit}.list-group-item-action:focus,.list-group-item-action:hover{z-index:1;color:#495057;text-decoration:none;background-color:#f8f9fa}.list-group-item-action:active{color:#212529;background-color:#e9ecef}.list-group-item{position:relative;display:block;padding:.75rem 1.25rem;margin-bottom:-1px;background-color:#fff;border:1px solid rgba(0,0,0,.125)}.list-group-item:first-child{border-top-left-radius:.25rem;border-top-right-radius:.25rem}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:.25rem;border-bottom-left-radius:.25rem}.list-group-item.disabled,.list-group-item:disabled{color:#6c757d;pointer-events:none;background-color:#fff}.list-group-item.active{z-index:2;color:#fff;background-color:#007bff;border-color:#007bff}.list-group-horizontal{-ms-flex-direction:row;flex-direction:row}.list-group-horizontal .list-group-item{margin-right:-1px;margin-bottom:0}.list-group-horizontal .list-group-item:first-child{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem;border-top-right-radius:0}.list-group-horizontal .list-group-item:last-child{margin-right:0;border-top-right-radius:.25rem;border-bottom-right-radius:.25rem;border-bottom-left-radius:0}@media (min-width:576px){.list-group-horizontal-sm{-ms-flex-direction:row;flex-direction:row}.list-group-horizontal-sm .list-group-item{margin-right:-1px;margin-bottom:0}.list-group-horizontal-sm .list-group-item:first-child{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem;border-top-right-radius:0}.list-group-horizontal-sm .list-group-item:last-child{margin-right:0;border-top-right-radius:.25rem;border-bottom-right-radius:.25rem;border-bottom-left-radius:0}}@media (min-width:768px){.list-group-horizontal-md{-ms-flex-direction:row;flex-direction:row}.list-group-horizontal-md .list-group-item{margin-right:-1px;margin-bottom:0}.list-group-horizontal-md .list-group-item:first-child{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem;border-top-right-radius:0}.list-group-horizontal-md .list-group-item:last-child{margin-right:0;border-top-right-radius:.25rem;border-bottom-right-radius:.25rem;border-bottom-left-radius:0}}@media (min-width:992px){.list-group-horizontal-lg{-ms-flex-direction:row;flex-direction:row}.list-group-horizontal-lg .list-group-item{margin-right:-1px;margin-bottom:0}.list-group-horizontal-lg .list-group-item:first-child{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem;border-top-right-radius:0}.list-group-horizontal-lg .list-group-item:last-child{margin-right:0;border-top-right-radius:.25rem;border-bottom-right-radius:.25rem;border-bottom-left-radius:0}}@media (min-width:1200px){.list-group-horizontal-xl{-ms-flex-direction:row;flex-direction:row}.list-group-horizontal-xl .list-group-item{margin-right:-1px;margin-bottom:0}.list-group-horizontal-xl .list-group-item:first-child{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem;border-top-right-radius:0}.list-group-horizontal-xl .list-group-item:last-child{margin-right:0;border-top-right-radius:.25rem;border-bottom-right-radius:.25rem;border-bottom-left-radius:0}}.list-group-flush .list-group-item{border-right:0;border-left:0;border-radius:0}.list-group-flush .list-group-item:last-child{margin-bottom:-1px}.list-group-flush:first-child .list-group-item:first-child{border-top:0}.list-group-flush:last-child .list-group-item:last-child{margin-bottom:0;border-bottom:0}.list-group-item-primary{color:#004085;background-color:#b8daff}.list-group-item-primary.list-group-item-action:focus,.list-group-item-primary.list-group-item-action:hover{color:#004085;background-color:#9fcdff}.list-group-item-primary.list-group-item-action.active{color:#fff;background-color:#004085;border-color:#004085}.list-group-item-secondary{color:#383d41;background-color:#d6d8db}.list-group-item-secondary.list-group-item-action:focus,.list-group-item-secondary.list-group-item-action:hover{color:#383d41;background-color:#c8cbcf}.list-group-item-secondary.list-group-item-action.active{color:#fff;background-color:#383d41;border-color:#383d41}.list-group-item-success{color:#155724;background-color:#c3e6cb}.list-group-item-success.list-group-item-action:focus,.list-group-item-success.list-group-item-action:hover{color:#155724;background-color:#b1dfbb}.list-group-item-success.list-group-item-action.active{color:#fff;background-color:#155724;border-color:#155724}.list-group-item-info{color:#0c5460;background-color:#bee5eb}.list-group-item-info.list-group-item-action:focus,.list-group-item-info.list-group-item-action:hover{color:#0c5460;background-color:#abdde5}.list-group-item-info.list-group-item-action.active{color:#fff;background-color:#0c5460;border-color:#0c5460}.list-group-item-warning{color:#856404;background-color:#ffeeba}.list-group-item-warning.list-group-item-action:focus,.list-group-item-warning.list-group-item-action:hover{color:#856404;background-color:#ffe8a1}.list-group-item-warning.list-group-item-action.active{color:#fff;background-color:#856404;border-color:#856404}.list-group-item-danger{color:#721c24;background-color:#f5c6cb}.list-group-item-danger.list-group-item-action:focus,.list-group-item-danger.list-group-item-action:hover{color:#721c24;background-color:#f1b0b7}.list-group-item-danger.list-group-item-action.active{color:#fff;background-color:#721c24;border-color:#721c24}.list-group-item-light{color:#818182;background-color:#fdfdfe}.list-group-item-light.list-group-item-action:focus,.list-group-item-light.list-group-item-action:hover{color:#818182;background-color:#ececf6}.list-group-item-light.list-group-item-action.active{color:#fff;background-color:#818182;border-color:#818182}.list-group-item-dark{color:#1b1e21;background-color:#c6c8ca}.list-group-item-dark.list-group-item-action:focus,.list-group-item-dark.list-group-item-action:hover{color:#1b1e21;background-color:#b9bbbe}.list-group-item-dark.list-group-item-action.active{color:#fff;background-color:#1b1e21;border-color:#1b1e21}.close{float:right;font-size:1.5rem;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;opacity:.5}.close:hover{color:#000;text-decoration:none}.close:not(:disabled):not(.disabled):focus,.close:not(:disabled):not(.disabled):hover{opacity:.75}button.close{padding:0;background-color:transparent;border:0;-webkit-appearance:none;-moz-appearance:none;appearance:none}a.close.disabled{pointer-events:none}.toast{max-width:350px;overflow:hidden;font-size:.875rem;background-color:rgba(255,255,255,.85);background-clip:padding-box;border:1px solid rgba(0,0,0,.1);box-shadow:0 .25rem .75rem rgba(0,0,0,.1);-webkit-backdrop-filter:blur(10px);backdrop-filter:blur(10px);opacity:0;border-radius:.25rem}.toast:not(:last-child){margin-bottom:.75rem}.toast.showing{opacity:1}.toast.show{display:block;opacity:1}.toast.hide{display:none}.toast-header{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:.25rem .75rem;color:#6c757d;background-color:rgba(255,255,255,.85);background-clip:padding-box;border-bottom:1px solid rgba(0,0,0,.05)}.toast-body{padding:.75rem}.modal-open{overflow:hidden}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal{position:fixed;top:0;left:0;z-index:1050;display:none;width:100%;height:100%;overflow:hidden;outline:0}.modal-dialog{position:relative;width:auto;margin:.5rem;pointer-events:none}.modal.fade .modal-dialog{transition:-webkit-transform .3s ease-out;transition:transform .3s ease-out;transition:transform .3s ease-out,-webkit-transform .3s ease-out;-webkit-transform:translate(0,-50px);transform:translate(0,-50px)}@media (prefers-reduced-motion:reduce){.modal.fade .modal-dialog{transition:none}}.modal.show .modal-dialog{-webkit-transform:none;transform:none}.modal-dialog-scrollable{display:-ms-flexbox;display:flex;max-height:calc(100% - 1rem)}.modal-dialog-scrollable .modal-content{max-height:calc(100vh - 1rem);overflow:hidden}.modal-dialog-scrollable .modal-footer,.modal-dialog-scrollable .modal-header{-ms-flex-negative:0;flex-shrink:0}.modal-dialog-scrollable .modal-body{overflow-y:auto}.modal-dialog-centered{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;min-height:calc(100% - 1rem)}.modal-dialog-centered::before{display:block;height:calc(100vh - 1rem);content:""}.modal-dialog-centered.modal-dialog-scrollable{-ms-flex-direction:column;flex-direction:column;-ms-flex-pack:center;justify-content:center;height:100%}.modal-dialog-centered.modal-dialog-scrollable .modal-content{max-height:none}.modal-dialog-centered.modal-dialog-scrollable::before{content:none}.modal-content{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;width:100%;pointer-events:auto;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem;outline:0}.modal-backdrop{position:fixed;top:0;left:0;z-index:1040;width:100vw;height:100vh;background-color:#000}.modal-backdrop.fade{opacity:0}.modal-backdrop.show{opacity:.5}.modal-header{display:-ms-flexbox;display:flex;-ms-flex-align:start;align-items:flex-start;-ms-flex-pack:justify;justify-content:space-between;padding:1rem 1rem;border-bottom:1px solid #dee2e6;border-top-left-radius:.3rem;border-top-right-radius:.3rem}.modal-header .close{padding:1rem 1rem;margin:-1rem -1rem -1rem auto}.modal-title{margin-bottom:0;line-height:1.5}.modal-body{position:relative;-ms-flex:1 1 auto;flex:1 1 auto;padding:1rem}.modal-footer{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:end;justify-content:flex-end;padding:1rem;border-top:1px solid #dee2e6;border-bottom-right-radius:.3rem;border-bottom-left-radius:.3rem}.modal-footer>:not(:first-child){margin-left:.25rem}.modal-footer>:not(:last-child){margin-right:.25rem}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:576px){.modal-dialog{max-width:500px;margin:1.75rem auto}.modal-dialog-scrollable{max-height:calc(100% - 3.5rem)}.modal-dialog-scrollable .modal-content{max-height:calc(100vh - 3.5rem)}.modal-dialog-centered{min-height:calc(100% - 3.5rem)}.modal-dialog-centered::before{height:calc(100vh - 3.5rem)}.modal-sm{max-width:300px}}@media (min-width:992px){.modal-lg,.modal-xl{max-width:800px}}@media (min-width:1200px){.modal-xl{max-width:1140px}}.tooltip{position:absolute;z-index:1070;display:block;margin:0;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-style:normal;font-weight:400;line-height:1.5;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.875rem;word-wrap:break-word;opacity:0}.tooltip.show{opacity:.9}.tooltip .arrow{position:absolute;display:block;width:.8rem;height:.4rem}.tooltip .arrow::before{position:absolute;content:"";border-color:transparent;border-style:solid}.bs-tooltip-auto[x-placement^=top],.bs-tooltip-top{padding:.4rem 0}.bs-tooltip-auto[x-placement^=top] .arrow,.bs-tooltip-top .arrow{bottom:0}.bs-tooltip-auto[x-placement^=top] .arrow::before,.bs-tooltip-top .arrow::before{top:0;border-width:.4rem .4rem 0;border-top-color:#000}.bs-tooltip-auto[x-placement^=right],.bs-tooltip-right{padding:0 .4rem}.bs-tooltip-auto[x-placement^=right] .arrow,.bs-tooltip-right .arrow{left:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=right] .arrow::before,.bs-tooltip-right .arrow::before{right:0;border-width:.4rem .4rem .4rem 0;border-right-color:#000}.bs-tooltip-auto[x-placement^=bottom],.bs-tooltip-bottom{padding:.4rem 0}.bs-tooltip-auto[x-placement^=bottom] .arrow,.bs-tooltip-bottom .arrow{top:0}.bs-tooltip-auto[x-placement^=bottom] .arrow::before,.bs-tooltip-bottom .arrow::before{bottom:0;border-width:0 .4rem .4rem;border-bottom-color:#000}.bs-tooltip-auto[x-placement^=left],.bs-tooltip-left{padding:0 .4rem}.bs-tooltip-auto[x-placement^=left] .arrow,.bs-tooltip-left .arrow{right:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=left] .arrow::before,.bs-tooltip-left .arrow::before{left:0;border-width:.4rem 0 .4rem .4rem;border-left-color:#000}.tooltip-inner{max-width:200px;padding:.25rem .5rem;color:#fff;text-align:center;background-color:#000;border-radius:.25rem}.popover{position:absolute;top:0;left:0;z-index:1060;display:block;max-width:276px;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-style:normal;font-weight:400;line-height:1.5;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.875rem;word-wrap:break-word;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem}.popover .arrow{position:absolute;display:block;width:1rem;height:.5rem;margin:0 .3rem}.popover .arrow::after,.popover .arrow::before{position:absolute;display:block;content:"";border-color:transparent;border-style:solid}.bs-popover-auto[x-placement^=top],.bs-popover-top{margin-bottom:.5rem}.bs-popover-auto[x-placement^=top]>.arrow,.bs-popover-top>.arrow{bottom:calc((.5rem + 1px) * -1)}.bs-popover-auto[x-placement^=top]>.arrow::before,.bs-popover-top>.arrow::before{bottom:0;border-width:.5rem .5rem 0;border-top-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=top]>.arrow::after,.bs-popover-top>.arrow::after{bottom:1px;border-width:.5rem .5rem 0;border-top-color:#fff}.bs-popover-auto[x-placement^=right],.bs-popover-right{margin-left:.5rem}.bs-popover-auto[x-placement^=right]>.arrow,.bs-popover-right>.arrow{left:calc((.5rem + 1px) * -1);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=right]>.arrow::before,.bs-popover-right>.arrow::before{left:0;border-width:.5rem .5rem .5rem 0;border-right-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=right]>.arrow::after,.bs-popover-right>.arrow::after{left:1px;border-width:.5rem .5rem .5rem 0;border-right-color:#fff}.bs-popover-auto[x-placement^=bottom],.bs-popover-bottom{margin-top:.5rem}.bs-popover-auto[x-placement^=bottom]>.arrow,.bs-popover-bottom>.arrow{top:calc((.5rem + 1px) * -1)}.bs-popover-auto[x-placement^=bottom]>.arrow::before,.bs-popover-bottom>.arrow::before{top:0;border-width:0 .5rem .5rem .5rem;border-bottom-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=bottom]>.arrow::after,.bs-popover-bottom>.arrow::after{top:1px;border-width:0 .5rem .5rem .5rem;border-bottom-color:#fff}.bs-popover-auto[x-placement^=bottom] .popover-header::before,.bs-popover-bottom .popover-header::before{position:absolute;top:0;left:50%;display:block;width:1rem;margin-left:-.5rem;content:"";border-bottom:1px solid #f7f7f7}.bs-popover-auto[x-placement^=left],.bs-popover-left{margin-right:.5rem}.bs-popover-auto[x-placement^=left]>.arrow,.bs-popover-left>.arrow{right:calc((.5rem + 1px) * -1);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=left]>.arrow::before,.bs-popover-left>.arrow::before{right:0;border-width:.5rem 0 .5rem .5rem;border-left-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=left]>.arrow::after,.bs-popover-left>.arrow::after{right:1px;border-width:.5rem 0 .5rem .5rem;border-left-color:#fff}.popover-header{padding:.5rem .75rem;margin-bottom:0;font-size:1rem;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-top-left-radius:calc(.3rem - 1px);border-top-right-radius:calc(.3rem - 1px)}.popover-header:empty{display:none}.popover-body{padding:.5rem .75rem;color:#212529}.carousel{position:relative}.carousel.pointer-event{-ms-touch-action:pan-y;touch-action:pan-y}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-inner::after{display:block;clear:both;content:""}.carousel-item{position:relative;display:none;float:left;width:100%;margin-right:-100%;-webkit-backface-visibility:hidden;backface-visibility:hidden;transition:-webkit-transform .6s ease-in-out;transition:transform .6s ease-in-out;transition:transform .6s ease-in-out,-webkit-transform .6s ease-in-out}@media (prefers-reduced-motion:reduce){.carousel-item{transition:none}}.carousel-item-next,.carousel-item-prev,.carousel-item.active{display:block}.active.carousel-item-right,.carousel-item-next:not(.carousel-item-left){-webkit-transform:translateX(100%);transform:translateX(100%)}.active.carousel-item-left,.carousel-item-prev:not(.carousel-item-right){-webkit-transform:translateX(-100%);transform:translateX(-100%)}.carousel-fade .carousel-item{opacity:0;transition-property:opacity;-webkit-transform:none;transform:none}.carousel-fade .carousel-item-next.carousel-item-left,.carousel-fade .carousel-item-prev.carousel-item-right,.carousel-fade .carousel-item.active{z-index:1;opacity:1}.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-right{z-index:0;opacity:0;transition:0s .6s opacity}@media (prefers-reduced-motion:reduce){.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-right{transition:none}}.carousel-control-next,.carousel-control-prev{position:absolute;top:0;bottom:0;z-index:1;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;width:15%;color:#fff;text-align:center;opacity:.5;transition:opacity .15s ease}@media (prefers-reduced-motion:reduce){.carousel-control-next,.carousel-control-prev{transition:none}}.carousel-control-next:focus,.carousel-control-next:hover,.carousel-control-prev:focus,.carousel-control-prev:hover{color:#fff;text-decoration:none;outline:0;opacity:.9}.carousel-control-prev{left:0}.carousel-control-next{right:0}.carousel-control-next-icon,.carousel-control-prev-icon{display:inline-block;width:20px;height:20px;background:no-repeat 50%/100% 100%}.carousel-control-prev-icon{background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3e%3cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3e%3c/svg%3e")}.carousel-control-next-icon{background-image:url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3e%3cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3e%3c/svg%3e")}.carousel-indicators{position:absolute;right:0;bottom:0;left:0;z-index:15;display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;padding-left:0;margin-right:15%;margin-left:15%;list-style:none}.carousel-indicators li{box-sizing:content-box;-ms-flex:0 1 auto;flex:0 1 auto;width:30px;height:3px;margin-right:3px;margin-left:3px;text-indent:-999px;cursor:pointer;background-color:#fff;background-clip:padding-box;border-top:10px solid transparent;border-bottom:10px solid transparent;opacity:.5;transition:opacity .6s ease}@media (prefers-reduced-motion:reduce){.carousel-indicators li{transition:none}}.carousel-indicators .active{opacity:1}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center}@-webkit-keyframes spinner-border{to{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes spinner-border{to{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.spinner-border{display:inline-block;width:2rem;height:2rem;vertical-align:text-bottom;border:.25em solid currentColor;border-right-color:transparent;border-radius:50%;-webkit-animation:spinner-border .75s linear infinite;animation:spinner-border .75s linear infinite}.spinner-border-sm{width:1rem;height:1rem;border-width:.2em}@-webkit-keyframes spinner-grow{0%{-webkit-transform:scale(0);transform:scale(0)}50%{opacity:1}}@keyframes spinner-grow{0%{-webkit-transform:scale(0);transform:scale(0)}50%{opacity:1}}.spinner-grow{display:inline-block;width:2rem;height:2rem;vertical-align:text-bottom;background-color:currentColor;border-radius:50%;opacity:0;-webkit-animation:spinner-grow .75s linear infinite;animation:spinner-grow .75s linear infinite}.spinner-grow-sm{width:1rem;height:1rem}.align-baseline{vertical-align:baseline!important}.align-top{vertical-align:top!important}.align-middle{vertical-align:middle!important}.align-bottom{vertical-align:bottom!important}.align-text-bottom{vertical-align:text-bottom!important}.align-text-top{vertical-align:text-top!important}.bg-primary{background-color:#007bff!important}a.bg-primary:focus,a.bg-primary:hover,button.bg-primary:focus,button.bg-primary:hover{background-color:#0062cc!important}.bg-secondary{background-color:#6c757d!important}a.bg-secondary:focus,a.bg-secondary:hover,button.bg-secondary:focus,button.bg-secondary:hover{background-color:#545b62!important}.bg-success{background-color:#28a745!important}a.bg-success:focus,a.bg-success:hover,button.bg-success:focus,button.bg-success:hover{background-color:#1e7e34!important}.bg-info{background-color:#17a2b8!important}a.bg-info:focus,a.bg-info:hover,button.bg-info:focus,button.bg-info:hover{background-color:#117a8b!important}.bg-warning{background-color:#ffc107!important}a.bg-warning:focus,a.bg-warning:hover,button.bg-warning:focus,button.bg-warning:hover{background-color:#d39e00!important}.bg-danger{background-color:#dc3545!important}a.bg-danger:focus,a.bg-danger:hover,button.bg-danger:focus,button.bg-danger:hover{background-color:#bd2130!important}.bg-light{background-color:#f8f9fa!important}a.bg-light:focus,a.bg-light:hover,button.bg-light:focus,button.bg-light:hover{background-color:#dae0e5!important}.bg-dark{background-color:#343a40!important}a.bg-dark:focus,a.bg-dark:hover,button.bg-dark:focus,button.bg-dark:hover{background-color:#1d2124!important}.bg-white{background-color:#fff!important}.bg-transparent{background-color:transparent!important}.border{border:1px solid #dee2e6!important}.border-top{border-top:1px solid #dee2e6!important}.border-right{border-right:1px solid #dee2e6!important}.border-bottom{border-bottom:1px solid #dee2e6!important}.border-left{border-left:1px solid #dee2e6!important}.border-0{border:0!important}.border-top-0{border-top:0!important}.border-right-0{border-right:0!important}.border-bottom-0{border-bottom:0!important}.border-left-0{border-left:0!important}.border-primary{border-color:#007bff!important}.border-secondary{border-color:#6c757d!important}.border-success{border-color:#28a745!important}.border-info{border-color:#17a2b8!important}.border-warning{border-color:#ffc107!important}.border-danger{border-color:#dc3545!important}.border-light{border-color:#f8f9fa!important}.border-dark{border-color:#343a40!important}.border-white{border-color:#fff!important}.rounded-sm{border-radius:.2rem!important}.rounded{border-radius:.25rem!important}.rounded-top{border-top-left-radius:.25rem!important;border-top-right-radius:.25rem!important}.rounded-right{border-top-right-radius:.25rem!important;border-bottom-right-radius:.25rem!important}.rounded-bottom{border-bottom-right-radius:.25rem!important;border-bottom-left-radius:.25rem!important}.rounded-left{border-top-left-radius:.25rem!important;border-bottom-left-radius:.25rem!important}.rounded-lg{border-radius:.3rem!important}.rounded-circle{border-radius:50%!important}.rounded-pill{border-radius:50rem!important}.rounded-0{border-radius:0!important}.clearfix::after{display:block;clear:both;content:""}.d-none{display:none!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-block{display:block!important}.d-table{display:table!important}.d-table-row{display:table-row!important}.d-table-cell{display:table-cell!important}.d-flex{display:-ms-flexbox!important;display:flex!important}.d-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}@media (min-width:576px){.d-sm-none{display:none!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-block{display:block!important}.d-sm-table{display:table!important}.d-sm-table-row{display:table-row!important}.d-sm-table-cell{display:table-cell!important}.d-sm-flex{display:-ms-flexbox!important;display:flex!important}.d-sm-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:768px){.d-md-none{display:none!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-block{display:block!important}.d-md-table{display:table!important}.d-md-table-row{display:table-row!important}.d-md-table-cell{display:table-cell!important}.d-md-flex{display:-ms-flexbox!important;display:flex!important}.d-md-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-table{display:table!important}.d-lg-table-row{display:table-row!important}.d-lg-table-cell{display:table-cell!important}.d-lg-flex{display:-ms-flexbox!important;display:flex!important}.d-lg-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:1200px){.d-xl-none{display:none!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-block{display:block!important}.d-xl-table{display:table!important}.d-xl-table-row{display:table-row!important}.d-xl-table-cell{display:table-cell!important}.d-xl-flex{display:-ms-flexbox!important;display:flex!important}.d-xl-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media print{.d-print-none{display:none!important}.d-print-inline{display:inline!important}.d-print-inline-block{display:inline-block!important}.d-print-block{display:block!important}.d-print-table{display:table!important}.d-print-table-row{display:table-row!important}.d-print-table-cell{display:table-cell!important}.d-print-flex{display:-ms-flexbox!important;display:flex!important}.d-print-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}.embed-responsive{position:relative;display:block;width:100%;padding:0;overflow:hidden}.embed-responsive::before{display:block;content:""}.embed-responsive .embed-responsive-item,.embed-responsive embed,.embed-responsive iframe,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive-21by9::before{padding-top:42.857143%}.embed-responsive-16by9::before{padding-top:56.25%}.embed-responsive-4by3::before{padding-top:75%}.embed-responsive-1by1::before{padding-top:100%}.flex-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-center{-ms-flex-align:center!important;align-items:center!important}.align-items-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}@media (min-width:576px){.flex-sm-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-sm-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-sm-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-sm-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-sm-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-sm-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-sm-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-sm-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-sm-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-sm-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-sm-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-sm-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-sm-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-sm-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-sm-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-sm-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-sm-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-sm-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-sm-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-sm-center{-ms-flex-align:center!important;align-items:center!important}.align-items-sm-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-sm-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-sm-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-sm-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-sm-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-sm-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-sm-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-sm-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-sm-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-sm-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-sm-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-sm-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-sm-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-sm-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:768px){.flex-md-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-md-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-md-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-md-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-md-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-md-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-md-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-md-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-md-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-md-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-md-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-md-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-md-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-md-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-md-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-md-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-md-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-md-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-md-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-md-center{-ms-flex-align:center!important;align-items:center!important}.align-items-md-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-md-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-md-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-md-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-md-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-md-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-md-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-md-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-md-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-md-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-md-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-md-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-md-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-md-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:992px){.flex-lg-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-lg-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-lg-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-lg-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-lg-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-lg-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-lg-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-lg-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-lg-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-lg-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-lg-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-lg-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-lg-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-lg-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-lg-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-lg-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-lg-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-lg-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-lg-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-lg-center{-ms-flex-align:center!important;align-items:center!important}.align-items-lg-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-lg-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-lg-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-lg-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-lg-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-lg-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-lg-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-lg-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-lg-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-lg-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-lg-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-lg-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-lg-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-lg-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:1200px){.flex-xl-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-xl-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-xl-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-xl-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-xl-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-xl-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-xl-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-xl-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-xl-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-xl-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-xl-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-xl-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-xl-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-xl-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-xl-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-xl-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-xl-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-xl-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-xl-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-xl-center{-ms-flex-align:center!important;align-items:center!important}.align-items-xl-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-xl-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-xl-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-xl-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-xl-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-xl-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-xl-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-xl-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-xl-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-xl-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-xl-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-xl-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-xl-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-xl-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}@media (min-width:576px){.float-sm-left{float:left!important}.float-sm-right{float:right!important}.float-sm-none{float:none!important}}@media (min-width:768px){.float-md-left{float:left!important}.float-md-right{float:right!important}.float-md-none{float:none!important}}@media (min-width:992px){.float-lg-left{float:left!important}.float-lg-right{float:right!important}.float-lg-none{float:none!important}}@media (min-width:1200px){.float-xl-left{float:left!important}.float-xl-right{float:right!important}.float-xl-none{float:none!important}}.overflow-auto{overflow:auto!important}.overflow-hidden{overflow:hidden!important}.position-static{position:static!important}.position-relative{position:relative!important}.position-absolute{position:absolute!important}.position-fixed{position:fixed!important}.position-sticky{position:-webkit-sticky!important;position:sticky!important}.fixed-top{position:fixed;top:0;right:0;left:0;z-index:1030}.fixed-bottom{position:fixed;right:0;bottom:0;left:0;z-index:1030}@supports ((position:-webkit-sticky) or (position:sticky)){.sticky-top{position:-webkit-sticky;position:sticky;top:0;z-index:1020}}.sr-only{position:absolute;width:1px;height:1px;padding:0;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;overflow:visible;clip:auto;white-space:normal}.shadow-sm{box-shadow:0 .125rem .25rem rgba(0,0,0,.075)!important}.shadow{box-shadow:0 .5rem 1rem rgba(0,0,0,.15)!important}.shadow-lg{box-shadow:0 1rem 3rem rgba(0,0,0,.175)!important}.shadow-none{box-shadow:none!important}.w-25{width:25%!important}.w-50{width:50%!important}.w-75{width:75%!important}.w-100{width:100%!important}.w-auto{width:auto!important}.h-25{height:25%!important}.h-50{height:50%!important}.h-75{height:75%!important}.h-100{height:100%!important}.h-auto{height:auto!important}.mw-100{max-width:100%!important}.mh-100{max-height:100%!important}.min-vw-100{min-width:100vw!important}.min-vh-100{min-height:100vh!important}.vw-100{width:100vw!important}.vh-100{height:100vh!important}.stretched-link::after{position:absolute;top:0;right:0;bottom:0;left:0;z-index:1;pointer-events:auto;content:"";background-color:rgba(0,0,0,0)}.m-0{margin:0!important}.mt-0,.my-0{margin-top:0!important}.mr-0,.mx-0{margin-right:0!important}.mb-0,.my-0{margin-bottom:0!important}.ml-0,.mx-0{margin-left:0!important}.m-1{margin:.25rem!important}.mt-1,.my-1{margin-top:.25rem!important}.mr-1,.mx-1{margin-right:.25rem!important}.mb-1,.my-1{margin-bottom:.25rem!important}.ml-1,.mx-1{margin-left:.25rem!important}.m-2{margin:.5rem!important}.mt-2,.my-2{margin-top:.5rem!important}.mr-2,.mx-2{margin-right:.5rem!important}.mb-2,.my-2{margin-bottom:.5rem!important}.ml-2,.mx-2{margin-left:.5rem!important}.m-3{margin:1rem!important}.mt-3,.my-3{margin-top:1rem!important}.mr-3,.mx-3{margin-right:1rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.ml-3,.mx-3{margin-left:1rem!important}.m-4{margin:1.5rem!important}.mt-4,.my-4{margin-top:1.5rem!important}.mr-4,.mx-4{margin-right:1.5rem!important}.mb-4,.my-4{margin-bottom:1.5rem!important}.ml-4,.mx-4{margin-left:1.5rem!important}.m-5{margin:3rem!important}.mt-5,.my-5{margin-top:3rem!important}.mr-5,.mx-5{margin-right:3rem!important}.mb-5,.my-5{margin-bottom:3rem!important}.ml-5,.mx-5{margin-left:3rem!important}.p-0{padding:0!important}.pt-0,.py-0{padding-top:0!important}.pr-0,.px-0{padding-right:0!important}.pb-0,.py-0{padding-bottom:0!important}.pl-0,.px-0{padding-left:0!important}.p-1{padding:.25rem!important}.pt-1,.py-1{padding-top:.25rem!important}.pr-1,.px-1{padding-right:.25rem!important}.pb-1,.py-1{padding-bottom:.25rem!important}.pl-1,.px-1{padding-left:.25rem!important}.p-2{padding:.5rem!important}.pt-2,.py-2{padding-top:.5rem!important}.pr-2,.px-2{padding-right:.5rem!important}.pb-2,.py-2{padding-bottom:.5rem!important}.pl-2,.px-2{padding-left:.5rem!important}.p-3{padding:1rem!important}.pt-3,.py-3{padding-top:1rem!important}.pr-3,.px-3{padding-right:1rem!important}.pb-3,.py-3{padding-bottom:1rem!important}.pl-3,.px-3{padding-left:1rem!important}.p-4{padding:1.5rem!important}.pt-4,.py-4{padding-top:1.5rem!important}.pr-4,.px-4{padding-right:1.5rem!important}.pb-4,.py-4{padding-bottom:1.5rem!important}.pl-4,.px-4{padding-left:1.5rem!important}.p-5{padding:3rem!important}.pt-5,.py-5{padding-top:3rem!important}.pr-5,.px-5{padding-right:3rem!important}.pb-5,.py-5{padding-bottom:3rem!important}.pl-5,.px-5{padding-left:3rem!important}.m-n1{margin:-.25rem!important}.mt-n1,.my-n1{margin-top:-.25rem!important}.mr-n1,.mx-n1{margin-right:-.25rem!important}.mb-n1,.my-n1{margin-bottom:-.25rem!important}.ml-n1,.mx-n1{margin-left:-.25rem!important}.m-n2{margin:-.5rem!important}.mt-n2,.my-n2{margin-top:-.5rem!important}.mr-n2,.mx-n2{margin-right:-.5rem!important}.mb-n2,.my-n2{margin-bottom:-.5rem!important}.ml-n2,.mx-n2{margin-left:-.5rem!important}.m-n3{margin:-1rem!important}.mt-n3,.my-n3{margin-top:-1rem!important}.mr-n3,.mx-n3{margin-right:-1rem!important}.mb-n3,.my-n3{margin-bottom:-1rem!important}.ml-n3,.mx-n3{margin-left:-1rem!important}.m-n4{margin:-1.5rem!important}.mt-n4,.my-n4{margin-top:-1.5rem!important}.mr-n4,.mx-n4{margin-right:-1.5rem!important}.mb-n4,.my-n4{margin-bottom:-1.5rem!important}.ml-n4,.mx-n4{margin-left:-1.5rem!important}.m-n5{margin:-3rem!important}.mt-n5,.my-n5{margin-top:-3rem!important}.mr-n5,.mx-n5{margin-right:-3rem!important}.mb-n5,.my-n5{margin-bottom:-3rem!important}.ml-n5,.mx-n5{margin-left:-3rem!important}.m-auto{margin:auto!important}.mt-auto,.my-auto{margin-top:auto!important}.mr-auto,.mx-auto{margin-right:auto!important}.mb-auto,.my-auto{margin-bottom:auto!important}.ml-auto,.mx-auto{margin-left:auto!important}@media (min-width:576px){.m-sm-0{margin:0!important}.mt-sm-0,.my-sm-0{margin-top:0!important}.mr-sm-0,.mx-sm-0{margin-right:0!important}.mb-sm-0,.my-sm-0{margin-bottom:0!important}.ml-sm-0,.mx-sm-0{margin-left:0!important}.m-sm-1{margin:.25rem!important}.mt-sm-1,.my-sm-1{margin-top:.25rem!important}.mr-sm-1,.mx-sm-1{margin-right:.25rem!important}.mb-sm-1,.my-sm-1{margin-bottom:.25rem!important}.ml-sm-1,.mx-sm-1{margin-left:.25rem!important}.m-sm-2{margin:.5rem!important}.mt-sm-2,.my-sm-2{margin-top:.5rem!important}.mr-sm-2,.mx-sm-2{margin-right:.5rem!important}.mb-sm-2,.my-sm-2{margin-bottom:.5rem!important}.ml-sm-2,.mx-sm-2{margin-left:.5rem!important}.m-sm-3{margin:1rem!important}.mt-sm-3,.my-sm-3{margin-top:1rem!important}.mr-sm-3,.mx-sm-3{margin-right:1rem!important}.mb-sm-3,.my-sm-3{margin-bottom:1rem!important}.ml-sm-3,.mx-sm-3{margin-left:1rem!important}.m-sm-4{margin:1.5rem!important}.mt-sm-4,.my-sm-4{margin-top:1.5rem!important}.mr-sm-4,.mx-sm-4{margin-right:1.5rem!important}.mb-sm-4,.my-sm-4{margin-bottom:1.5rem!important}.ml-sm-4,.mx-sm-4{margin-left:1.5rem!important}.m-sm-5{margin:3rem!important}.mt-sm-5,.my-sm-5{margin-top:3rem!important}.mr-sm-5,.mx-sm-5{margin-right:3rem!important}.mb-sm-5,.my-sm-5{margin-bottom:3rem!important}.ml-sm-5,.mx-sm-5{margin-left:3rem!important}.p-sm-0{padding:0!important}.pt-sm-0,.py-sm-0{padding-top:0!important}.pr-sm-0,.px-sm-0{padding-right:0!important}.pb-sm-0,.py-sm-0{padding-bottom:0!important}.pl-sm-0,.px-sm-0{padding-left:0!important}.p-sm-1{padding:.25rem!important}.pt-sm-1,.py-sm-1{padding-top:.25rem!important}.pr-sm-1,.px-sm-1{padding-right:.25rem!important}.pb-sm-1,.py-sm-1{padding-bottom:.25rem!important}.pl-sm-1,.px-sm-1{padding-left:.25rem!important}.p-sm-2{padding:.5rem!important}.pt-sm-2,.py-sm-2{padding-top:.5rem!important}.pr-sm-2,.px-sm-2{padding-right:.5rem!important}.pb-sm-2,.py-sm-2{padding-bottom:.5rem!important}.pl-sm-2,.px-sm-2{padding-left:.5rem!important}.p-sm-3{padding:1rem!important}.pt-sm-3,.py-sm-3{padding-top:1rem!important}.pr-sm-3,.px-sm-3{padding-right:1rem!important}.pb-sm-3,.py-sm-3{padding-bottom:1rem!important}.pl-sm-3,.px-sm-3{padding-left:1rem!important}.p-sm-4{padding:1.5rem!important}.pt-sm-4,.py-sm-4{padding-top:1.5rem!important}.pr-sm-4,.px-sm-4{padding-right:1.5rem!important}.pb-sm-4,.py-sm-4{padding-bottom:1.5rem!important}.pl-sm-4,.px-sm-4{padding-left:1.5rem!important}.p-sm-5{padding:3rem!important}.pt-sm-5,.py-sm-5{padding-top:3rem!important}.pr-sm-5,.px-sm-5{padding-right:3rem!important}.pb-sm-5,.py-sm-5{padding-bottom:3rem!important}.pl-sm-5,.px-sm-5{padding-left:3rem!important}.m-sm-n1{margin:-.25rem!important}.mt-sm-n1,.my-sm-n1{margin-top:-.25rem!important}.mr-sm-n1,.mx-sm-n1{margin-right:-.25rem!important}.mb-sm-n1,.my-sm-n1{margin-bottom:-.25rem!important}.ml-sm-n1,.mx-sm-n1{margin-left:-.25rem!important}.m-sm-n2{margin:-.5rem!important}.mt-sm-n2,.my-sm-n2{margin-top:-.5rem!important}.mr-sm-n2,.mx-sm-n2{margin-right:-.5rem!important}.mb-sm-n2,.my-sm-n2{margin-bottom:-.5rem!important}.ml-sm-n2,.mx-sm-n2{margin-left:-.5rem!important}.m-sm-n3{margin:-1rem!important}.mt-sm-n3,.my-sm-n3{margin-top:-1rem!important}.mr-sm-n3,.mx-sm-n3{margin-right:-1rem!important}.mb-sm-n3,.my-sm-n3{margin-bottom:-1rem!important}.ml-sm-n3,.mx-sm-n3{margin-left:-1rem!important}.m-sm-n4{margin:-1.5rem!important}.mt-sm-n4,.my-sm-n4{margin-top:-1.5rem!important}.mr-sm-n4,.mx-sm-n4{margin-right:-1.5rem!important}.mb-sm-n4,.my-sm-n4{margin-bottom:-1.5rem!important}.ml-sm-n4,.mx-sm-n4{margin-left:-1.5rem!important}.m-sm-n5{margin:-3rem!important}.mt-sm-n5,.my-sm-n5{margin-top:-3rem!important}.mr-sm-n5,.mx-sm-n5{margin-right:-3rem!important}.mb-sm-n5,.my-sm-n5{margin-bottom:-3rem!important}.ml-sm-n5,.mx-sm-n5{margin-left:-3rem!important}.m-sm-auto{margin:auto!important}.mt-sm-auto,.my-sm-auto{margin-top:auto!important}.mr-sm-auto,.mx-sm-auto{margin-right:auto!important}.mb-sm-auto,.my-sm-auto{margin-bottom:auto!important}.ml-sm-auto,.mx-sm-auto{margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0,.my-md-0{margin-top:0!important}.mr-md-0,.mx-md-0{margin-right:0!important}.mb-md-0,.my-md-0{margin-bottom:0!important}.ml-md-0,.mx-md-0{margin-left:0!important}.m-md-1{margin:.25rem!important}.mt-md-1,.my-md-1{margin-top:.25rem!important}.mr-md-1,.mx-md-1{margin-right:.25rem!important}.mb-md-1,.my-md-1{margin-bottom:.25rem!important}.ml-md-1,.mx-md-1{margin-left:.25rem!important}.m-md-2{margin:.5rem!important}.mt-md-2,.my-md-2{margin-top:.5rem!important}.mr-md-2,.mx-md-2{margin-right:.5rem!important}.mb-md-2,.my-md-2{margin-bottom:.5rem!important}.ml-md-2,.mx-md-2{margin-left:.5rem!important}.m-md-3{margin:1rem!important}.mt-md-3,.my-md-3{margin-top:1rem!important}.mr-md-3,.mx-md-3{margin-right:1rem!important}.mb-md-3,.my-md-3{margin-bottom:1rem!important}.ml-md-3,.mx-md-3{margin-left:1rem!important}.m-md-4{margin:1.5rem!important}.mt-md-4,.my-md-4{margin-top:1.5rem!important}.mr-md-4,.mx-md-4{margin-right:1.5rem!important}.mb-md-4,.my-md-4{margin-bottom:1.5rem!important}.ml-md-4,.mx-md-4{margin-left:1.5rem!important}.m-md-5{margin:3rem!important}.mt-md-5,.my-md-5{margin-top:3rem!important}.mr-md-5,.mx-md-5{margin-right:3rem!important}.mb-md-5,.my-md-5{margin-bottom:3rem!important}.ml-md-5,.mx-md-5{margin-left:3rem!important}.p-md-0{padding:0!important}.pt-md-0,.py-md-0{padding-top:0!important}.pr-md-0,.px-md-0{padding-right:0!important}.pb-md-0,.py-md-0{padding-bottom:0!important}.pl-md-0,.px-md-0{padding-left:0!important}.p-md-1{padding:.25rem!important}.pt-md-1,.py-md-1{padding-top:.25rem!important}.pr-md-1,.px-md-1{padding-right:.25rem!important}.pb-md-1,.py-md-1{padding-bottom:.25rem!important}.pl-md-1,.px-md-1{padding-left:.25rem!important}.p-md-2{padding:.5rem!important}.pt-md-2,.py-md-2{padding-top:.5rem!important}.pr-md-2,.px-md-2{padding-right:.5rem!important}.pb-md-2,.py-md-2{padding-bottom:.5rem!important}.pl-md-2,.px-md-2{padding-left:.5rem!important}.p-md-3{padding:1rem!important}.pt-md-3,.py-md-3{padding-top:1rem!important}.pr-md-3,.px-md-3{padding-right:1rem!important}.pb-md-3,.py-md-3{padding-bottom:1rem!important}.pl-md-3,.px-md-3{padding-left:1rem!important}.p-md-4{padding:1.5rem!important}.pt-md-4,.py-md-4{padding-top:1.5rem!important}.pr-md-4,.px-md-4{padding-right:1.5rem!important}.pb-md-4,.py-md-4{padding-bottom:1.5rem!important}.pl-md-4,.px-md-4{padding-left:1.5rem!important}.p-md-5{padding:3rem!important}.pt-md-5,.py-md-5{padding-top:3rem!important}.pr-md-5,.px-md-5{padding-right:3rem!important}.pb-md-5,.py-md-5{padding-bottom:3rem!important}.pl-md-5,.px-md-5{padding-left:3rem!important}.m-md-n1{margin:-.25rem!important}.mt-md-n1,.my-md-n1{margin-top:-.25rem!important}.mr-md-n1,.mx-md-n1{margin-right:-.25rem!important}.mb-md-n1,.my-md-n1{margin-bottom:-.25rem!important}.ml-md-n1,.mx-md-n1{margin-left:-.25rem!important}.m-md-n2{margin:-.5rem!important}.mt-md-n2,.my-md-n2{margin-top:-.5rem!important}.mr-md-n2,.mx-md-n2{margin-right:-.5rem!important}.mb-md-n2,.my-md-n2{margin-bottom:-.5rem!important}.ml-md-n2,.mx-md-n2{margin-left:-.5rem!important}.m-md-n3{margin:-1rem!important}.mt-md-n3,.my-md-n3{margin-top:-1rem!important}.mr-md-n3,.mx-md-n3{margin-right:-1rem!important}.mb-md-n3,.my-md-n3{margin-bottom:-1rem!important}.ml-md-n3,.mx-md-n3{margin-left:-1rem!important}.m-md-n4{margin:-1.5rem!important}.mt-md-n4,.my-md-n4{margin-top:-1.5rem!important}.mr-md-n4,.mx-md-n4{margin-right:-1.5rem!important}.mb-md-n4,.my-md-n4{margin-bottom:-1.5rem!important}.ml-md-n4,.mx-md-n4{margin-left:-1.5rem!important}.m-md-n5{margin:-3rem!important}.mt-md-n5,.my-md-n5{margin-top:-3rem!important}.mr-md-n5,.mx-md-n5{margin-right:-3rem!important}.mb-md-n5,.my-md-n5{margin-bottom:-3rem!important}.ml-md-n5,.mx-md-n5{margin-left:-3rem!important}.m-md-auto{margin:auto!important}.mt-md-auto,.my-md-auto{margin-top:auto!important}.mr-md-auto,.mx-md-auto{margin-right:auto!important}.mb-md-auto,.my-md-auto{margin-bottom:auto!important}.ml-md-auto,.mx-md-auto{margin-left:auto!important}}@media (min-width:992px){.m-lg-0{margin:0!important}.mt-lg-0,.my-lg-0{margin-top:0!important}.mr-lg-0,.mx-lg-0{margin-right:0!important}.mb-lg-0,.my-lg-0{margin-bottom:0!important}.ml-lg-0,.mx-lg-0{margin-left:0!important}.m-lg-1{margin:.25rem!important}.mt-lg-1,.my-lg-1{margin-top:.25rem!important}.mr-lg-1,.mx-lg-1{margin-right:.25rem!important}.mb-lg-1,.my-lg-1{margin-bottom:.25rem!important}.ml-lg-1,.mx-lg-1{margin-left:.25rem!important}.m-lg-2{margin:.5rem!important}.mt-lg-2,.my-lg-2{margin-top:.5rem!important}.mr-lg-2,.mx-lg-2{margin-right:.5rem!important}.mb-lg-2,.my-lg-2{margin-bottom:.5rem!important}.ml-lg-2,.mx-lg-2{margin-left:.5rem!important}.m-lg-3{margin:1rem!important}.mt-lg-3,.my-lg-3{margin-top:1rem!important}.mr-lg-3,.mx-lg-3{margin-right:1rem!important}.mb-lg-3,.my-lg-3{margin-bottom:1rem!important}.ml-lg-3,.mx-lg-3{margin-left:1rem!important}.m-lg-4{margin:1.5rem!important}.mt-lg-4,.my-lg-4{margin-top:1.5rem!important}.mr-lg-4,.mx-lg-4{margin-right:1.5rem!important}.mb-lg-4,.my-lg-4{margin-bottom:1.5rem!important}.ml-lg-4,.mx-lg-4{margin-left:1.5rem!important}.m-lg-5{margin:3rem!important}.mt-lg-5,.my-lg-5{margin-top:3rem!important}.mr-lg-5,.mx-lg-5{margin-right:3rem!important}.mb-lg-5,.my-lg-5{margin-bottom:3rem!important}.ml-lg-5,.mx-lg-5{margin-left:3rem!important}.p-lg-0{padding:0!important}.pt-lg-0,.py-lg-0{padding-top:0!important}.pr-lg-0,.px-lg-0{padding-right:0!important}.pb-lg-0,.py-lg-0{padding-bottom:0!important}.pl-lg-0,.px-lg-0{padding-left:0!important}.p-lg-1{padding:.25rem!important}.pt-lg-1,.py-lg-1{padding-top:.25rem!important}.pr-lg-1,.px-lg-1{padding-right:.25rem!important}.pb-lg-1,.py-lg-1{padding-bottom:.25rem!important}.pl-lg-1,.px-lg-1{padding-left:.25rem!important}.p-lg-2{padding:.5rem!important}.pt-lg-2,.py-lg-2{padding-top:.5rem!important}.pr-lg-2,.px-lg-2{padding-right:.5rem!important}.pb-lg-2,.py-lg-2{padding-bottom:.5rem!important}.pl-lg-2,.px-lg-2{padding-left:.5rem!important}.p-lg-3{padding:1rem!important}.pt-lg-3,.py-lg-3{padding-top:1rem!important}.pr-lg-3,.px-lg-3{padding-right:1rem!important}.pb-lg-3,.py-lg-3{padding-bottom:1rem!important}.pl-lg-3,.px-lg-3{padding-left:1rem!important}.p-lg-4{padding:1.5rem!important}.pt-lg-4,.py-lg-4{padding-top:1.5rem!important}.pr-lg-4,.px-lg-4{padding-right:1.5rem!important}.pb-lg-4,.py-lg-4{padding-bottom:1.5rem!important}.pl-lg-4,.px-lg-4{padding-left:1.5rem!important}.p-lg-5{padding:3rem!important}.pt-lg-5,.py-lg-5{padding-top:3rem!important}.pr-lg-5,.px-lg-5{padding-right:3rem!important}.pb-lg-5,.py-lg-5{padding-bottom:3rem!important}.pl-lg-5,.px-lg-5{padding-left:3rem!important}.m-lg-n1{margin:-.25rem!important}.mt-lg-n1,.my-lg-n1{margin-top:-.25rem!important}.mr-lg-n1,.mx-lg-n1{margin-right:-.25rem!important}.mb-lg-n1,.my-lg-n1{margin-bottom:-.25rem!important}.ml-lg-n1,.mx-lg-n1{margin-left:-.25rem!important}.m-lg-n2{margin:-.5rem!important}.mt-lg-n2,.my-lg-n2{margin-top:-.5rem!important}.mr-lg-n2,.mx-lg-n2{margin-right:-.5rem!important}.mb-lg-n2,.my-lg-n2{margin-bottom:-.5rem!important}.ml-lg-n2,.mx-lg-n2{margin-left:-.5rem!important}.m-lg-n3{margin:-1rem!important}.mt-lg-n3,.my-lg-n3{margin-top:-1rem!important}.mr-lg-n3,.mx-lg-n3{margin-right:-1rem!important}.mb-lg-n3,.my-lg-n3{margin-bottom:-1rem!important}.ml-lg-n3,.mx-lg-n3{margin-left:-1rem!important}.m-lg-n4{margin:-1.5rem!important}.mt-lg-n4,.my-lg-n4{margin-top:-1.5rem!important}.mr-lg-n4,.mx-lg-n4{margin-right:-1.5rem!important}.mb-lg-n4,.my-lg-n4{margin-bottom:-1.5rem!important}.ml-lg-n4,.mx-lg-n4{margin-left:-1.5rem!important}.m-lg-n5{margin:-3rem!important}.mt-lg-n5,.my-lg-n5{margin-top:-3rem!important}.mr-lg-n5,.mx-lg-n5{margin-right:-3rem!important}.mb-lg-n5,.my-lg-n5{margin-bottom:-3rem!important}.ml-lg-n5,.mx-lg-n5{margin-left:-3rem!important}.m-lg-auto{margin:auto!important}.mt-lg-auto,.my-lg-auto{margin-top:auto!important}.mr-lg-auto,.mx-lg-auto{margin-right:auto!important}.mb-lg-auto,.my-lg-auto{margin-bottom:auto!important}.ml-lg-auto,.mx-lg-auto{margin-left:auto!important}}@media (min-width:1200px){.m-xl-0{margin:0!important}.mt-xl-0,.my-xl-0{margin-top:0!important}.mr-xl-0,.mx-xl-0{margin-right:0!important}.mb-xl-0,.my-xl-0{margin-bottom:0!important}.ml-xl-0,.mx-xl-0{margin-left:0!important}.m-xl-1{margin:.25rem!important}.mt-xl-1,.my-xl-1{margin-top:.25rem!important}.mr-xl-1,.mx-xl-1{margin-right:.25rem!important}.mb-xl-1,.my-xl-1{margin-bottom:.25rem!important}.ml-xl-1,.mx-xl-1{margin-left:.25rem!important}.m-xl-2{margin:.5rem!important}.mt-xl-2,.my-xl-2{margin-top:.5rem!important}.mr-xl-2,.mx-xl-2{margin-right:.5rem!important}.mb-xl-2,.my-xl-2{margin-bottom:.5rem!important}.ml-xl-2,.mx-xl-2{margin-left:.5rem!important}.m-xl-3{margin:1rem!important}.mt-xl-3,.my-xl-3{margin-top:1rem!important}.mr-xl-3,.mx-xl-3{margin-right:1rem!important}.mb-xl-3,.my-xl-3{margin-bottom:1rem!important}.ml-xl-3,.mx-xl-3{margin-left:1rem!important}.m-xl-4{margin:1.5rem!important}.mt-xl-4,.my-xl-4{margin-top:1.5rem!important}.mr-xl-4,.mx-xl-4{margin-right:1.5rem!important}.mb-xl-4,.my-xl-4{margin-bottom:1.5rem!important}.ml-xl-4,.mx-xl-4{margin-left:1.5rem!important}.m-xl-5{margin:3rem!important}.mt-xl-5,.my-xl-5{margin-top:3rem!important}.mr-xl-5,.mx-xl-5{margin-right:3rem!important}.mb-xl-5,.my-xl-5{margin-bottom:3rem!important}.ml-xl-5,.mx-xl-5{margin-left:3rem!important}.p-xl-0{padding:0!important}.pt-xl-0,.py-xl-0{padding-top:0!important}.pr-xl-0,.px-xl-0{padding-right:0!important}.pb-xl-0,.py-xl-0{padding-bottom:0!important}.pl-xl-0,.px-xl-0{padding-left:0!important}.p-xl-1{padding:.25rem!important}.pt-xl-1,.py-xl-1{padding-top:.25rem!important}.pr-xl-1,.px-xl-1{padding-right:.25rem!important}.pb-xl-1,.py-xl-1{padding-bottom:.25rem!important}.pl-xl-1,.px-xl-1{padding-left:.25rem!important}.p-xl-2{padding:.5rem!important}.pt-xl-2,.py-xl-2{padding-top:.5rem!important}.pr-xl-2,.px-xl-2{padding-right:.5rem!important}.pb-xl-2,.py-xl-2{padding-bottom:.5rem!important}.pl-xl-2,.px-xl-2{padding-left:.5rem!important}.p-xl-3{padding:1rem!important}.pt-xl-3,.py-xl-3{padding-top:1rem!important}.pr-xl-3,.px-xl-3{padding-right:1rem!important}.pb-xl-3,.py-xl-3{padding-bottom:1rem!important}.pl-xl-3,.px-xl-3{padding-left:1rem!important}.p-xl-4{padding:1.5rem!important}.pt-xl-4,.py-xl-4{padding-top:1.5rem!important}.pr-xl-4,.px-xl-4{padding-right:1.5rem!important}.pb-xl-4,.py-xl-4{padding-bottom:1.5rem!important}.pl-xl-4,.px-xl-4{padding-left:1.5rem!important}.p-xl-5{padding:3rem!important}.pt-xl-5,.py-xl-5{padding-top:3rem!important}.pr-xl-5,.px-xl-5{padding-right:3rem!important}.pb-xl-5,.py-xl-5{padding-bottom:3rem!important}.pl-xl-5,.px-xl-5{padding-left:3rem!important}.m-xl-n1{margin:-.25rem!important}.mt-xl-n1,.my-xl-n1{margin-top:-.25rem!important}.mr-xl-n1,.mx-xl-n1{margin-right:-.25rem!important}.mb-xl-n1,.my-xl-n1{margin-bottom:-.25rem!important}.ml-xl-n1,.mx-xl-n1{margin-left:-.25rem!important}.m-xl-n2{margin:-.5rem!important}.mt-xl-n2,.my-xl-n2{margin-top:-.5rem!important}.mr-xl-n2,.mx-xl-n2{margin-right:-.5rem!important}.mb-xl-n2,.my-xl-n2{margin-bottom:-.5rem!important}.ml-xl-n2,.mx-xl-n2{margin-left:-.5rem!important}.m-xl-n3{margin:-1rem!important}.mt-xl-n3,.my-xl-n3{margin-top:-1rem!important}.mr-xl-n3,.mx-xl-n3{margin-right:-1rem!important}.mb-xl-n3,.my-xl-n3{margin-bottom:-1rem!important}.ml-xl-n3,.mx-xl-n3{margin-left:-1rem!important}.m-xl-n4{margin:-1.5rem!important}.mt-xl-n4,.my-xl-n4{margin-top:-1.5rem!important}.mr-xl-n4,.mx-xl-n4{margin-right:-1.5rem!important}.mb-xl-n4,.my-xl-n4{margin-bottom:-1.5rem!important}.ml-xl-n4,.mx-xl-n4{margin-left:-1.5rem!important}.m-xl-n5{margin:-3rem!important}.mt-xl-n5,.my-xl-n5{margin-top:-3rem!important}.mr-xl-n5,.mx-xl-n5{margin-right:-3rem!important}.mb-xl-n5,.my-xl-n5{margin-bottom:-3rem!important}.ml-xl-n5,.mx-xl-n5{margin-left:-3rem!important}.m-xl-auto{margin:auto!important}.mt-xl-auto,.my-xl-auto{margin-top:auto!important}.mr-xl-auto,.mx-xl-auto{margin-right:auto!important}.mb-xl-auto,.my-xl-auto{margin-bottom:auto!important}.ml-xl-auto,.mx-xl-auto{margin-left:auto!important}}.text-monospace{font-family:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace!important}.text-justify{text-align:justify!important}.text-wrap{white-space:normal!important}.text-nowrap{white-space:nowrap!important}.text-truncate{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.text-left{text-align:left!important}.text-right{text-align:right!important}.text-center{text-align:center!important}@media (min-width:576px){.text-sm-left{text-align:left!important}.text-sm-right{text-align:right!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-left{text-align:left!important}.text-md-right{text-align:right!important}.text-md-center{text-align:center!important}}@media (min-width:992px){.text-lg-left{text-align:left!important}.text-lg-right{text-align:right!important}.text-lg-center{text-align:center!important}}@media (min-width:1200px){.text-xl-left{text-align:left!important}.text-xl-right{text-align:right!important}.text-xl-center{text-align:center!important}}.text-lowercase{text-transform:lowercase!important}.text-uppercase{text-transform:uppercase!important}.text-capitalize{text-transform:capitalize!important}.font-weight-light{font-weight:300!important}.font-weight-lighter{font-weight:lighter!important}.font-weight-normal{font-weight:400!important}.font-weight-bold{font-weight:700!important}.font-weight-bolder{font-weight:bolder!important}.font-italic{font-style:italic!important}.text-white{color:#fff!important}.text-primary{color:#007bff!important}a.text-primary:focus,a.text-primary:hover{color:#0056b3!important}.text-secondary{color:#6c757d!important}a.text-secondary:focus,a.text-secondary:hover{color:#494f54!important}.text-success{color:#28a745!important}a.text-success:focus,a.text-success:hover{color:#19692c!important}.text-info{color:#17a2b8!important}a.text-info:focus,a.text-info:hover{color:#0f6674!important}.text-warning{color:#ffc107!important}a.text-warning:focus,a.text-warning:hover{color:#ba8b00!important}.text-danger{color:#dc3545!important}a.text-danger:focus,a.text-danger:hover{color:#a71d2a!important}.text-light{color:#f8f9fa!important}a.text-light:focus,a.text-light:hover{color:#cbd3da!important}.text-dark{color:#343a40!important}a.text-dark:focus,a.text-dark:hover{color:#121416!important}.text-body{color:#212529!important}.text-muted{color:#6c757d!important}.text-black-50{color:rgba(0,0,0,.5)!important}.text-white-50{color:rgba(255,255,255,.5)!important}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.text-decoration-none{text-decoration:none!important}.text-break{word-break:break-word!important;overflow-wrap:break-word!important}.text-reset{color:inherit!important}.visible{visibility:visible!important}.invisible{visibility:hidden!important}@media print{*,::after,::before{text-shadow:none!important;box-shadow:none!important}a:not(.btn){text-decoration:underline}abbr[title]::after{content:" (" attr(title) ")"}pre{white-space:pre-wrap!important}blockquote,pre{border:1px solid #adb5bd;page-break-inside:avoid}thead{display:table-header-group}img,tr{page-break-inside:avoid}h2,h3,p{orphans:3;widows:3}h2,h3{page-break-after:avoid}@page{size:a3}body{min-width:992px!important}.container{min-width:992px!important}.navbar{display:none}.badge{border:1px solid #000}.table{border-collapse:collapse!important}.table td,.table th{background-color:#fff!important}.table-bordered td,.table-bordered th{border:1px solid #dee2e6!important}.table-dark{color:inherit}.table-dark tbody+tbody,.table-dark td,.table-dark th,.table-dark thead th{border-color:#dee2e6}.table .thead-dark th{color:inherit;border-color:#dee2e6}}
/*# sourceMappingURL=bootstrap.min.css.map */
.patientBox {
    background-color: #09467f;
    color: white;
}

.headerRow {
    background-color: #f2f2f2;
    margin-bottom: 0.4em;
}

.headerRowInnerTableHeader {
    background-color: #c7c8c9;
    border: 1px solid #dedede;
}

.headerRowInnerTableHeaderCol {
    padding: 5px;
    border-right: 1px solid #dedede;
}

.headerRowInnerTableHeaderCol:last-child {
    border-right: 0;
}

.headerRowInnerTableRow {
    border-right: 1px solid #dedede;
    border-left: 1px solid #dedede;
    border-bottom: 1px solid #dedede;
}

.headerRowInnerTableRowCol {
    padding: 5px;
    border-right: 1px solid #dedede;
}

.headerRowInnerTableRowCol:last-child {
    border-right: 0;
}

.vaccinationDetailsContainer {
    padding: 0;
}

.vaccinationDetailsCell {
    padding: 5px;
}

.vaccinationDetailsCellTitle {
    font-weight: bold;
}

.vaccinationDetailsCellUnderlined {
    text-decoration: underline;
}

.bodyRowInner {
    background-color: white;
    padding-bottom: 15px;
    padding-top: 15px;
}

.elgaDocument {
    margin-top: 1rem;
    padding: 0 0 0 0px;
}

.vaccinationHistoryTitle {
    margin-top: 1rem;
    margin-bottom: 0px;
}

.vaccinationHistoryContainer {
    padding: 10px 15px 15px 15px;
}

.vaccinationGroupEntryDetailPanel {
    padding-left: 15px;
}

.even {
    background-color: #efefef;
}

.odd {
    background-color: white;
}

.logoContainer {
    padding: 0px;
}

.keySetIcon {
    width: 15px;
}

.keySetBody {
    margin-left: 0.5em;
}

.keySetCol {
    margin-top: 0.2em;
}

.documentInformationPanel {
    margin-bottom: 0.2rem;
}

@media (min-width: 768px) {
    .keySetRow {
        margin-top: 0.2em;
    }

    .keySetCol {
        margin-top: 0em;
    }

    .documentInformationPanel {
        margin-bottom: 1em;
    }
}

html {
    font-size: 62.5%;
}

body {
    font-size: 1.4rem;
    line-height: 1.2;
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    margin: 0 0 0 0px;
    font-weight: normal;
    line-height: normal;
}

a {
    color: #004A8D;
}

a:hover {
    text-decoration: underline;
}

.btn:focus,.btn:active:focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn.active.focus {
    outline:none;
    box-shadow:none;
}

.textXLarge {
    font-size: 2.2rem;
}

.textLarge {
    font-size: 1.5rem;
}

.textVaccinationTitle {
    font-size: 1.35rem;
}

.textNormal {
    font-size: 1.2rem;
}

.textSmall {
    font-size: 1.1rem;
}

.marginBottom {
    margin-bottom: 0.5rem;
}

.my-center {
    align-self: center;
}

.generalVaccinations {
    padding: 0 0 0 0px;
}

.vaccinationGuidance {
    margin-top: 1rem;
    margin-bottom: 0px;
}

.comment {
    margin-top: 0.3rem;
    margin-bottom: 0rem;
}

.banner {
    padding: 12px;
    font-size: 1.5rem;
    background-color: #fcbd00;
    text-align: center;
    margin-top: 1rem;
}
/* blue arrow up */
button.accordionButton, .documentInformationContainer button.accordionButton:hover, .modalSectionHeaderContainer button.accordionButton:hover {
    display: block;
    float: right;
    height: 20px;
    width: 20px;
    background: url("data:image/png;base64,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") no-repeat center;
    box-shadow: none;
    background-size: contain;
}

/* grey arrow up */
button.accordionButton:hover, .patientContainer button.accordionButton:hover {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

/* blue arrow down */
button.accordionButton.collapsed, .documentInformationContainer button.accordionButton.collapsed:hover, .modalSectionHeaderContainer button.accordionButton.collapsed:hover, .documentInformationEntryContainer button.accordionButton.collapsed {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

/* grey arrow down */
button.accordionButton.collapsed:hover, .patientContainer button.accordionButton.collapsed:hover {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

/* white arrow up */
.patientContainer button.accordionButton, .documentInformationContainer button.accordionButton, .modalSectionHeaderContainer button.accordionButton {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

/* white arrow down */
.patientContainer button.accordionButton.collapsed, .documentInformationContainer button.accordionButton.collapsed, .modalSectionHeaderContainer button.accordionButton.collapsed {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

.patientContainer button.accordionButton {
    margin: 5px 15px 5px 15px;
}

.vaccinationGroupRow button.accordionButton {
    margin: 0px 15px 0px 15px;
}

.headerRowInnerTableRow  button.accordionButton {
    margin: 0px 8px 0px 15px;
}

.modalVaccinationButtonGroup {
    margin: 0px 10px 0px 0px;
}
.infoButton {
    height: 20px;
    width: 20px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAGWGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEzLTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0ZURhdGU9IjIwMTktMDUtMDJUMTM6MzA6MjkrMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE5LTA1LTAyVDE0OjM2OjEwKzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE5LTA1LTAyVDE0OjM2OjEwKzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5NjYtMi4xIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjA0ZDM2ZWJjLTRiYzktN2M0MS05ZmM5LTg5OTUzNDk1YjU1ZSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDplODM0MzI4Mi04YWVjLWYzNDUtYmUyMy1iNzNjZjAxZTZjN2QiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDplODM0MzI4Mi04YWVjLWYzNDUtYmUyMy1iNzNjZjAxZTZjN2QiPiA8cGhvdG9zaG9wOkRvY3VtZW50QW5jZXN0b3JzPiA8cmRmOkJhZz4gPHJkZjpsaT54bXAuZGlkOjVmOGEyYmJlLTJkYTUtYWU0ZC1hYTA5LTIzMTJkNzE2NjZhNzwvcmRmOmxpPiA8L3JkZjpCYWc+IDwvcGhvdG9zaG9wOkRvY3VtZW50QW5jZXN0b3JzPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDplODM0MzI4Mi04YWVjLWYzNDUtYmUyMy1iNzNjZjAxZTZjN2QiIHN0RXZ0OndoZW49IjIwMTktMDUtMDJUMTM6NDc6MDgrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MDRkMzZlYmMtNGJjOS03YzQxLTlmYzktODk5NTM0OTViNTVlIiBzdEV2dDp3aGVuPSIyMDE5LTA1LTAyVDE0OjM2OjEwKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+D845xwAAAVlJREFUSMfFlj1Ow0AQhT9RUKSJlC7JdRyacBrokgOEksoJMfdIFZEiEnROgXONxE2QoDDNLBot9u6YgBjJsjz73rz9mdkx/LNdAAmQAjlwACp55+JPBNfaroFCAsaeQvAmuwQWXoA3YA3cA3fyXotf4xbCDwZfKcIBuAW6DfguMAWOirMKiSwV8BkYGlc9FLzjZnWgsQK8AJ0ajN4O3zrCc+NjP1teZaAEBg0zDQkgvFId/Fd2JYo4CWxFTADhO8zIOVNxfAC9M2unB7xLvNQ5d+LY/FKBPkm83DlchS6N21NFBFw2Hn3yLEK0Csx8nGUFnLMC6xlYBb6dwdyYRRaB2iz6qzq40pVcqEru/1Cg31TJlruoiqRq8C5ylinANnAn1c18q7iPbfrBTaQfTFSaR/uBE8m8rTg1dLSTh3uIBfd78t7Yk/dterLfJ0ZSJzuVIaV8z2N/FZ/gXMS7gq7hNgAAAABJRU5ErkJggg==") no-repeat;
    background-size: contain;
    margin-left: 5px;
}

.infoButton:hover {
    background: url("data:image/png;base64,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") no-repeat;
    background-size: contain;
}
.patientPanel {
    margin-top: 1rem;
}

.patientContainer {
    padding: 7px 0px 7px 15px;
}

.patientDetailsContainer {
    padding-top: 15px;
    padding-bottom: 15px;
}

.sectionHeaderContainer {
    background-color: #666666;
    color: white;
    padding-top: 8px;
    padding-bottom: 8px;
    margin-top: 1rem;
}

.sectionAdditionalInformationContainer {
    background-color: grey;
    color: white;
    padding-top: 8px;
    padding-bottom: 8px;
    margin-top: 1rem;
}

.tableHeaderContainer {
    background-color: #dcdcdc;
    margin-top: 0.3rem;
    margin-bottom: 0.3rem;
    border-bottom: 1px solid black;
}

.tableHeaderCol {
    border-right: 0.2rem solid white;
}

.tableHeaderCol:last-child {
    border-right: 0;
}

.vaccinationRowContainer {
    padding: 7px 15px 7px 15px;
    background-color: #f2f2f2;
}

.vaccinationRowGroupContainer {
    background-color: white;
    padding: 0px 15px 0px 15px;
}

.vaccinationGroupEntryContainer {
    background-color: #f2f2f2;
    padding: 7px 0px 7px 15px;
    margin-bottom: 0.2em;
    margin-top: 0.2em;
}

.documentInformationEntryContainer .row:nth-child(2n) {
    background-color: #efefef;
}

.documentInformationEntryContainer .row:nth-child(2n+1) {
    border-top: 1px solid black;
    border-bottom: 1px solid black;
}

.documentInformationEntryContainer .row:first-child {
    border-top: 0px none;
}

.documentInformationEntryContainer .row {
    padding-top: 10px;
    padding-bottom: 10px;
    min-height: 40px; /* used for rows without expand arrow */
}

.sectionRowHeight {
    height: 35px;
}

.groupPanel {
    border: 1px solid #dedede;
}
.modal.fade.modal-right .modal-dialog {
    transform: translate(125%, 0px);
}

.modal.show.modal-right .modal-dialog {
    transform: none;
}

.modal-header {
    border-bottom: 0px none;
    padding: 15px;
}

.modal-body {
    padding: 0 0 0 0em;
}

.modalRow {
    padding-top: 15px;
    padding-bottom: 15px;
    background: white;
}

.modalRow:nth-child(2n+1) {
    background-color: #efefef;
}

.modalDivider {
    margin-top: 0.5rem;
}

.modalDividerLarge {
    margin-top: 15px;
}

.modalCloseButton {
    height: 20px;
    width: 20px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAQAAAACj/OVAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA82lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjardA/SgNBHMXx70TULloE67mAgmu15eQPi2ARYopsqkxmBw1hd4fZn3/2Bh7B43iDFIIXUVJbqARLwU/1eM2DB+rZDPujzjGUlcRsYvJZPteHGw7YAwDrmmDG4yuAqq48vynYvqEAXk/NsD/ib/ZdiAK8AEnhGwd8AKsHCQJqAfSW6yCgBOitp5MBqCegK/5RAAZ1aOPq5lb0eZqm2hT10uvrthFfNvqycnUMdbTiC+B7A+Aoi7bVmS1Lq5OzhH83y+f6K71PUYA62ey6HXcX73/+7FzAJ0sbODDOTdGSAAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAFGSURBVHjaxNm7DoIwFAbgP07E+DpdmFh8X3Q0OhgX34cEiYPHgXhBOdDac347NiEfKW3PBeAxVtghwGME7LH6nFziDEHjQAY0EJyxHHInCMSB7DmB4PQiiydnTb64nix67vA2aUkOOYHggAKoPyatyG9OIKiBCp0DWY5yHSpAJ8sMrtU5nWx/JGc5WzKKsyOjORsyicsnk7k8shrl2mnu9wez1iZ9abK/fhppsr/jSbMTHEea3lHzpO2VOEvaX/qT5NolrE2QV6fArQZTN05PF9y4GNIho50iG5+cXSOTuIXBi9xcKhL2kpI3DflYBO7BD0rSfvG6SbUawaUmIYcncgAmpxjkJIqcJpITYXKqTy5myOUauSAll9zkpgK5bUJuDK2dWl8quXWK3ePkxrN9WY63L+kN2j+0oP/QZO9/IxwZvxHuAwDe9Cnc4Zvo9QAAAABJRU5ErkJggg==") no-repeat;
    background-size: contain;
}

.modalCloseButton:hover {
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAYAAACohjseAAAACXBIWXMAAAsTAAALEwEAmpwYAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAAq1JREFUeNrU2rFr20AUx/GvHy2xReh/EwohgzFJ5JKlU/tXdOjcIdq65s/I1KUEInCNKSYQ+u8YxVlKh96BEJasd6eTTm89c9aHk3T2791kdn1LpU6BH8A34A+RV5FnJGl2BnwHPhZ5tiuPTyrABFgD74EdsBgB8sxc8ynwDCyKPCvsoFRwucHZlVybCcaAw1x7nqRZUgVODe7iwO0aK7KKs3VhkFMLnAIPB3AxI+twZeRDkmZTAe7Ns9ZUMSGP4WwtgHsB7oDXFhPHgDxvicOY7gTYAEsl8nwg3EqBWxZ5trEvGS1y1TPS4mYaXHWb0CBnPSKdcVVgjEgv3CFgTEhvXB0wBmQnuCbgkMi5AvfShDsGLCNfFMi5J+5RgbtswrUBWuSlAvnoiLS4k7Y44OnYB6Xllz8pkCcOyCA4DTAkMhhOCwyBDIpzAXaJDI5zBXaB1OB2rjgfoA/ySolbuOIA3nhuyhbZZmO2SAHeKnBeoZfgXxa5a7mSveG6AlrkoiWyN1yXQMwF+SI7z2K7BPoigwTNXQNdkcFS9BBAl/obauIQwLa5ZbneESiSlAhwtoLkrhIJLhhSIsIFQUrPuFdg3yfSF6jtFSyBD/TYCxFP3EqJ29BzL0Q8cTMlzpYW6RxJygA4F6Rz7ioD4XpDyoC4XpAyMC44sg1wjrJXoMQFRUoLnKpX4IirIlv3QpI0m7sCLS5oblmDVPVCmpASGa6c8agiyTqkRIjrFCmR4jpDSsS4TpDigNv1iPNGTmbXt1fAT3S9gqHOkKp/cAjwZSQ4l5X8KsAn858rdlwVeSx3XQOfxUQIN8B2BLgysilc3gI3RZ7t7UtmD6QHkDGf265L0LdAWuTZvrpNFAb5PAJcHfLZ4Iq6jb4w9/dvxnHiniLPLPIX/w8GFeXxfwMA735UOvDhifUAAAAASUVORK5CYII=") no-repeat;
    background-size: contain;
}

button.modalVaccinationButton {
    display: block;
    float: right;
    height: 20px;
    width: 20px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAABQCAYAAACJUyy4AAAACXBIWXMAAAsTAAALEwEAmpwYAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAAkBJREFUeNrU27tu1EAUgOHfZ7eBl6KDmiISQiLQ5AKEjpQI90kXbgpNhKKAREG9RSR4qe1WS2NL1spe2zNz5pyZJpf1KN9vry9aO9WDxx/ZMx4B/1Ac61UdPFcGfl8B18Bf4AinYzkAvwEOm5+vm6/fveFlBE4n4Mjzmq+AO+DZwLLutkC75hcjcJdbYNnAfwNPJ85xswUEOJ0B7wa88YD/BvwJmPvZ+i0kwAY4CAww3QfaHbbIgO5xvriA3ZNUUQF91zaxAWeW+NiAq1wBsuc19wEy8rrrAJmwjNsAmbicywCZsay7AJm5vKsACZjjJkAC57kIkIi55gESOd80QBJsvaiAh0/qM0t8ioD3lvjYgIuQgJT47AGp8VkDNPDZArTwWQI08eoB2njVgBx4tYBceJWAnPjkAbnxSQMs8MkCqpFbmdpjAdwyfkemb3wQbMcmYu7SEl8BPwPX+uV6VddiCL+LgJ9b7bBJ4Bb4GHjdhUP/7XuP8PP1qr60OsMmh+fCq8Bz4BdacO33/NzHAmbBNde8OlwLnwWugc8GT43PCk+Jzw5PhTeBpzhUxsDfAZ9i/riUCo/Bm8ND8S7gIXg38Ll4V/A5eHfwqXiX8Cl4t/AxvGv4Prx7+NDlQQz8mIwPSEup8F18UfAuvjh4iy8S3uJfB8LfYvzfCwJ8Zf7tlWPgC8aj+/D/rxLeKn077AZ4PiHADXz3ULkdCXAF7ztJtQE/vMOHLg+2wKvm+xfAiUf4vo8+tsDLZgvc43T8HwDQkPIHsrwzIgAAAABJRU5ErkJggg==") no-repeat center;
    background-size: contain;
}

button.modalVaccinationButton:hover {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: contain;
}

.modalSectionHeaderContainer {
    background-color: #666666;
    color: white;
    padding-top: 15px;
    padding-bottom: 15px;
    padding-left: 0px;
    padding-right: 0px;
}

.modalSectionHeaderRow {
    padding-left: 15px;
    padding-right: 15px;
}

.modalDetailRow {
    padding-top: 15px;
    padding-bottom: 15px;
    background: white;
}

.modalDetailRow:nth-child(2n+1) {
    background-color: #efefef;
}

.modalDetailEntrySection:not(:first-child) {
    margin-top: 0.5rem;
}
.tooltip > .tooltip-inner {
    color: black;
    background-color: white;
    font-size: 1.25rem;
    border: 1px solid black;
    padding: 7px;
}

.tooltip.show {
    opacity: 1;
}
.dropdown-btn {
    width: 100%;
    text-align: left;
    font-size: 1.25rem;
    line-height: normal;
    padding: 0 0 0 0px;
    border: 0px none;
    background: url("data:image/png;base64,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") no-repeat right;
    background-size: 35px;
}

.dropdown-btn:hover {
    background: url("data:image/png;base64,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") no-repeat right;
    background-size: 35px;
}

.dropdown-btn:after {
    display: none;
}

.dropdown-item {
    padding-top: 0.4rem;
    padding-bottom: 0.4rem;
}

.dropdown-item:hover {
    background-color: #aec3e0;
}

.dropdown-menu {
    padding: 0 0 0 0px;
}
.search-btn {
    padding: 3px;
    border: 0px none;
    width: calc(1.5em + .75rem + 2px);;
    height: calc(1.5em + .75rem + 2px);
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: 17px;
}

.search-btn:hover {
    background: url("data:image/png;base64,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") no-repeat center;
    background-size: 17px;
}

.searchBox {
    width: 0px;
    overflow: hidden;
}

.searchField {
    margin-right: 5px;
    width: 100% !important;
}
                </style>

                <xsl:comment> Do NOT edit this HTML directly, it was generated via an XSL transformation from the original release 2 CDA Document. </xsl:comment>
                <title>Elektronischer Impfpass</title>
            </head>
            <body>
                <!-- destinatio for scroll up -->
                <div id="page-top"></div>

                <!-- Begin page content -->
                <main role="main" class="container elgaDocument">

                    <xsl:call-template name="header" />
                    
                    <xsl:call-template name="bannerBox" />

                    <xsl:call-template name="patientHeaderBox" />

                    <!-- general vaccinations -->
                    <xsl:call-template name="renderSectionHeader">
                        <xsl:with-param name="header" select="'Impfungen lt. nationalem Impfplan'" />
                        <xsl:with-param name="section" select="'general'" />
                    </xsl:call-template>
                    <xsl:call-template name="renderHeader">
                        <xsl:with-param name="section" select="'general'" />
                    </xsl:call-template>
                    <div class="container generalVaccinations">
                        <xsl:call-template name="renderImmunizationEntries">
                            <xsl:with-param name="section" select="'general'" />
                        </xsl:call-template>
                    </div>

                    <!-- travel vaccinations -->
                    <xsl:variable name="hasTravelVaccinations">
                        <xsl:call-template name="hasTravelVaccinations" />
                    </xsl:variable>
                    <xsl:if test="$hasTravelVaccinations='true'">
                        <xsl:call-template name="renderSectionHeader">
                            <xsl:with-param name="header" select="'Durchgeführte Reiseimpfungen'" />
                            <xsl:with-param name="section" select="'travel'" />
                        </xsl:call-template>
                        <xsl:call-template name="renderHeader">
                            <xsl:with-param name="section" select="'travel'" />
                        </xsl:call-template>
                        <xsl:call-template name="renderImmunizationEntries">
                            <xsl:with-param name="section" select="'travel'" />
                        </xsl:call-template>
                    </xsl:if>

                    <!-- other vaccinations -->
                    <xsl:variable name="hasOtherVaccinations">
                        <xsl:call-template name="hasOtherVaccinations" />
                    </xsl:variable>
                    <xsl:if test="$hasOtherVaccinations='true'">
                        <xsl:call-template name="renderSectionHeader">
                            <xsl:with-param name="header" select="'Weitere durchgeführte Impfungen'" />
                            <xsl:with-param name="section" select="'other'" />
                        </xsl:call-template>
                        <xsl:call-template name="renderOtherHeader">
                            <xsl:with-param name="section" select="'other'" />
                        </xsl:call-template>
                        <xsl:call-template name="renderImmunizationEntries">
                            <xsl:with-param name="section" select="'other'" />
                        </xsl:call-template>
                    </xsl:if>

                    <!-- document information -->
                    <xsl:call-template name="renderDocumentInformation" />

                    <!-- keysets on mobile -->
                    <xsl:call-template name="renderKeySetsBottom" />
                </main>

                <script type="text/javascript">
                    //<![CDATA[

/*! jQuery v3.3.1 | (c) JS Foundation and other contributors | jquery.org/license */
!function(e,t){"use strict";"object"==typeof module&&"object"==typeof module.exports?module.exports=e.document?t(e,!0):function(e){if(!e.document)throw new Error("jQuery requires a window with a document");return t(e)}:t(e)}("undefined"!=typeof window?window:this,function(e,t){"use strict";var n=[],r=e.document,i=Object.getPrototypeOf,o=n.slice,a=n.concat,s=n.push,u=n.indexOf,l={},c=l.toString,f=l.hasOwnProperty,p=f.toString,d=p.call(Object),h={},g=function e(t){return"function"==typeof t&&"number"!=typeof t.nodeType},y=function e(t){return null!=t&&t===t.window},v={type:!0,src:!0,noModule:!0};function m(e,t,n){var i,o=(t=t||r).createElement("script");if(o.text=e,n)for(i in v)n[i]&&(o[i]=n[i]);t.head.appendChild(o).parentNode.removeChild(o)}function x(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?l[c.call(e)]||"object":typeof e}var b="3.3.1",w=function(e,t){return new w.fn.init(e,t)},T=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;w.fn=w.prototype={jquery:"3.3.1",constructor:w,length:0,toArray:function(){return o.call(this)},get:function(e){return null==e?o.call(this):e<0?this[e+this.length]:this[e]},pushStack:function(e){var t=w.merge(this.constructor(),e);return t.prevObject=this,t},each:function(e){return w.each(this,e)},map:function(e){return this.pushStack(w.map(this,function(t,n){return e.call(t,n,t)}))},slice:function(){return this.pushStack(o.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(e){var t=this.length,n=+e+(e<0?t:0);return this.pushStack(n>=0&&n<t?[this[n]]:[])},end:function(){return this.prevObject||this.constructor()},push:s,sort:n.sort,splice:n.splice},w.extend=w.fn.extend=function(){var e,t,n,r,i,o,a=arguments[0]||{},s=1,u=arguments.length,l=!1;for("boolean"==typeof a&&(l=a,a=arguments[s]||{},s++),"object"==typeof a||g(a)||(a={}),s===u&&(a=this,s--);s<u;s++)if(null!=(e=arguments[s]))for(t in e)n=a[t],a!==(r=e[t])&&(l&&r&&(w.isPlainObject(r)||(i=Array.isArray(r)))?(i?(i=!1,o=n&&Array.isArray(n)?n:[]):o=n&&w.isPlainObject(n)?n:{},a[t]=w.extend(l,o,r)):void 0!==r&&(a[t]=r));return a},w.extend({expando:"jQuery"+("3.3.1"+Math.random()).replace(/\D/g,""),isReady:!0,error:function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e){var t,n;return!(!e||"[object Object]"!==c.call(e))&&(!(t=i(e))||"function"==typeof(n=f.call(t,"constructor")&&t.constructor)&&p.call(n)===d)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},globalEval:function(e){m(e)},each:function(e,t){var n,r=0;if(C(e)){for(n=e.length;r<n;r++)if(!1===t.call(e[r],r,e[r]))break}else for(r in e)if(!1===t.call(e[r],r,e[r]))break;return e},trim:function(e){return null==e?"":(e+"").replace(T,"")},makeArray:function(e,t){var n=t||[];return null!=e&&(C(Object(e))?w.merge(n,"string"==typeof e?[e]:e):s.call(n,e)),n},inArray:function(e,t,n){return null==t?-1:u.call(t,e,n)},merge:function(e,t){for(var n=+t.length,r=0,i=e.length;r<n;r++)e[i++]=t[r];return e.length=i,e},grep:function(e,t,n){for(var r,i=[],o=0,a=e.length,s=!n;o<a;o++)(r=!t(e[o],o))!==s&&i.push(e[o]);return i},map:function(e,t,n){var r,i,o=0,s=[];if(C(e))for(r=e.length;o<r;o++)null!=(i=t(e[o],o,n))&&s.push(i);else for(o in e)null!=(i=t(e[o],o,n))&&s.push(i);return a.apply([],s)},guid:1,support:h}),"function"==typeof Symbol&&(w.fn[Symbol.iterator]=n[Symbol.iterator]),w.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "),function(e,t){l["[object "+t+"]"]=t.toLowerCase()});function C(e){var t=!!e&&"length"in e&&e.length,n=x(e);return!g(e)&&!y(e)&&("array"===n||0===t||"number"==typeof t&&t>0&&t-1 in e)}var E=function(e){var t,n,r,i,o,a,s,u,l,c,f,p,d,h,g,y,v,m,x,b="sizzle"+1*new Date,w=e.document,T=0,C=0,E=ae(),k=ae(),S=ae(),D=function(e,t){return e===t&&(f=!0),0},N={}.hasOwnProperty,A=[],j=A.pop,q=A.push,L=A.push,H=A.slice,O=function(e,t){for(var n=0,r=e.length;n<r;n++)if(e[n]===t)return n;return-1},P="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",M="[\\x20\\t\\r\\n\\f]",R="(?:\\\\.|[\\w-]|[^\0-\\xa0])+",I="\\["+M+"*("+R+")(?:"+M+"*([*^$|!~]?=)"+M+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+R+"))|)"+M+"*\\]",W=":("+R+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+I+")*)|.*)\\)|)",$=new RegExp(M+"+","g"),B=new RegExp("^"+M+"+|((?:^|[^\\\\])(?:\\\\.)*)"+M+"+$","g"),F=new RegExp("^"+M+"*,"+M+"*"),_=new RegExp("^"+M+"*([>+~]|"+M+")"+M+"*"),z=new RegExp("="+M+"*([^\\]'\"]*?)"+M+"*\\]","g"),X=new RegExp(W),U=new RegExp("^"+R+"$"),V={ID:new RegExp("^#("+R+")"),CLASS:new RegExp("^\\.("+R+")"),TAG:new RegExp("^("+R+"|[*])"),ATTR:new RegExp("^"+I),PSEUDO:new RegExp("^"+W),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+M+"*(even|odd|(([+-]|)(\\d*)n|)"+M+"*(?:([+-]|)"+M+"*(\\d+)|))"+M+"*\\)|)","i"),bool:new RegExp("^(?:"+P+")$","i"),needsContext:new RegExp("^"+M+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+M+"*((?:-\\d)?\\d*)"+M+"*\\)|)(?=[^-]|$)","i")},G=/^(?:input|select|textarea|button)$/i,Y=/^h\d$/i,Q=/^[^{]+\{\s*\[native \w/,J=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,K=/[+~]/,Z=new RegExp("\\\\([\\da-f]{1,6}"+M+"?|("+M+")|.)","ig"),ee=function(e,t,n){var r="0x"+t-65536;return r!==r||n?t:r<0?String.fromCharCode(r+65536):String.fromCharCode(r>>10|55296,1023&r|56320)},te=/([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,ne=function(e,t){return t?"\0"===e?"\ufffd":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1).toString(16)+" ":"\\"+e},re=function(){p()},ie=me(function(e){return!0===e.disabled&&("form"in e||"label"in e)},{dir:"parentNode",next:"legend"});try{L.apply(A=H.call(w.childNodes),w.childNodes),A[w.childNodes.length].nodeType}catch(e){L={apply:A.length?function(e,t){q.apply(e,H.call(t))}:function(e,t){var n=e.length,r=0;while(e[n++]=t[r++]);e.length=n-1}}}function oe(e,t,r,i){var o,s,l,c,f,h,v,m=t&&t.ownerDocument,T=t?t.nodeType:9;if(r=r||[],"string"!=typeof e||!e||1!==T&&9!==T&&11!==T)return r;if(!i&&((t?t.ownerDocument||t:w)!==d&&p(t),t=t||d,g)){if(11!==T&&(f=J.exec(e)))if(o=f[1]){if(9===T){if(!(l=t.getElementById(o)))return r;if(l.id===o)return r.push(l),r}else if(m&&(l=m.getElementById(o))&&x(t,l)&&l.id===o)return r.push(l),r}else{if(f[2])return L.apply(r,t.getElementsByTagName(e)),r;if((o=f[3])&&n.getElementsByClassName&&t.getElementsByClassName)return L.apply(r,t.getElementsByClassName(o)),r}if(n.qsa&&!S[e+" "]&&(!y||!y.test(e))){if(1!==T)m=t,v=e;else if("object"!==t.nodeName.toLowerCase()){(c=t.getAttribute("id"))?c=c.replace(te,ne):t.setAttribute("id",c=b),s=(h=a(e)).length;while(s--)h[s]="#"+c+" "+ve(h[s]);v=h.join(","),m=K.test(e)&&ge(t.parentNode)||t}if(v)try{return L.apply(r,m.querySelectorAll(v)),r}catch(e){}finally{c===b&&t.removeAttribute("id")}}}return u(e.replace(B,"$1"),t,r,i)}function ae(){var e=[];function t(n,i){return e.push(n+" ")>r.cacheLength&&delete t[e.shift()],t[n+" "]=i}return t}function se(e){return e[b]=!0,e}function ue(e){var t=d.createElement("fieldset");try{return!!e(t)}catch(e){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function le(e,t){var n=e.split("|"),i=n.length;while(i--)r.attrHandle[n[i]]=t}function ce(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&e.sourceIndex-t.sourceIndex;if(r)return r;if(n)while(n=n.nextSibling)if(n===t)return-1;return e?1:-1}function fe(e){return function(t){return"input"===t.nodeName.toLowerCase()&&t.type===e}}function pe(e){return function(t){var n=t.nodeName.toLowerCase();return("input"===n||"button"===n)&&t.type===e}}function de(e){return function(t){return"form"in t?t.parentNode&&!1===t.disabled?"label"in t?"label"in t.parentNode?t.parentNode.disabled===e:t.disabled===e:t.isDisabled===e||t.isDisabled!==!e&&ie(t)===e:t.disabled===e:"label"in t&&t.disabled===e}}function he(e){return se(function(t){return t=+t,se(function(n,r){var i,o=e([],n.length,t),a=o.length;while(a--)n[i=o[a]]&&(n[i]=!(r[i]=n[i]))})})}function ge(e){return e&&"undefined"!=typeof e.getElementsByTagName&&e}n=oe.support={},o=oe.isXML=function(e){var t=e&&(e.ownerDocument||e).documentElement;return!!t&&"HTML"!==t.nodeName},p=oe.setDocument=function(e){var t,i,a=e?e.ownerDocument||e:w;return a!==d&&9===a.nodeType&&a.documentElement?(d=a,h=d.documentElement,g=!o(d),w!==d&&(i=d.defaultView)&&i.top!==i&&(i.addEventListener?i.addEventListener("unload",re,!1):i.attachEvent&&i.attachEvent("onunload",re)),n.attributes=ue(function(e){return e.className="i",!e.getAttribute("className")}),n.getElementsByTagName=ue(function(e){return e.appendChild(d.createComment("")),!e.getElementsByTagName("*").length}),n.getElementsByClassName=Q.test(d.getElementsByClassName),n.getById=ue(function(e){return h.appendChild(e).id=b,!d.getElementsByName||!d.getElementsByName(b).length}),n.getById?(r.filter.ID=function(e){var t=e.replace(Z,ee);return function(e){return e.getAttribute("id")===t}},r.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&g){var n=t.getElementById(e);return n?[n]:[]}}):(r.filter.ID=function(e){var t=e.replace(Z,ee);return function(e){var n="undefined"!=typeof e.getAttributeNode&&e.getAttributeNode("id");return n&&n.value===t}},r.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&g){var n,r,i,o=t.getElementById(e);if(o){if((n=o.getAttributeNode("id"))&&n.value===e)return[o];i=t.getElementsByName(e),r=0;while(o=i[r++])if((n=o.getAttributeNode("id"))&&n.value===e)return[o]}return[]}}),r.find.TAG=n.getElementsByTagName?function(e,t){return"undefined"!=typeof t.getElementsByTagName?t.getElementsByTagName(e):n.qsa?t.querySelectorAll(e):void 0}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){while(n=o[i++])1===n.nodeType&&r.push(n);return r}return o},r.find.CLASS=n.getElementsByClassName&&function(e,t){if("undefined"!=typeof t.getElementsByClassName&&g)return t.getElementsByClassName(e)},v=[],y=[],(n.qsa=Q.test(d.querySelectorAll))&&(ue(function(e){h.appendChild(e).innerHTML="<a id='"+b+"'></a><select id='"+b+"-\r\\' msallowcapture=''><option selected=''></option></select>",e.querySelectorAll("[msallowcapture^='']").length&&y.push("[*^$]="+M+"*(?:''|\"\")"),e.querySelectorAll("[selected]").length||y.push("\\["+M+"*(?:value|"+P+")"),e.querySelectorAll("[id~="+b+"-]").length||y.push("~="),e.querySelectorAll(":checked").length||y.push(":checked"),e.querySelectorAll("a#"+b+"+*").length||y.push(".#.+[+~]")}),ue(function(e){e.innerHTML="<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";var t=d.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("name","D"),e.querySelectorAll("[name=d]").length&&y.push("name"+M+"*[*^$|!~]?="),2!==e.querySelectorAll(":enabled").length&&y.push(":enabled",":disabled"),h.appendChild(e).disabled=!0,2!==e.querySelectorAll(":disabled").length&&y.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),y.push(",.*:")})),(n.matchesSelector=Q.test(m=h.matches||h.webkitMatchesSelector||h.mozMatchesSelector||h.oMatchesSelector||h.msMatchesSelector))&&ue(function(e){n.disconnectedMatch=m.call(e,"*"),m.call(e,"[s!='']:x"),v.push("!=",W)}),y=y.length&&new RegExp(y.join("|")),v=v.length&&new RegExp(v.join("|")),t=Q.test(h.compareDocumentPosition),x=t||Q.test(h.contains)?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)while(t=t.parentNode)if(t===e)return!0;return!1},D=t?function(e,t){if(e===t)return f=!0,0;var r=!e.compareDocumentPosition-!t.compareDocumentPosition;return r||(1&(r=(e.ownerDocument||e)===(t.ownerDocument||t)?e.compareDocumentPosition(t):1)||!n.sortDetached&&t.compareDocumentPosition(e)===r?e===d||e.ownerDocument===w&&x(w,e)?-1:t===d||t.ownerDocument===w&&x(w,t)?1:c?O(c,e)-O(c,t):0:4&r?-1:1)}:function(e,t){if(e===t)return f=!0,0;var n,r=0,i=e.parentNode,o=t.parentNode,a=[e],s=[t];if(!i||!o)return e===d?-1:t===d?1:i?-1:o?1:c?O(c,e)-O(c,t):0;if(i===o)return ce(e,t);n=e;while(n=n.parentNode)a.unshift(n);n=t;while(n=n.parentNode)s.unshift(n);while(a[r]===s[r])r++;return r?ce(a[r],s[r]):a[r]===w?-1:s[r]===w?1:0},d):d},oe.matches=function(e,t){return oe(e,null,null,t)},oe.matchesSelector=function(e,t){if((e.ownerDocument||e)!==d&&p(e),t=t.replace(z,"='$1']"),n.matchesSelector&&g&&!S[t+" "]&&(!v||!v.test(t))&&(!y||!y.test(t)))try{var r=m.call(e,t);if(r||n.disconnectedMatch||e.document&&11!==e.document.nodeType)return r}catch(e){}return oe(t,d,null,[e]).length>0},oe.contains=function(e,t){return(e.ownerDocument||e)!==d&&p(e),x(e,t)},oe.attr=function(e,t){(e.ownerDocument||e)!==d&&p(e);var i=r.attrHandle[t.toLowerCase()],o=i&&N.call(r.attrHandle,t.toLowerCase())?i(e,t,!g):void 0;return void 0!==o?o:n.attributes||!g?e.getAttribute(t):(o=e.getAttributeNode(t))&&o.specified?o.value:null},oe.escape=function(e){return(e+"").replace(te,ne)},oe.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},oe.uniqueSort=function(e){var t,r=[],i=0,o=0;if(f=!n.detectDuplicates,c=!n.sortStable&&e.slice(0),e.sort(D),f){while(t=e[o++])t===e[o]&&(i=r.push(o));while(i--)e.splice(r[i],1)}return c=null,e},i=oe.getText=function(e){var t,n="",r=0,o=e.nodeType;if(o){if(1===o||9===o||11===o){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=i(e)}else if(3===o||4===o)return e.nodeValue}else while(t=e[r++])n+=i(t);return n},(r=oe.selectors={cacheLength:50,createPseudo:se,match:V,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(Z,ee),e[3]=(e[3]||e[4]||e[5]||"").replace(Z,ee),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||oe.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&oe.error(e[0]),e},PSEUDO:function(e){var t,n=!e[6]&&e[2];return V.CHILD.test(e[0])?null:(e[3]?e[2]=e[4]||e[5]||"":n&&X.test(n)&&(t=a(n,!0))&&(t=n.indexOf(")",n.length-t)-n.length)&&(e[0]=e[0].slice(0,t),e[2]=n.slice(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(Z,ee).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=E[e+" "];return t||(t=new RegExp("(^|"+M+")"+e+"("+M+"|$)"))&&E(e,function(e){return t.test("string"==typeof e.className&&e.className||"undefined"!=typeof e.getAttribute&&e.getAttribute("class")||"")})},ATTR:function(e,t,n){return function(r){var i=oe.attr(r,e);return null==i?"!="===t:!t||(i+="","="===t?i===n:"!="===t?i!==n:"^="===t?n&&0===i.indexOf(n):"*="===t?n&&i.indexOf(n)>-1:"$="===t?n&&i.slice(-n.length)===n:"~="===t?(" "+i.replace($," ")+" ").indexOf(n)>-1:"|="===t&&(i===n||i.slice(0,n.length+1)===n+"-"))}},CHILD:function(e,t,n,r,i){var o="nth"!==e.slice(0,3),a="last"!==e.slice(-4),s="of-type"===t;return 1===r&&0===i?function(e){return!!e.parentNode}:function(t,n,u){var l,c,f,p,d,h,g=o!==a?"nextSibling":"previousSibling",y=t.parentNode,v=s&&t.nodeName.toLowerCase(),m=!u&&!s,x=!1;if(y){if(o){while(g){p=t;while(p=p[g])if(s?p.nodeName.toLowerCase()===v:1===p.nodeType)return!1;h=g="only"===e&&!h&&"nextSibling"}return!0}if(h=[a?y.firstChild:y.lastChild],a&&m){x=(d=(l=(c=(f=(p=y)[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]||[])[0]===T&&l[1])&&l[2],p=d&&y.childNodes[d];while(p=++d&&p&&p[g]||(x=d=0)||h.pop())if(1===p.nodeType&&++x&&p===t){c[e]=[T,d,x];break}}else if(m&&(x=d=(l=(c=(f=(p=t)[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]||[])[0]===T&&l[1]),!1===x)while(p=++d&&p&&p[g]||(x=d=0)||h.pop())if((s?p.nodeName.toLowerCase()===v:1===p.nodeType)&&++x&&(m&&((c=(f=p[b]||(p[b]={}))[p.uniqueID]||(f[p.uniqueID]={}))[e]=[T,x]),p===t))break;return(x-=i)===r||x%r==0&&x/r>=0}}},PSEUDO:function(e,t){var n,i=r.pseudos[e]||r.setFilters[e.toLowerCase()]||oe.error("unsupported pseudo: "+e);return i[b]?i(t):i.length>1?(n=[e,e,"",t],r.setFilters.hasOwnProperty(e.toLowerCase())?se(function(e,n){var r,o=i(e,t),a=o.length;while(a--)e[r=O(e,o[a])]=!(n[r]=o[a])}):function(e){return i(e,0,n)}):i}},pseudos:{not:se(function(e){var t=[],n=[],r=s(e.replace(B,"$1"));return r[b]?se(function(e,t,n,i){var o,a=r(e,null,i,[]),s=e.length;while(s--)(o=a[s])&&(e[s]=!(t[s]=o))}):function(e,i,o){return t[0]=e,r(t,null,o,n),t[0]=null,!n.pop()}}),has:se(function(e){return function(t){return oe(e,t).length>0}}),contains:se(function(e){return e=e.replace(Z,ee),function(t){return(t.textContent||t.innerText||i(t)).indexOf(e)>-1}}),lang:se(function(e){return U.test(e||"")||oe.error("unsupported lang: "+e),e=e.replace(Z,ee).toLowerCase(),function(t){var n;do{if(n=g?t.lang:t.getAttribute("xml:lang")||t.getAttribute("lang"))return(n=n.toLowerCase())===e||0===n.indexOf(e+"-")}while((t=t.parentNode)&&1===t.nodeType);return!1}}),target:function(t){var n=e.location&&e.location.hash;return n&&n.slice(1)===t.id},root:function(e){return e===h},focus:function(e){return e===d.activeElement&&(!d.hasFocus||d.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:de(!1),disabled:de(!0),checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,!0===e.selected},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeType<6)return!1;return!0},parent:function(e){return!r.pseudos.empty(e)},header:function(e){return Y.test(e.nodeName)},input:function(e){return G.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||"text"===t.toLowerCase())},first:he(function(){return[0]}),last:he(function(e,t){return[t-1]}),eq:he(function(e,t,n){return[n<0?n+t:n]}),even:he(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:he(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:he(function(e,t,n){for(var r=n<0?n+t:n;--r>=0;)e.push(r);return e}),gt:he(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}}).pseudos.nth=r.pseudos.eq;for(t in{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})r.pseudos[t]=fe(t);for(t in{submit:!0,reset:!0})r.pseudos[t]=pe(t);function ye(){}ye.prototype=r.filters=r.pseudos,r.setFilters=new ye,a=oe.tokenize=function(e,t){var n,i,o,a,s,u,l,c=k[e+" "];if(c)return t?0:c.slice(0);s=e,u=[],l=r.preFilter;while(s){n&&!(i=F.exec(s))||(i&&(s=s.slice(i[0].length)||s),u.push(o=[])),n=!1,(i=_.exec(s))&&(n=i.shift(),o.push({value:n,type:i[0].replace(B," ")}),s=s.slice(n.length));for(a in r.filter)!(i=V[a].exec(s))||l[a]&&!(i=l[a](i))||(n=i.shift(),o.push({value:n,type:a,matches:i}),s=s.slice(n.length));if(!n)break}return t?s.length:s?oe.error(e):k(e,u).slice(0)};function ve(e){for(var t=0,n=e.length,r="";t<n;t++)r+=e[t].value;return r}function me(e,t,n){var r=t.dir,i=t.next,o=i||r,a=n&&"parentNode"===o,s=C++;return t.first?function(t,n,i){while(t=t[r])if(1===t.nodeType||a)return e(t,n,i);return!1}:function(t,n,u){var l,c,f,p=[T,s];if(u){while(t=t[r])if((1===t.nodeType||a)&&e(t,n,u))return!0}else while(t=t[r])if(1===t.nodeType||a)if(f=t[b]||(t[b]={}),c=f[t.uniqueID]||(f[t.uniqueID]={}),i&&i===t.nodeName.toLowerCase())t=t[r]||t;else{if((l=c[o])&&l[0]===T&&l[1]===s)return p[2]=l[2];if(c[o]=p,p[2]=e(t,n,u))return!0}return!1}}function xe(e){return e.length>1?function(t,n,r){var i=e.length;while(i--)if(!e[i](t,n,r))return!1;return!0}:e[0]}function be(e,t,n){for(var r=0,i=t.length;r<i;r++)oe(e,t[r],n);return n}function we(e,t,n,r,i){for(var o,a=[],s=0,u=e.length,l=null!=t;s<u;s++)(o=e[s])&&(n&&!n(o,r,i)||(a.push(o),l&&t.push(s)));return a}function Te(e,t,n,r,i,o){return r&&!r[b]&&(r=Te(r)),i&&!i[b]&&(i=Te(i,o)),se(function(o,a,s,u){var l,c,f,p=[],d=[],h=a.length,g=o||be(t||"*",s.nodeType?[s]:s,[]),y=!e||!o&&t?g:we(g,p,e,s,u),v=n?i||(o?e:h||r)?[]:a:y;if(n&&n(y,v,s,u),r){l=we(v,d),r(l,[],s,u),c=l.length;while(c--)(f=l[c])&&(v[d[c]]=!(y[d[c]]=f))}if(o){if(i||e){if(i){l=[],c=v.length;while(c--)(f=v[c])&&l.push(y[c]=f);i(null,v=[],l,u)}c=v.length;while(c--)(f=v[c])&&(l=i?O(o,f):p[c])>-1&&(o[l]=!(a[l]=f))}}else v=we(v===a?v.splice(h,v.length):v),i?i(null,a,v,u):L.apply(a,v)})}function Ce(e){for(var t,n,i,o=e.length,a=r.relative[e[0].type],s=a||r.relative[" "],u=a?1:0,c=me(function(e){return e===t},s,!0),f=me(function(e){return O(t,e)>-1},s,!0),p=[function(e,n,r){var i=!a&&(r||n!==l)||((t=n).nodeType?c(e,n,r):f(e,n,r));return t=null,i}];u<o;u++)if(n=r.relative[e[u].type])p=[me(xe(p),n)];else{if((n=r.filter[e[u].type].apply(null,e[u].matches))[b]){for(i=++u;i<o;i++)if(r.relative[e[i].type])break;return Te(u>1&&xe(p),u>1&&ve(e.slice(0,u-1).concat({value:" "===e[u-2].type?"*":""})).replace(B,"$1"),n,u<i&&Ce(e.slice(u,i)),i<o&&Ce(e=e.slice(i)),i<o&&ve(e))}p.push(n)}return xe(p)}function Ee(e,t){var n=t.length>0,i=e.length>0,o=function(o,a,s,u,c){var f,h,y,v=0,m="0",x=o&&[],b=[],w=l,C=o||i&&r.find.TAG("*",c),E=T+=null==w?1:Math.random()||.1,k=C.length;for(c&&(l=a===d||a||c);m!==k&&null!=(f=C[m]);m++){if(i&&f){h=0,a||f.ownerDocument===d||(p(f),s=!g);while(y=e[h++])if(y(f,a||d,s)){u.push(f);break}c&&(T=E)}n&&((f=!y&&f)&&v--,o&&x.push(f))}if(v+=m,n&&m!==v){h=0;while(y=t[h++])y(x,b,a,s);if(o){if(v>0)while(m--)x[m]||b[m]||(b[m]=j.call(u));b=we(b)}L.apply(u,b),c&&!o&&b.length>0&&v+t.length>1&&oe.uniqueSort(u)}return c&&(T=E,l=w),x};return n?se(o):o}return s=oe.compile=function(e,t){var n,r=[],i=[],o=S[e+" "];if(!o){t||(t=a(e)),n=t.length;while(n--)(o=Ce(t[n]))[b]?r.push(o):i.push(o);(o=S(e,Ee(i,r))).selector=e}return o},u=oe.select=function(e,t,n,i){var o,u,l,c,f,p="function"==typeof e&&e,d=!i&&a(e=p.selector||e);if(n=n||[],1===d.length){if((u=d[0]=d[0].slice(0)).length>2&&"ID"===(l=u[0]).type&&9===t.nodeType&&g&&r.relative[u[1].type]){if(!(t=(r.find.ID(l.matches[0].replace(Z,ee),t)||[])[0]))return n;p&&(t=t.parentNode),e=e.slice(u.shift().value.length)}o=V.needsContext.test(e)?0:u.length;while(o--){if(l=u[o],r.relative[c=l.type])break;if((f=r.find[c])&&(i=f(l.matches[0].replace(Z,ee),K.test(u[0].type)&&ge(t.parentNode)||t))){if(u.splice(o,1),!(e=i.length&&ve(u)))return L.apply(n,i),n;break}}}return(p||s(e,d))(i,t,!g,n,!t||K.test(e)&&ge(t.parentNode)||t),n},n.sortStable=b.split("").sort(D).join("")===b,n.detectDuplicates=!!f,p(),n.sortDetached=ue(function(e){return 1&e.compareDocumentPosition(d.createElement("fieldset"))}),ue(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||le("type|href|height|width",function(e,t,n){if(!n)return e.getAttribute(t,"type"===t.toLowerCase()?1:2)}),n.attributes&&ue(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||le("value",function(e,t,n){if(!n&&"input"===e.nodeName.toLowerCase())return e.defaultValue}),ue(function(e){return null==e.getAttribute("disabled")})||le(P,function(e,t,n){var r;if(!n)return!0===e[t]?t.toLowerCase():(r=e.getAttributeNode(t))&&r.specified?r.value:null}),oe}(e);w.find=E,w.expr=E.selectors,w.expr[":"]=w.expr.pseudos,w.uniqueSort=w.unique=E.uniqueSort,w.text=E.getText,w.isXMLDoc=E.isXML,w.contains=E.contains,w.escapeSelector=E.escape;var k=function(e,t,n){var r=[],i=void 0!==n;while((e=e[t])&&9!==e.nodeType)if(1===e.nodeType){if(i&&w(e).is(n))break;r.push(e)}return r},S=function(e,t){for(var n=[];e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n},D=w.expr.match.needsContext;function N(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()}var A=/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;function j(e,t,n){return g(t)?w.grep(e,function(e,r){return!!t.call(e,r,e)!==n}):t.nodeType?w.grep(e,function(e){return e===t!==n}):"string"!=typeof t?w.grep(e,function(e){return u.call(t,e)>-1!==n}):w.filter(t,e,n)}w.filter=function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?w.find.matchesSelector(r,e)?[r]:[]:w.find.matches(e,w.grep(t,function(e){return 1===e.nodeType}))},w.fn.extend({find:function(e){var t,n,r=this.length,i=this;if("string"!=typeof e)return this.pushStack(w(e).filter(function(){for(t=0;t<r;t++)if(w.contains(i[t],this))return!0}));for(n=this.pushStack([]),t=0;t<r;t++)w.find(e,i[t],n);return r>1?w.uniqueSort(n):n},filter:function(e){return this.pushStack(j(this,e||[],!1))},not:function(e){return this.pushStack(j(this,e||[],!0))},is:function(e){return!!j(this,"string"==typeof e&&D.test(e)?w(e):e||[],!1).length}});var q,L=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(w.fn.init=function(e,t,n){var i,o;if(!e)return this;if(n=n||q,"string"==typeof e){if(!(i="<"===e[0]&&">"===e[e.length-1]&&e.length>=3?[null,e,null]:L.exec(e))||!i[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);if(i[1]){if(t=t instanceof w?t[0]:t,w.merge(this,w.parseHTML(i[1],t&&t.nodeType?t.ownerDocument||t:r,!0)),A.test(i[1])&&w.isPlainObject(t))for(i in t)g(this[i])?this[i](t[i]):this.attr(i,t[i]);return this}return(o=r.getElementById(i[2]))&&(this[0]=o,this.length=1),this}return e.nodeType?(this[0]=e,this.length=1,this):g(e)?void 0!==n.ready?n.ready(e):e(w):w.makeArray(e,this)}).prototype=w.fn,q=w(r);var H=/^(?:parents|prev(?:Until|All))/,O={children:!0,contents:!0,next:!0,prev:!0};w.fn.extend({has:function(e){var t=w(e,this),n=t.length;return this.filter(function(){for(var e=0;e<n;e++)if(w.contains(this,t[e]))return!0})},closest:function(e,t){var n,r=0,i=this.length,o=[],a="string"!=typeof e&&w(e);if(!D.test(e))for(;r<i;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(n.nodeType<11&&(a?a.index(n)>-1:1===n.nodeType&&w.find.matchesSelector(n,e))){o.push(n);break}return this.pushStack(o.length>1?w.uniqueSort(o):o)},index:function(e){return e?"string"==typeof e?u.call(w(e),this[0]):u.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){return this.pushStack(w.uniqueSort(w.merge(this.get(),w(e,t))))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}});function P(e,t){while((e=e[t])&&1!==e.nodeType);return e}w.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return k(e,"parentNode")},parentsUntil:function(e,t,n){return k(e,"parentNode",n)},next:function(e){return P(e,"nextSibling")},prev:function(e){return P(e,"previousSibling")},nextAll:function(e){return k(e,"nextSibling")},prevAll:function(e){return k(e,"previousSibling")},nextUntil:function(e,t,n){return k(e,"nextSibling",n)},prevUntil:function(e,t,n){return k(e,"previousSibling",n)},siblings:function(e){return S((e.parentNode||{}).firstChild,e)},children:function(e){return S(e.firstChild)},contents:function(e){return N(e,"iframe")?e.contentDocument:(N(e,"template")&&(e=e.content||e),w.merge([],e.childNodes))}},function(e,t){w.fn[e]=function(n,r){var i=w.map(this,t,n);return"Until"!==e.slice(-5)&&(r=n),r&&"string"==typeof r&&(i=w.filter(r,i)),this.length>1&&(O[e]||w.uniqueSort(i),H.test(e)&&i.reverse()),this.pushStack(i)}});var M=/[^\x20\t\r\n\f]+/g;function R(e){var t={};return w.each(e.match(M)||[],function(e,n){t[n]=!0}),t}w.Callbacks=function(e){e="string"==typeof e?R(e):w.extend({},e);var t,n,r,i,o=[],a=[],s=-1,u=function(){for(i=i||e.once,r=t=!0;a.length;s=-1){n=a.shift();while(++s<o.length)!1===o[s].apply(n[0],n[1])&&e.stopOnFalse&&(s=o.length,n=!1)}e.memory||(n=!1),t=!1,i&&(o=n?[]:"")},l={add:function(){return o&&(n&&!t&&(s=o.length-1,a.push(n)),function t(n){w.each(n,function(n,r){g(r)?e.unique&&l.has(r)||o.push(r):r&&r.length&&"string"!==x(r)&&t(r)})}(arguments),n&&!t&&u()),this},remove:function(){return w.each(arguments,function(e,t){var n;while((n=w.inArray(t,o,n))>-1)o.splice(n,1),n<=s&&s--}),this},has:function(e){return e?w.inArray(e,o)>-1:o.length>0},empty:function(){return o&&(o=[]),this},disable:function(){return i=a=[],o=n="",this},disabled:function(){return!o},lock:function(){return i=a=[],n||t||(o=n=""),this},locked:function(){return!!i},fireWith:function(e,n){return i||(n=[e,(n=n||[]).slice?n.slice():n],a.push(n),t||u()),this},fire:function(){return l.fireWith(this,arguments),this},fired:function(){return!!r}};return l};function I(e){return e}function W(e){throw e}function $(e,t,n,r){var i;try{e&&g(i=e.promise)?i.call(e).done(t).fail(n):e&&g(i=e.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(void 0,[e])}}w.extend({Deferred:function(t){var n=[["notify","progress",w.Callbacks("memory"),w.Callbacks("memory"),2],["resolve","done",w.Callbacks("once memory"),w.Callbacks("once memory"),0,"resolved"],["reject","fail",w.Callbacks("once memory"),w.Callbacks("once memory"),1,"rejected"]],r="pending",i={state:function(){return r},always:function(){return o.done(arguments).fail(arguments),this},"catch":function(e){return i.then(null,e)},pipe:function(){var e=arguments;return w.Deferred(function(t){w.each(n,function(n,r){var i=g(e[r[4]])&&e[r[4]];o[r[1]](function(){var e=i&&i.apply(this,arguments);e&&g(e.promise)?e.promise().progress(t.notify).done(t.resolve).fail(t.reject):t[r[0]+"With"](this,i?[e]:arguments)})}),e=null}).promise()},then:function(t,r,i){var o=0;function a(t,n,r,i){return function(){var s=this,u=arguments,l=function(){var e,l;if(!(t<o)){if((e=r.apply(s,u))===n.promise())throw new TypeError("Thenable self-resolution");l=e&&("object"==typeof e||"function"==typeof e)&&e.then,g(l)?i?l.call(e,a(o,n,I,i),a(o,n,W,i)):(o++,l.call(e,a(o,n,I,i),a(o,n,W,i),a(o,n,I,n.notifyWith))):(r!==I&&(s=void 0,u=[e]),(i||n.resolveWith)(s,u))}},c=i?l:function(){try{l()}catch(e){w.Deferred.exceptionHook&&w.Deferred.exceptionHook(e,c.stackTrace),t+1>=o&&(r!==W&&(s=void 0,u=[e]),n.rejectWith(s,u))}};t?c():(w.Deferred.getStackHook&&(c.stackTrace=w.Deferred.getStackHook()),e.setTimeout(c))}}return w.Deferred(function(e){n[0][3].add(a(0,e,g(i)?i:I,e.notifyWith)),n[1][3].add(a(0,e,g(t)?t:I)),n[2][3].add(a(0,e,g(r)?r:W))}).promise()},promise:function(e){return null!=e?w.extend(e,i):i}},o={};return w.each(n,function(e,t){var a=t[2],s=t[5];i[t[1]]=a.add,s&&a.add(function(){r=s},n[3-e][2].disable,n[3-e][3].disable,n[0][2].lock,n[0][3].lock),a.add(t[3].fire),o[t[0]]=function(){return o[t[0]+"With"](this===o?void 0:this,arguments),this},o[t[0]+"With"]=a.fireWith}),i.promise(o),t&&t.call(o,o),o},when:function(e){var t=arguments.length,n=t,r=Array(n),i=o.call(arguments),a=w.Deferred(),s=function(e){return function(n){r[e]=this,i[e]=arguments.length>1?o.call(arguments):n,--t||a.resolveWith(r,i)}};if(t<=1&&($(e,a.done(s(n)).resolve,a.reject,!t),"pending"===a.state()||g(i[n]&&i[n].then)))return a.then();while(n--)$(i[n],s(n),a.reject);return a.promise()}});var B=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;w.Deferred.exceptionHook=function(t,n){e.console&&e.console.warn&&t&&B.test(t.name)&&e.console.warn("jQuery.Deferred exception: "+t.message,t.stack,n)},w.readyException=function(t){e.setTimeout(function(){throw t})};var F=w.Deferred();w.fn.ready=function(e){return F.then(e)["catch"](function(e){w.readyException(e)}),this},w.extend({isReady:!1,readyWait:1,ready:function(e){(!0===e?--w.readyWait:w.isReady)||(w.isReady=!0,!0!==e&&--w.readyWait>0||F.resolveWith(r,[w]))}}),w.ready.then=F.then;function _(){r.removeEventListener("DOMContentLoaded",_),e.removeEventListener("load",_),w.ready()}"complete"===r.readyState||"loading"!==r.readyState&&!r.documentElement.doScroll?e.setTimeout(w.ready):(r.addEventListener("DOMContentLoaded",_),e.addEventListener("load",_));var z=function(e,t,n,r,i,o,a){var s=0,u=e.length,l=null==n;if("object"===x(n)){i=!0;for(s in n)z(e,t,s,n[s],!0,o,a)}else if(void 0!==r&&(i=!0,g(r)||(a=!0),l&&(a?(t.call(e,r),t=null):(l=t,t=function(e,t,n){return l.call(w(e),n)})),t))for(;s<u;s++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:l?t.call(e):u?t(e[0],n):o},X=/^-ms-/,U=/-([a-z])/g;function V(e,t){return t.toUpperCase()}function G(e){return e.replace(X,"ms-").replace(U,V)}var Y=function(e){return 1===e.nodeType||9===e.nodeType||!+e.nodeType};function Q(){this.expando=w.expando+Q.uid++}Q.uid=1,Q.prototype={cache:function(e){var t=e[this.expando];return t||(t={},Y(e)&&(e.nodeType?e[this.expando]=t:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},set:function(e,t,n){var r,i=this.cache(e);if("string"==typeof t)i[G(t)]=n;else for(r in t)i[G(r)]=t[r];return i},get:function(e,t){return void 0===t?this.cache(e):e[this.expando]&&e[this.expando][G(t)]},access:function(e,t,n){return void 0===t||t&&"string"==typeof t&&void 0===n?this.get(e,t):(this.set(e,t,n),void 0!==n?n:t)},remove:function(e,t){var n,r=e[this.expando];if(void 0!==r){if(void 0!==t){n=(t=Array.isArray(t)?t.map(G):(t=G(t))in r?[t]:t.match(M)||[]).length;while(n--)delete r[t[n]]}(void 0===t||w.isEmptyObject(r))&&(e.nodeType?e[this.expando]=void 0:delete e[this.expando])}},hasData:function(e){var t=e[this.expando];return void 0!==t&&!w.isEmptyObject(t)}};var J=new Q,K=new Q,Z=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,ee=/[A-Z]/g;function te(e){return"true"===e||"false"!==e&&("null"===e?null:e===+e+""?+e:Z.test(e)?JSON.parse(e):e)}function ne(e,t,n){var r;if(void 0===n&&1===e.nodeType)if(r="data-"+t.replace(ee,"-$&").toLowerCase(),"string"==typeof(n=e.getAttribute(r))){try{n=te(n)}catch(e){}K.set(e,t,n)}else n=void 0;return n}w.extend({hasData:function(e){return K.hasData(e)||J.hasData(e)},data:function(e,t,n){return K.access(e,t,n)},removeData:function(e,t){K.remove(e,t)},_data:function(e,t,n){return J.access(e,t,n)},_removeData:function(e,t){J.remove(e,t)}}),w.fn.extend({data:function(e,t){var n,r,i,o=this[0],a=o&&o.attributes;if(void 0===e){if(this.length&&(i=K.get(o),1===o.nodeType&&!J.get(o,"hasDataAttrs"))){n=a.length;while(n--)a[n]&&0===(r=a[n].name).indexOf("data-")&&(r=G(r.slice(5)),ne(o,r,i[r]));J.set(o,"hasDataAttrs",!0)}return i}return"object"==typeof e?this.each(function(){K.set(this,e)}):z(this,function(t){var n;if(o&&void 0===t){if(void 0!==(n=K.get(o,e)))return n;if(void 0!==(n=ne(o,e)))return n}else this.each(function(){K.set(this,e,t)})},null,t,arguments.length>1,null,!0)},removeData:function(e){return this.each(function(){K.remove(this,e)})}}),w.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=J.get(e,t),n&&(!r||Array.isArray(n)?r=J.access(e,t,w.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=w.queue(e,t),r=n.length,i=n.shift(),o=w._queueHooks(e,t),a=function(){w.dequeue(e,t)};"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,a,o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return J.get(e,n)||J.access(e,n,{empty:w.Callbacks("once memory").add(function(){J.remove(e,[t+"queue",n])})})}}),w.fn.extend({queue:function(e,t){var n=2;return"string"!=typeof e&&(t=e,e="fx",n--),arguments.length<n?w.queue(this[0],e):void 0===t?this:this.each(function(){var n=w.queue(this,e,t);w._queueHooks(this,e),"fx"===e&&"inprogress"!==n[0]&&w.dequeue(this,e)})},dequeue:function(e){return this.each(function(){w.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t){var n,r=1,i=w.Deferred(),o=this,a=this.length,s=function(){--r||i.resolveWith(o,[o])};"string"!=typeof e&&(t=e,e=void 0),e=e||"fx";while(a--)(n=J.get(o[a],e+"queueHooks"))&&n.empty&&(r++,n.empty.add(s));return s(),i.promise(t)}});var re=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,ie=new RegExp("^(?:([+-])=|)("+re+")([a-z%]*)$","i"),oe=["Top","Right","Bottom","Left"],ae=function(e,t){return"none"===(e=t||e).style.display||""===e.style.display&&w.contains(e.ownerDocument,e)&&"none"===w.css(e,"display")},se=function(e,t,n,r){var i,o,a={};for(o in t)a[o]=e.style[o],e.style[o]=t[o];i=n.apply(e,r||[]);for(o in t)e.style[o]=a[o];return i};function ue(e,t,n,r){var i,o,a=20,s=r?function(){return r.cur()}:function(){return w.css(e,t,"")},u=s(),l=n&&n[3]||(w.cssNumber[t]?"":"px"),c=(w.cssNumber[t]||"px"!==l&&+u)&&ie.exec(w.css(e,t));if(c&&c[3]!==l){u/=2,l=l||c[3],c=+u||1;while(a--)w.style(e,t,c+l),(1-o)*(1-(o=s()/u||.5))<=0&&(a=0),c/=o;c*=2,w.style(e,t,c+l),n=n||[]}return n&&(c=+c||+u||0,i=n[1]?c+(n[1]+1)*n[2]:+n[2],r&&(r.unit=l,r.start=c,r.end=i)),i}var le={};function ce(e){var t,n=e.ownerDocument,r=e.nodeName,i=le[r];return i||(t=n.body.appendChild(n.createElement(r)),i=w.css(t,"display"),t.parentNode.removeChild(t),"none"===i&&(i="block"),le[r]=i,i)}function fe(e,t){for(var n,r,i=[],o=0,a=e.length;o<a;o++)(r=e[o]).style&&(n=r.style.display,t?("none"===n&&(i[o]=J.get(r,"display")||null,i[o]||(r.style.display="")),""===r.style.display&&ae(r)&&(i[o]=ce(r))):"none"!==n&&(i[o]="none",J.set(r,"display",n)));for(o=0;o<a;o++)null!=i[o]&&(e[o].style.display=i[o]);return e}w.fn.extend({show:function(){return fe(this,!0)},hide:function(){return fe(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){ae(this)?w(this).show():w(this).hide()})}});var pe=/^(?:checkbox|radio)$/i,de=/<([a-z][^\/\0>\x20\t\r\n\f]+)/i,he=/^$|^module$|\/(?:java|ecma)script/i,ge={option:[1,"<select multiple='multiple'>","</select>"],thead:[1,"<table>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:[0,"",""]};ge.optgroup=ge.option,ge.tbody=ge.tfoot=ge.colgroup=ge.caption=ge.thead,ge.th=ge.td;function ye(e,t){var n;return n="undefined"!=typeof e.getElementsByTagName?e.getElementsByTagName(t||"*"):"undefined"!=typeof e.querySelectorAll?e.querySelectorAll(t||"*"):[],void 0===t||t&&N(e,t)?w.merge([e],n):n}function ve(e,t){for(var n=0,r=e.length;n<r;n++)J.set(e[n],"globalEval",!t||J.get(t[n],"globalEval"))}var me=/<|&#?\w+;/;function xe(e,t,n,r,i){for(var o,a,s,u,l,c,f=t.createDocumentFragment(),p=[],d=0,h=e.length;d<h;d++)if((o=e[d])||0===o)if("object"===x(o))w.merge(p,o.nodeType?[o]:o);else if(me.test(o)){a=a||f.appendChild(t.createElement("div")),s=(de.exec(o)||["",""])[1].toLowerCase(),u=ge[s]||ge._default,a.innerHTML=u[1]+w.htmlPrefilter(o)+u[2],c=u[0];while(c--)a=a.lastChild;w.merge(p,a.childNodes),(a=f.firstChild).textContent=""}else p.push(t.createTextNode(o));f.textContent="",d=0;while(o=p[d++])if(r&&w.inArray(o,r)>-1)i&&i.push(o);else if(l=w.contains(o.ownerDocument,o),a=ye(f.appendChild(o),"script"),l&&ve(a),n){c=0;while(o=a[c++])he.test(o.type||"")&&n.push(o)}return f}!function(){var e=r.createDocumentFragment().appendChild(r.createElement("div")),t=r.createElement("input");t.setAttribute("type","radio"),t.setAttribute("checked","checked"),t.setAttribute("name","t"),e.appendChild(t),h.checkClone=e.cloneNode(!0).cloneNode(!0).lastChild.checked,e.innerHTML="<textarea>x</textarea>",h.noCloneChecked=!!e.cloneNode(!0).lastChild.defaultValue}();var be=r.documentElement,we=/^key/,Te=/^(?:mouse|pointer|contextmenu|drag|drop)|click/,Ce=/^([^.]*)(?:\.(.+)|)/;function Ee(){return!0}function ke(){return!1}function Se(){try{return r.activeElement}catch(e){}}function De(e,t,n,r,i,o){var a,s;if("object"==typeof t){"string"!=typeof n&&(r=r||n,n=void 0);for(s in t)De(e,s,n,r,t[s],o);return e}if(null==r&&null==i?(i=n,r=n=void 0):null==i&&("string"==typeof n?(i=r,r=void 0):(i=r,r=n,n=void 0)),!1===i)i=ke;else if(!i)return e;return 1===o&&(a=i,(i=function(e){return w().off(e),a.apply(this,arguments)}).guid=a.guid||(a.guid=w.guid++)),e.each(function(){w.event.add(this,t,i,r,n)})}w.event={global:{},add:function(e,t,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,y=J.get(e);if(y){n.handler&&(n=(o=n).handler,i=o.selector),i&&w.find.matchesSelector(be,i),n.guid||(n.guid=w.guid++),(u=y.events)||(u=y.events={}),(a=y.handle)||(a=y.handle=function(t){return"undefined"!=typeof w&&w.event.triggered!==t.type?w.event.dispatch.apply(e,arguments):void 0}),l=(t=(t||"").match(M)||[""]).length;while(l--)d=g=(s=Ce.exec(t[l])||[])[1],h=(s[2]||"").split(".").sort(),d&&(f=w.event.special[d]||{},d=(i?f.delegateType:f.bindType)||d,f=w.event.special[d]||{},c=w.extend({type:d,origType:g,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&w.expr.match.needsContext.test(i),namespace:h.join(".")},o),(p=u[d])||((p=u[d]=[]).delegateCount=0,f.setup&&!1!==f.setup.call(e,r,h,a)||e.addEventListener&&e.addEventListener(d,a)),f.add&&(f.add.call(e,c),c.handler.guid||(c.handler.guid=n.guid)),i?p.splice(p.delegateCount++,0,c):p.push(c),w.event.global[d]=!0)}},remove:function(e,t,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,y=J.hasData(e)&&J.get(e);if(y&&(u=y.events)){l=(t=(t||"").match(M)||[""]).length;while(l--)if(s=Ce.exec(t[l])||[],d=g=s[1],h=(s[2]||"").split(".").sort(),d){f=w.event.special[d]||{},p=u[d=(r?f.delegateType:f.bindType)||d]||[],s=s[2]&&new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"),a=o=p.length;while(o--)c=p[o],!i&&g!==c.origType||n&&n.guid!==c.guid||s&&!s.test(c.namespace)||r&&r!==c.selector&&("**"!==r||!c.selector)||(p.splice(o,1),c.selector&&p.delegateCount--,f.remove&&f.remove.call(e,c));a&&!p.length&&(f.teardown&&!1!==f.teardown.call(e,h,y.handle)||w.removeEvent(e,d,y.handle),delete u[d])}else for(d in u)w.event.remove(e,d+t[l],n,r,!0);w.isEmptyObject(u)&&J.remove(e,"handle events")}},dispatch:function(e){var t=w.event.fix(e),n,r,i,o,a,s,u=new Array(arguments.length),l=(J.get(this,"events")||{})[t.type]||[],c=w.event.special[t.type]||{};for(u[0]=t,n=1;n<arguments.length;n++)u[n]=arguments[n];if(t.delegateTarget=this,!c.preDispatch||!1!==c.preDispatch.call(this,t)){s=w.event.handlers.call(this,t,l),n=0;while((o=s[n++])&&!t.isPropagationStopped()){t.currentTarget=o.elem,r=0;while((a=o.handlers[r++])&&!t.isImmediatePropagationStopped())t.rnamespace&&!t.rnamespace.test(a.namespace)||(t.handleObj=a,t.data=a.data,void 0!==(i=((w.event.special[a.origType]||{}).handle||a.handler).apply(o.elem,u))&&!1===(t.result=i)&&(t.preventDefault(),t.stopPropagation()))}return c.postDispatch&&c.postDispatch.call(this,t),t.result}},handlers:function(e,t){var n,r,i,o,a,s=[],u=t.delegateCount,l=e.target;if(u&&l.nodeType&&!("click"===e.type&&e.button>=1))for(;l!==this;l=l.parentNode||this)if(1===l.nodeType&&("click"!==e.type||!0!==l.disabled)){for(o=[],a={},n=0;n<u;n++)void 0===a[i=(r=t[n]).selector+" "]&&(a[i]=r.needsContext?w(i,this).index(l)>-1:w.find(i,this,null,[l]).length),a[i]&&o.push(r);o.length&&s.push({elem:l,handlers:o})}return l=this,u<t.length&&s.push({elem:l,handlers:t.slice(u)}),s},addProp:function(e,t){Object.defineProperty(w.Event.prototype,e,{enumerable:!0,configurable:!0,get:g(t)?function(){if(this.originalEvent)return t(this.originalEvent)}:function(){if(this.originalEvent)return this.originalEvent[e]},set:function(t){Object.defineProperty(this,e,{enumerable:!0,configurable:!0,writable:!0,value:t})}})},fix:function(e){return e[w.expando]?e:new w.Event(e)},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==Se()&&this.focus)return this.focus(),!1},delegateType:"focusin"},blur:{trigger:function(){if(this===Se()&&this.blur)return this.blur(),!1},delegateType:"focusout"},click:{trigger:function(){if("checkbox"===this.type&&this.click&&N(this,"input"))return this.click(),!1},_default:function(e){return N(e.target,"a")}},beforeunload:{postDispatch:function(e){void 0!==e.result&&e.originalEvent&&(e.originalEvent.returnValue=e.result)}}}},w.removeEvent=function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)},w.Event=function(e,t){if(!(this instanceof w.Event))return new w.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||void 0===e.defaultPrevented&&!1===e.returnValue?Ee:ke,this.target=e.target&&3===e.target.nodeType?e.target.parentNode:e.target,this.currentTarget=e.currentTarget,this.relatedTarget=e.relatedTarget):this.type=e,t&&w.extend(this,t),this.timeStamp=e&&e.timeStamp||Date.now(),this[w.expando]=!0},w.Event.prototype={constructor:w.Event,isDefaultPrevented:ke,isPropagationStopped:ke,isImmediatePropagationStopped:ke,isSimulated:!1,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=Ee,e&&!this.isSimulated&&e.preventDefault()},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=Ee,e&&!this.isSimulated&&e.stopPropagation()},stopImmediatePropagation:function(){var e=this.originalEvent;this.isImmediatePropagationStopped=Ee,e&&!this.isSimulated&&e.stopImmediatePropagation(),this.stopPropagation()}},w.each({altKey:!0,bubbles:!0,cancelable:!0,changedTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0,shiftKey:!0,view:!0,"char":!0,charCode:!0,key:!0,keyCode:!0,button:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,pointerType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,which:function(e){var t=e.button;return null==e.which&&we.test(e.type)?null!=e.charCode?e.charCode:e.keyCode:!e.which&&void 0!==t&&Te.test(e.type)?1&t?1:2&t?3:4&t?2:0:e.which}},w.event.addProp),w.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(e,t){w.event.special[e]={delegateType:t,bindType:t,handle:function(e){var n,r=this,i=e.relatedTarget,o=e.handleObj;return i&&(i===r||w.contains(r,i))||(e.type=o.origType,n=o.handler.apply(this,arguments),e.type=t),n}}}),w.fn.extend({on:function(e,t,n,r){return De(this,e,t,n,r)},one:function(e,t,n,r){return De(this,e,t,n,r,1)},off:function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=e.handleObj,w(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.origType,r.selector,r.handler),this;if("object"==typeof e){for(i in e)this.off(i,t,e[i]);return this}return!1!==t&&"function"!=typeof t||(n=t,t=void 0),!1===n&&(n=ke),this.each(function(){w.event.remove(this,e,n,t)})}});var Ne=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,Ae=/<script|<style|<link/i,je=/checked\s*(?:[^=]|=\s*.checked.)/i,qe=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;function Le(e,t){return N(e,"table")&&N(11!==t.nodeType?t:t.firstChild,"tr")?w(e).children("tbody")[0]||e:e}function He(e){return e.type=(null!==e.getAttribute("type"))+"/"+e.type,e}function Oe(e){return"true/"===(e.type||"").slice(0,5)?e.type=e.type.slice(5):e.removeAttribute("type"),e}function Pe(e,t){var n,r,i,o,a,s,u,l;if(1===t.nodeType){if(J.hasData(e)&&(o=J.access(e),a=J.set(t,o),l=o.events)){delete a.handle,a.events={};for(i in l)for(n=0,r=l[i].length;n<r;n++)w.event.add(t,i,l[i][n])}K.hasData(e)&&(s=K.access(e),u=w.extend({},s),K.set(t,u))}}function Me(e,t){var n=t.nodeName.toLowerCase();"input"===n&&pe.test(e.type)?t.checked=e.checked:"input"!==n&&"textarea"!==n||(t.defaultValue=e.defaultValue)}function Re(e,t,n,r){t=a.apply([],t);var i,o,s,u,l,c,f=0,p=e.length,d=p-1,y=t[0],v=g(y);if(v||p>1&&"string"==typeof y&&!h.checkClone&&je.test(y))return e.each(function(i){var o=e.eq(i);v&&(t[0]=y.call(this,i,o.html())),Re(o,t,n,r)});if(p&&(i=xe(t,e[0].ownerDocument,!1,e,r),o=i.firstChild,1===i.childNodes.length&&(i=o),o||r)){for(u=(s=w.map(ye(i,"script"),He)).length;f<p;f++)l=i,f!==d&&(l=w.clone(l,!0,!0),u&&w.merge(s,ye(l,"script"))),n.call(e[f],l,f);if(u)for(c=s[s.length-1].ownerDocument,w.map(s,Oe),f=0;f<u;f++)l=s[f],he.test(l.type||"")&&!J.access(l,"globalEval")&&w.contains(c,l)&&(l.src&&"module"!==(l.type||"").toLowerCase()?w._evalUrl&&w._evalUrl(l.src):m(l.textContent.replace(qe,""),c,l))}return e}function Ie(e,t,n){for(var r,i=t?w.filter(t,e):e,o=0;null!=(r=i[o]);o++)n||1!==r.nodeType||w.cleanData(ye(r)),r.parentNode&&(n&&w.contains(r.ownerDocument,r)&&ve(ye(r,"script")),r.parentNode.removeChild(r));return e}w.extend({htmlPrefilter:function(e){return e.replace(Ne,"<$1></$2>")},clone:function(e,t,n){var r,i,o,a,s=e.cloneNode(!0),u=w.contains(e.ownerDocument,e);if(!(h.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||w.isXMLDoc(e)))for(a=ye(s),r=0,i=(o=ye(e)).length;r<i;r++)Me(o[r],a[r]);if(t)if(n)for(o=o||ye(e),a=a||ye(s),r=0,i=o.length;r<i;r++)Pe(o[r],a[r]);else Pe(e,s);return(a=ye(s,"script")).length>0&&ve(a,!u&&ye(e,"script")),s},cleanData:function(e){for(var t,n,r,i=w.event.special,o=0;void 0!==(n=e[o]);o++)if(Y(n)){if(t=n[J.expando]){if(t.events)for(r in t.events)i[r]?w.event.remove(n,r):w.removeEvent(n,r,t.handle);n[J.expando]=void 0}n[K.expando]&&(n[K.expando]=void 0)}}}),w.fn.extend({detach:function(e){return Ie(this,e,!0)},remove:function(e){return Ie(this,e)},text:function(e){return z(this,function(e){return void 0===e?w.text(this):this.empty().each(function(){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(this.textContent=e)})},null,e,arguments.length)},append:function(){return Re(this,arguments,function(e){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||Le(this,e).appendChild(e)})},prepend:function(){return Re(this,arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=Le(this,e);t.insertBefore(e,t.firstChild)}})},before:function(){return Re(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return Re(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,t=0;null!=(e=this[t]);t++)1===e.nodeType&&(w.cleanData(ye(e,!1)),e.textContent="");return this},clone:function(e,t){return e=null!=e&&e,t=null==t?e:t,this.map(function(){return w.clone(this,e,t)})},html:function(e){return z(this,function(e){var t=this[0]||{},n=0,r=this.length;if(void 0===e&&1===t.nodeType)return t.innerHTML;if("string"==typeof e&&!Ae.test(e)&&!ge[(de.exec(e)||["",""])[1].toLowerCase()]){e=w.htmlPrefilter(e);try{for(;n<r;n++)1===(t=this[n]||{}).nodeType&&(w.cleanData(ye(t,!1)),t.innerHTML=e);t=0}catch(e){}}t&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var e=[];return Re(this,arguments,function(t){var n=this.parentNode;w.inArray(this,e)<0&&(w.cleanData(ye(this)),n&&n.replaceChild(t,this))},e)}}),w.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,t){w.fn[e]=function(e){for(var n,r=[],i=w(e),o=i.length-1,a=0;a<=o;a++)n=a===o?this:this.clone(!0),w(i[a])[t](n),s.apply(r,n.get());return this.pushStack(r)}});var We=new RegExp("^("+re+")(?!px)[a-z%]+$","i"),$e=function(t){var n=t.ownerDocument.defaultView;return n&&n.opener||(n=e),n.getComputedStyle(t)},Be=new RegExp(oe.join("|"),"i");!function(){function t(){if(c){l.style.cssText="position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",c.style.cssText="position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",be.appendChild(l).appendChild(c);var t=e.getComputedStyle(c);i="1%"!==t.top,u=12===n(t.marginLeft),c.style.right="60%",s=36===n(t.right),o=36===n(t.width),c.style.position="absolute",a=36===c.offsetWidth||"absolute",be.removeChild(l),c=null}}function n(e){return Math.round(parseFloat(e))}var i,o,a,s,u,l=r.createElement("div"),c=r.createElement("div");c.style&&(c.style.backgroundClip="content-box",c.cloneNode(!0).style.backgroundClip="",h.clearCloneStyle="content-box"===c.style.backgroundClip,w.extend(h,{boxSizingReliable:function(){return t(),o},pixelBoxStyles:function(){return t(),s},pixelPosition:function(){return t(),i},reliableMarginLeft:function(){return t(),u},scrollboxSize:function(){return t(),a}}))}();function Fe(e,t,n){var r,i,o,a,s=e.style;return(n=n||$e(e))&&(""!==(a=n.getPropertyValue(t)||n[t])||w.contains(e.ownerDocument,e)||(a=w.style(e,t)),!h.pixelBoxStyles()&&We.test(a)&&Be.test(t)&&(r=s.width,i=s.minWidth,o=s.maxWidth,s.minWidth=s.maxWidth=s.width=a,a=n.width,s.width=r,s.minWidth=i,s.maxWidth=o)),void 0!==a?a+"":a}function _e(e,t){return{get:function(){if(!e())return(this.get=t).apply(this,arguments);delete this.get}}}var ze=/^(none|table(?!-c[ea]).+)/,Xe=/^--/,Ue={position:"absolute",visibility:"hidden",display:"block"},Ve={letterSpacing:"0",fontWeight:"400"},Ge=["Webkit","Moz","ms"],Ye=r.createElement("div").style;function Qe(e){if(e in Ye)return e;var t=e[0].toUpperCase()+e.slice(1),n=Ge.length;while(n--)if((e=Ge[n]+t)in Ye)return e}function Je(e){var t=w.cssProps[e];return t||(t=w.cssProps[e]=Qe(e)||e),t}function Ke(e,t,n){var r=ie.exec(t);return r?Math.max(0,r[2]-(n||0))+(r[3]||"px"):t}function Ze(e,t,n,r,i,o){var a="width"===t?1:0,s=0,u=0;if(n===(r?"border":"content"))return 0;for(;a<4;a+=2)"margin"===n&&(u+=w.css(e,n+oe[a],!0,i)),r?("content"===n&&(u-=w.css(e,"padding"+oe[a],!0,i)),"margin"!==n&&(u-=w.css(e,"border"+oe[a]+"Width",!0,i))):(u+=w.css(e,"padding"+oe[a],!0,i),"padding"!==n?u+=w.css(e,"border"+oe[a]+"Width",!0,i):s+=w.css(e,"border"+oe[a]+"Width",!0,i));return!r&&o>=0&&(u+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-o-u-s-.5))),u}function et(e,t,n){var r=$e(e),i=Fe(e,t,r),o="border-box"===w.css(e,"boxSizing",!1,r),a=o;if(We.test(i)){if(!n)return i;i="auto"}return a=a&&(h.boxSizingReliable()||i===e.style[t]),("auto"===i||!parseFloat(i)&&"inline"===w.css(e,"display",!1,r))&&(i=e["offset"+t[0].toUpperCase()+t.slice(1)],a=!0),(i=parseFloat(i)||0)+Ze(e,t,n||(o?"border":"content"),a,r,i)+"px"}w.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Fe(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,r){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var i,o,a,s=G(t),u=Xe.test(t),l=e.style;if(u||(t=Je(s)),a=w.cssHooks[t]||w.cssHooks[s],void 0===n)return a&&"get"in a&&void 0!==(i=a.get(e,!1,r))?i:l[t];"string"==(o=typeof n)&&(i=ie.exec(n))&&i[1]&&(n=ue(e,t,i),o="number"),null!=n&&n===n&&("number"===o&&(n+=i&&i[3]||(w.cssNumber[s]?"":"px")),h.clearCloneStyle||""!==n||0!==t.indexOf("background")||(l[t]="inherit"),a&&"set"in a&&void 0===(n=a.set(e,n,r))||(u?l.setProperty(t,n):l[t]=n))}},css:function(e,t,n,r){var i,o,a,s=G(t);return Xe.test(t)||(t=Je(s)),(a=w.cssHooks[t]||w.cssHooks[s])&&"get"in a&&(i=a.get(e,!0,n)),void 0===i&&(i=Fe(e,t,r)),"normal"===i&&t in Ve&&(i=Ve[t]),""===n||n?(o=parseFloat(i),!0===n||isFinite(o)?o||0:i):i}}),w.each(["height","width"],function(e,t){w.cssHooks[t]={get:function(e,n,r){if(n)return!ze.test(w.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?et(e,t,r):se(e,Ue,function(){return et(e,t,r)})},set:function(e,n,r){var i,o=$e(e),a="border-box"===w.css(e,"boxSizing",!1,o),s=r&&Ze(e,t,r,a,o);return a&&h.scrollboxSize()===o.position&&(s-=Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-parseFloat(o[t])-Ze(e,t,"border",!1,o)-.5)),s&&(i=ie.exec(n))&&"px"!==(i[3]||"px")&&(e.style[t]=n,n=w.css(e,t)),Ke(e,n,s)}}}),w.cssHooks.marginLeft=_e(h.reliableMarginLeft,function(e,t){if(t)return(parseFloat(Fe(e,"marginLeft"))||e.getBoundingClientRect().left-se(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),w.each({margin:"",padding:"",border:"Width"},function(e,t){w.cssHooks[e+t]={expand:function(n){for(var r=0,i={},o="string"==typeof n?n.split(" "):[n];r<4;r++)i[e+oe[r]+t]=o[r]||o[r-2]||o[0];return i}},"margin"!==e&&(w.cssHooks[e+t].set=Ke)}),w.fn.extend({css:function(e,t){return z(this,function(e,t,n){var r,i,o={},a=0;if(Array.isArray(t)){for(r=$e(e),i=t.length;a<i;a++)o[t[a]]=w.css(e,t[a],!1,r);return o}return void 0!==n?w.style(e,t,n):w.css(e,t)},e,t,arguments.length>1)}});function tt(e,t,n,r,i){return new tt.prototype.init(e,t,n,r,i)}w.Tween=tt,tt.prototype={constructor:tt,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||w.easing._default,this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(w.cssNumber[n]?"":"px")},cur:function(){var e=tt.propHooks[this.prop];return e&&e.get?e.get(this):tt.propHooks._default.get(this)},run:function(e){var t,n=tt.propHooks[this.prop];return this.options.duration?this.pos=t=w.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):tt.propHooks._default.set(this),this}},tt.prototype.init.prototype=tt.prototype,tt.propHooks={_default:{get:function(e){var t;return 1!==e.elem.nodeType||null!=e.elem[e.prop]&&null==e.elem.style[e.prop]?e.elem[e.prop]:(t=w.css(e.elem,e.prop,""))&&"auto"!==t?t:0},set:function(e){w.fx.step[e.prop]?w.fx.step[e.prop](e):1!==e.elem.nodeType||null==e.elem.style[w.cssProps[e.prop]]&&!w.cssHooks[e.prop]?e.elem[e.prop]=e.now:w.style(e.elem,e.prop,e.now+e.unit)}}},tt.propHooks.scrollTop=tt.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},w.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},w.fx=tt.prototype.init,w.fx.step={};var nt,rt,it=/^(?:toggle|show|hide)$/,ot=/queueHooks$/;function at(){rt&&(!1===r.hidden&&e.requestAnimationFrame?e.requestAnimationFrame(at):e.setTimeout(at,w.fx.interval),w.fx.tick())}function st(){return e.setTimeout(function(){nt=void 0}),nt=Date.now()}function ut(e,t){var n,r=0,i={height:e};for(t=t?1:0;r<4;r+=2-t)i["margin"+(n=oe[r])]=i["padding"+n]=e;return t&&(i.opacity=i.width=e),i}function lt(e,t,n){for(var r,i=(pt.tweeners[t]||[]).concat(pt.tweeners["*"]),o=0,a=i.length;o<a;o++)if(r=i[o].call(n,t,e))return r}function ct(e,t,n){var r,i,o,a,s,u,l,c,f="width"in t||"height"in t,p=this,d={},h=e.style,g=e.nodeType&&ae(e),y=J.get(e,"fxshow");n.queue||(null==(a=w._queueHooks(e,"fx")).unqueued&&(a.unqueued=0,s=a.empty.fire,a.empty.fire=function(){a.unqueued||s()}),a.unqueued++,p.always(function(){p.always(function(){a.unqueued--,w.queue(e,"fx").length||a.empty.fire()})}));for(r in t)if(i=t[r],it.test(i)){if(delete t[r],o=o||"toggle"===i,i===(g?"hide":"show")){if("show"!==i||!y||void 0===y[r])continue;g=!0}d[r]=y&&y[r]||w.style(e,r)}if((u=!w.isEmptyObject(t))||!w.isEmptyObject(d)){f&&1===e.nodeType&&(n.overflow=[h.overflow,h.overflowX,h.overflowY],null==(l=y&&y.display)&&(l=J.get(e,"display")),"none"===(c=w.css(e,"display"))&&(l?c=l:(fe([e],!0),l=e.style.display||l,c=w.css(e,"display"),fe([e]))),("inline"===c||"inline-block"===c&&null!=l)&&"none"===w.css(e,"float")&&(u||(p.done(function(){h.display=l}),null==l&&(c=h.display,l="none"===c?"":c)),h.display="inline-block")),n.overflow&&(h.overflow="hidden",p.always(function(){h.overflow=n.overflow[0],h.overflowX=n.overflow[1],h.overflowY=n.overflow[2]})),u=!1;for(r in d)u||(y?"hidden"in y&&(g=y.hidden):y=J.access(e,"fxshow",{display:l}),o&&(y.hidden=!g),g&&fe([e],!0),p.done(function(){g||fe([e]),J.remove(e,"fxshow");for(r in d)w.style(e,r,d[r])})),u=lt(g?y[r]:0,r,p),r in y||(y[r]=u.start,g&&(u.end=u.start,u.start=0))}}function ft(e,t){var n,r,i,o,a;for(n in e)if(r=G(n),i=t[r],o=e[n],Array.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),(a=w.cssHooks[r])&&"expand"in a){o=a.expand(o),delete e[r];for(n in o)n in e||(e[n]=o[n],t[n]=i)}else t[r]=i}function pt(e,t,n){var r,i,o=0,a=pt.prefilters.length,s=w.Deferred().always(function(){delete u.elem}),u=function(){if(i)return!1;for(var t=nt||st(),n=Math.max(0,l.startTime+l.duration-t),r=1-(n/l.duration||0),o=0,a=l.tweens.length;o<a;o++)l.tweens[o].run(r);return s.notifyWith(e,[l,r,n]),r<1&&a?n:(a||s.notifyWith(e,[l,1,0]),s.resolveWith(e,[l]),!1)},l=s.promise({elem:e,props:w.extend({},t),opts:w.extend(!0,{specialEasing:{},easing:w.easing._default},n),originalProperties:t,originalOptions:n,startTime:nt||st(),duration:n.duration,tweens:[],createTween:function(t,n){var r=w.Tween(e,l.opts,t,n,l.opts.specialEasing[t]||l.opts.easing);return l.tweens.push(r),r},stop:function(t){var n=0,r=t?l.tweens.length:0;if(i)return this;for(i=!0;n<r;n++)l.tweens[n].run(1);return t?(s.notifyWith(e,[l,1,0]),s.resolveWith(e,[l,t])):s.rejectWith(e,[l,t]),this}}),c=l.props;for(ft(c,l.opts.specialEasing);o<a;o++)if(r=pt.prefilters[o].call(l,e,c,l.opts))return g(r.stop)&&(w._queueHooks(l.elem,l.opts.queue).stop=r.stop.bind(r)),r;return w.map(c,lt,l),g(l.opts.start)&&l.opts.start.call(e,l),l.progress(l.opts.progress).done(l.opts.done,l.opts.complete).fail(l.opts.fail).always(l.opts.always),w.fx.timer(w.extend(u,{elem:e,anim:l,queue:l.opts.queue})),l}w.Animation=w.extend(pt,{tweeners:{"*":[function(e,t){var n=this.createTween(e,t);return ue(n.elem,e,ie.exec(t),n),n}]},tweener:function(e,t){g(e)?(t=e,e=["*"]):e=e.match(M);for(var n,r=0,i=e.length;r<i;r++)n=e[r],pt.tweeners[n]=pt.tweeners[n]||[],pt.tweeners[n].unshift(t)},prefilters:[ct],prefilter:function(e,t){t?pt.prefilters.unshift(e):pt.prefilters.push(e)}}),w.speed=function(e,t,n){var r=e&&"object"==typeof e?w.extend({},e):{complete:n||!n&&t||g(e)&&e,duration:e,easing:n&&t||t&&!g(t)&&t};return w.fx.off?r.duration=0:"number"!=typeof r.duration&&(r.duration in w.fx.speeds?r.duration=w.fx.speeds[r.duration]:r.duration=w.fx.speeds._default),null!=r.queue&&!0!==r.queue||(r.queue="fx"),r.old=r.complete,r.complete=function(){g(r.old)&&r.old.call(this),r.queue&&w.dequeue(this,r.queue)},r},w.fn.extend({fadeTo:function(e,t,n,r){return this.filter(ae).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(e,t,n,r){var i=w.isEmptyObject(e),o=w.speed(t,n,r),a=function(){var t=pt(this,w.extend({},e),o);(i||J.get(this,"finish"))&&t.stop(!0)};return a.finish=a,i||!1===o.queue?this.each(a):this.queue(o.queue,a)},stop:function(e,t,n){var r=function(e){var t=e.stop;delete e.stop,t(n)};return"string"!=typeof e&&(n=t,t=e,e=void 0),t&&!1!==e&&this.queue(e||"fx",[]),this.each(function(){var t=!0,i=null!=e&&e+"queueHooks",o=w.timers,a=J.get(this);if(i)a[i]&&a[i].stop&&r(a[i]);else for(i in a)a[i]&&a[i].stop&&ot.test(i)&&r(a[i]);for(i=o.length;i--;)o[i].elem!==this||null!=e&&o[i].queue!==e||(o[i].anim.stop(n),t=!1,o.splice(i,1));!t&&n||w.dequeue(this,e)})},finish:function(e){return!1!==e&&(e=e||"fx"),this.each(function(){var t,n=J.get(this),r=n[e+"queue"],i=n[e+"queueHooks"],o=w.timers,a=r?r.length:0;for(n.finish=!0,w.queue(this,e,[]),i&&i.stop&&i.stop.call(this,!0),t=o.length;t--;)o[t].elem===this&&o[t].queue===e&&(o[t].anim.stop(!0),o.splice(t,1));for(t=0;t<a;t++)r[t]&&r[t].finish&&r[t].finish.call(this);delete n.finish})}}),w.each(["toggle","show","hide"],function(e,t){var n=w.fn[t];w.fn[t]=function(e,r,i){return null==e||"boolean"==typeof e?n.apply(this,arguments):this.animate(ut(t,!0),e,r,i)}}),w.each({slideDown:ut("show"),slideUp:ut("hide"),slideToggle:ut("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,t){w.fn[e]=function(e,n,r){return this.animate(t,e,n,r)}}),w.timers=[],w.fx.tick=function(){var e,t=0,n=w.timers;for(nt=Date.now();t<n.length;t++)(e=n[t])()||n[t]!==e||n.splice(t--,1);n.length||w.fx.stop(),nt=void 0},w.fx.timer=function(e){w.timers.push(e),w.fx.start()},w.fx.interval=13,w.fx.start=function(){rt||(rt=!0,at())},w.fx.stop=function(){rt=null},w.fx.speeds={slow:600,fast:200,_default:400},w.fn.delay=function(t,n){return t=w.fx?w.fx.speeds[t]||t:t,n=n||"fx",this.queue(n,function(n,r){var i=e.setTimeout(n,t);r.stop=function(){e.clearTimeout(i)}})},function(){var e=r.createElement("input"),t=r.createElement("select").appendChild(r.createElement("option"));e.type="checkbox",h.checkOn=""!==e.value,h.optSelected=t.selected,(e=r.createElement("input")).value="t",e.type="radio",h.radioValue="t"===e.value}();var dt,ht=w.expr.attrHandle;w.fn.extend({attr:function(e,t){return z(this,w.attr,e,t,arguments.length>1)},removeAttr:function(e){return this.each(function(){w.removeAttr(this,e)})}}),w.extend({attr:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return"undefined"==typeof e.getAttribute?w.prop(e,t,n):(1===o&&w.isXMLDoc(e)||(i=w.attrHooks[t.toLowerCase()]||(w.expr.match.bool.test(t)?dt:void 0)),void 0!==n?null===n?void w.removeAttr(e,t):i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:(e.setAttribute(t,n+""),n):i&&"get"in i&&null!==(r=i.get(e,t))?r:null==(r=w.find.attr(e,t))?void 0:r)},attrHooks:{type:{set:function(e,t){if(!h.radioValue&&"radio"===t&&N(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},removeAttr:function(e,t){var n,r=0,i=t&&t.match(M);if(i&&1===e.nodeType)while(n=i[r++])e.removeAttribute(n)}}),dt={set:function(e,t,n){return!1===t?w.removeAttr(e,n):e.setAttribute(n,n),n}},w.each(w.expr.match.bool.source.match(/\w+/g),function(e,t){var n=ht[t]||w.find.attr;ht[t]=function(e,t,r){var i,o,a=t.toLowerCase();return r||(o=ht[a],ht[a]=i,i=null!=n(e,t,r)?a:null,ht[a]=o),i}});var gt=/^(?:input|select|textarea|button)$/i,yt=/^(?:a|area)$/i;w.fn.extend({prop:function(e,t){return z(this,w.prop,e,t,arguments.length>1)},removeProp:function(e){return this.each(function(){delete this[w.propFix[e]||e]})}}),w.extend({prop:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return 1===o&&w.isXMLDoc(e)||(t=w.propFix[t]||t,i=w.propHooks[t]),void 0!==n?i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:e[t]=n:i&&"get"in i&&null!==(r=i.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=w.find.attr(e,"tabindex");return t?parseInt(t,10):gt.test(e.nodeName)||yt.test(e.nodeName)&&e.href?0:-1}}},propFix:{"for":"htmlFor","class":"className"}}),h.optSelected||(w.propHooks.selected={get:function(e){var t=e.parentNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:function(e){var t=e.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex)}}),w.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){w.propFix[this.toLowerCase()]=this});function vt(e){return(e.match(M)||[]).join(" ")}function mt(e){return e.getAttribute&&e.getAttribute("class")||""}function xt(e){return Array.isArray(e)?e:"string"==typeof e?e.match(M)||[]:[]}w.fn.extend({addClass:function(e){var t,n,r,i,o,a,s,u=0;if(g(e))return this.each(function(t){w(this).addClass(e.call(this,t,mt(this)))});if((t=xt(e)).length)while(n=this[u++])if(i=mt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=t[a++])r.indexOf(" "+o+" ")<0&&(r+=o+" ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},removeClass:function(e){var t,n,r,i,o,a,s,u=0;if(g(e))return this.each(function(t){w(this).removeClass(e.call(this,t,mt(this)))});if(!arguments.length)return this.attr("class","");if((t=xt(e)).length)while(n=this[u++])if(i=mt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=t[a++])while(r.indexOf(" "+o+" ")>-1)r=r.replace(" "+o+" "," ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},toggleClass:function(e,t){var n=typeof e,r="string"===n||Array.isArray(e);return"boolean"==typeof t&&r?t?this.addClass(e):this.removeClass(e):g(e)?this.each(function(n){w(this).toggleClass(e.call(this,n,mt(this),t),t)}):this.each(function(){var t,i,o,a;if(r){i=0,o=w(this),a=xt(e);while(t=a[i++])o.hasClass(t)?o.removeClass(t):o.addClass(t)}else void 0!==e&&"boolean"!==n||((t=mt(this))&&J.set(this,"__className__",t),this.setAttribute&&this.setAttribute("class",t||!1===e?"":J.get(this,"__className__")||""))})},hasClass:function(e){var t,n,r=0;t=" "+e+" ";while(n=this[r++])if(1===n.nodeType&&(" "+vt(mt(n))+" ").indexOf(t)>-1)return!0;return!1}});var bt=/\r/g;w.fn.extend({val:function(e){var t,n,r,i=this[0];{if(arguments.length)return r=g(e),this.each(function(n){var i;1===this.nodeType&&(null==(i=r?e.call(this,n,w(this).val()):e)?i="":"number"==typeof i?i+="":Array.isArray(i)&&(i=w.map(i,function(e){return null==e?"":e+""})),(t=w.valHooks[this.type]||w.valHooks[this.nodeName.toLowerCase()])&&"set"in t&&void 0!==t.set(this,i,"value")||(this.value=i))});if(i)return(t=w.valHooks[i.type]||w.valHooks[i.nodeName.toLowerCase()])&&"get"in t&&void 0!==(n=t.get(i,"value"))?n:"string"==typeof(n=i.value)?n.replace(bt,""):null==n?"":n}}}),w.extend({valHooks:{option:{get:function(e){var t=w.find.attr(e,"value");return null!=t?t:vt(w.text(e))}},select:{get:function(e){var t,n,r,i=e.options,o=e.selectedIndex,a="select-one"===e.type,s=a?null:[],u=a?o+1:i.length;for(r=o<0?u:a?o:0;r<u;r++)if(((n=i[r]).selected||r===o)&&!n.disabled&&(!n.parentNode.disabled||!N(n.parentNode,"optgroup"))){if(t=w(n).val(),a)return t;s.push(t)}return s},set:function(e,t){var n,r,i=e.options,o=w.makeArray(t),a=i.length;while(a--)((r=i[a]).selected=w.inArray(w.valHooks.option.get(r),o)>-1)&&(n=!0);return n||(e.selectedIndex=-1),o}}}}),w.each(["radio","checkbox"],function(){w.valHooks[this]={set:function(e,t){if(Array.isArray(t))return e.checked=w.inArray(w(e).val(),t)>-1}},h.checkOn||(w.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})}),h.focusin="onfocusin"in e;var wt=/^(?:focusinfocus|focusoutblur)$/,Tt=function(e){e.stopPropagation()};w.extend(w.event,{trigger:function(t,n,i,o){var a,s,u,l,c,p,d,h,v=[i||r],m=f.call(t,"type")?t.type:t,x=f.call(t,"namespace")?t.namespace.split("."):[];if(s=h=u=i=i||r,3!==i.nodeType&&8!==i.nodeType&&!wt.test(m+w.event.triggered)&&(m.indexOf(".")>-1&&(m=(x=m.split(".")).shift(),x.sort()),c=m.indexOf(":")<0&&"on"+m,t=t[w.expando]?t:new w.Event(m,"object"==typeof t&&t),t.isTrigger=o?2:3,t.namespace=x.join("."),t.rnamespace=t.namespace?new RegExp("(^|\\.)"+x.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,t.result=void 0,t.target||(t.target=i),n=null==n?[t]:w.makeArray(n,[t]),d=w.event.special[m]||{},o||!d.trigger||!1!==d.trigger.apply(i,n))){if(!o&&!d.noBubble&&!y(i)){for(l=d.delegateType||m,wt.test(l+m)||(s=s.parentNode);s;s=s.parentNode)v.push(s),u=s;u===(i.ownerDocument||r)&&v.push(u.defaultView||u.parentWindow||e)}a=0;while((s=v[a++])&&!t.isPropagationStopped())h=s,t.type=a>1?l:d.bindType||m,(p=(J.get(s,"events")||{})[t.type]&&J.get(s,"handle"))&&p.apply(s,n),(p=c&&s[c])&&p.apply&&Y(s)&&(t.result=p.apply(s,n),!1===t.result&&t.preventDefault());return t.type=m,o||t.isDefaultPrevented()||d._default&&!1!==d._default.apply(v.pop(),n)||!Y(i)||c&&g(i[m])&&!y(i)&&((u=i[c])&&(i[c]=null),w.event.triggered=m,t.isPropagationStopped()&&h.addEventListener(m,Tt),i[m](),t.isPropagationStopped()&&h.removeEventListener(m,Tt),w.event.triggered=void 0,u&&(i[c]=u)),t.result}},simulate:function(e,t,n){var r=w.extend(new w.Event,n,{type:e,isSimulated:!0});w.event.trigger(r,null,t)}}),w.fn.extend({trigger:function(e,t){return this.each(function(){w.event.trigger(e,t,this)})},triggerHandler:function(e,t){var n=this[0];if(n)return w.event.trigger(e,t,n,!0)}}),h.focusin||w.each({focus:"focusin",blur:"focusout"},function(e,t){var n=function(e){w.event.simulate(t,e.target,w.event.fix(e))};w.event.special[t]={setup:function(){var r=this.ownerDocument||this,i=J.access(r,t);i||r.addEventListener(e,n,!0),J.access(r,t,(i||0)+1)},teardown:function(){var r=this.ownerDocument||this,i=J.access(r,t)-1;i?J.access(r,t,i):(r.removeEventListener(e,n,!0),J.remove(r,t))}}});var Ct=e.location,Et=Date.now(),kt=/\?/;w.parseXML=function(t){var n;if(!t||"string"!=typeof t)return null;try{n=(new e.DOMParser).parseFromString(t,"text/xml")}catch(e){n=void 0}return n&&!n.getElementsByTagName("parsererror").length||w.error("Invalid XML: "+t),n};var St=/\[\]$/,Dt=/\r?\n/g,Nt=/^(?:submit|button|image|reset|file)$/i,At=/^(?:input|select|textarea|keygen)/i;function jt(e,t,n,r){var i;if(Array.isArray(t))w.each(t,function(t,i){n||St.test(e)?r(e,i):jt(e+"["+("object"==typeof i&&null!=i?t:"")+"]",i,n,r)});else if(n||"object"!==x(t))r(e,t);else for(i in t)jt(e+"["+i+"]",t[i],n,r)}w.param=function(e,t){var n,r=[],i=function(e,t){var n=g(t)?t():t;r[r.length]=encodeURIComponent(e)+"="+encodeURIComponent(null==n?"":n)};if(Array.isArray(e)||e.jquery&&!w.isPlainObject(e))w.each(e,function(){i(this.name,this.value)});else for(n in e)jt(n,e[n],t,i);return r.join("&")},w.fn.extend({serialize:function(){return w.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=w.prop(this,"elements");return e?w.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!w(this).is(":disabled")&&At.test(this.nodeName)&&!Nt.test(e)&&(this.checked||!pe.test(e))}).map(function(e,t){var n=w(this).val();return null==n?null:Array.isArray(n)?w.map(n,function(e){return{name:t.name,value:e.replace(Dt,"\r\n")}}):{name:t.name,value:n.replace(Dt,"\r\n")}}).get()}});var qt=/%20/g,Lt=/#.*$/,Ht=/([?&])_=[^&]*/,Ot=/^(.*?):[ \t]*([^\r\n]*)$/gm,Pt=/^(?:about|app|app-storage|.+-extension|file|res|widget):$/,Mt=/^(?:GET|HEAD)$/,Rt=/^\/\//,It={},Wt={},$t="*/".concat("*"),Bt=r.createElement("a");Bt.href=Ct.href;function Ft(e){return function(t,n){"string"!=typeof t&&(n=t,t="*");var r,i=0,o=t.toLowerCase().match(M)||[];if(g(n))while(r=o[i++])"+"===r[0]?(r=r.slice(1)||"*",(e[r]=e[r]||[]).unshift(n)):(e[r]=e[r]||[]).push(n)}}function _t(e,t,n,r){var i={},o=e===Wt;function a(s){var u;return i[s]=!0,w.each(e[s]||[],function(e,s){var l=s(t,n,r);return"string"!=typeof l||o||i[l]?o?!(u=l):void 0:(t.dataTypes.unshift(l),a(l),!1)}),u}return a(t.dataTypes[0])||!i["*"]&&a("*")}function zt(e,t){var n,r,i=w.ajaxSettings.flatOptions||{};for(n in t)void 0!==t[n]&&((i[n]?e:r||(r={}))[n]=t[n]);return r&&w.extend(!0,e,r),e}function Xt(e,t,n){var r,i,o,a,s=e.contents,u=e.dataTypes;while("*"===u[0])u.shift(),void 0===r&&(r=e.mimeType||t.getResponseHeader("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){u.unshift(i);break}if(u[0]in n)o=u[0];else{for(i in n){if(!u[0]||e.converters[i+" "+u[0]]){o=i;break}a||(a=i)}o=o||a}if(o)return o!==u[0]&&u.unshift(o),n[o]}function Ut(e,t,n,r){var i,o,a,s,u,l={},c=e.dataTypes.slice();if(c[1])for(a in e.converters)l[a.toLowerCase()]=e.converters[a];o=c.shift();while(o)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!u&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),u=o,o=c.shift())if("*"===o)o=u;else if("*"!==u&&u!==o){if(!(a=l[u+" "+o]||l["* "+o]))for(i in l)if((s=i.split(" "))[1]===o&&(a=l[u+" "+s[0]]||l["* "+s[0]])){!0===a?a=l[i]:!0!==l[i]&&(o=s[0],c.unshift(s[1]));break}if(!0!==a)if(a&&e["throws"])t=a(t);else try{t=a(t)}catch(e){return{state:"parsererror",error:a?e:"No conversion from "+u+" to "+o}}}return{state:"success",data:t}}w.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:Ct.href,type:"GET",isLocal:Pt.test(Ct.protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":$t,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":w.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?zt(zt(e,w.ajaxSettings),t):zt(w.ajaxSettings,e)},ajaxPrefilter:Ft(It),ajaxTransport:Ft(Wt),ajax:function(t,n){"object"==typeof t&&(n=t,t=void 0),n=n||{};var i,o,a,s,u,l,c,f,p,d,h=w.ajaxSetup({},n),g=h.context||h,y=h.context&&(g.nodeType||g.jquery)?w(g):w.event,v=w.Deferred(),m=w.Callbacks("once memory"),x=h.statusCode||{},b={},T={},C="canceled",E={readyState:0,getResponseHeader:function(e){var t;if(c){if(!s){s={};while(t=Ot.exec(a))s[t[1].toLowerCase()]=t[2]}t=s[e.toLowerCase()]}return null==t?null:t},getAllResponseHeaders:function(){return c?a:null},setRequestHeader:function(e,t){return null==c&&(e=T[e.toLowerCase()]=T[e.toLowerCase()]||e,b[e]=t),this},overrideMimeType:function(e){return null==c&&(h.mimeType=e),this},statusCode:function(e){var t;if(e)if(c)E.always(e[E.status]);else for(t in e)x[t]=[x[t],e[t]];return this},abort:function(e){var t=e||C;return i&&i.abort(t),k(0,t),this}};if(v.promise(E),h.url=((t||h.url||Ct.href)+"").replace(Rt,Ct.protocol+"//"),h.type=n.method||n.type||h.method||h.type,h.dataTypes=(h.dataType||"*").toLowerCase().match(M)||[""],null==h.crossDomain){l=r.createElement("a");try{l.href=h.url,l.href=l.href,h.crossDomain=Bt.protocol+"//"+Bt.host!=l.protocol+"//"+l.host}catch(e){h.crossDomain=!0}}if(h.data&&h.processData&&"string"!=typeof h.data&&(h.data=w.param(h.data,h.traditional)),_t(It,h,n,E),c)return E;(f=w.event&&h.global)&&0==w.active++&&w.event.trigger("ajaxStart"),h.type=h.type.toUpperCase(),h.hasContent=!Mt.test(h.type),o=h.url.replace(Lt,""),h.hasContent?h.data&&h.processData&&0===(h.contentType||"").indexOf("application/x-www-form-urlencoded")&&(h.data=h.data.replace(qt,"+")):(d=h.url.slice(o.length),h.data&&(h.processData||"string"==typeof h.data)&&(o+=(kt.test(o)?"&":"?")+h.data,delete h.data),!1===h.cache&&(o=o.replace(Ht,"$1"),d=(kt.test(o)?"&":"?")+"_="+Et+++d),h.url=o+d),h.ifModified&&(w.lastModified[o]&&E.setRequestHeader("If-Modified-Since",w.lastModified[o]),w.etag[o]&&E.setRequestHeader("If-None-Match",w.etag[o])),(h.data&&h.hasContent&&!1!==h.contentType||n.contentType)&&E.setRequestHeader("Content-Type",h.contentType),E.setRequestHeader("Accept",h.dataTypes[0]&&h.accepts[h.dataTypes[0]]?h.accepts[h.dataTypes[0]]+("*"!==h.dataTypes[0]?", "+$t+"; q=0.01":""):h.accepts["*"]);for(p in h.headers)E.setRequestHeader(p,h.headers[p]);if(h.beforeSend&&(!1===h.beforeSend.call(g,E,h)||c))return E.abort();if(C="abort",m.add(h.complete),E.done(h.success),E.fail(h.error),i=_t(Wt,h,n,E)){if(E.readyState=1,f&&y.trigger("ajaxSend",[E,h]),c)return E;h.async&&h.timeout>0&&(u=e.setTimeout(function(){E.abort("timeout")},h.timeout));try{c=!1,i.send(b,k)}catch(e){if(c)throw e;k(-1,e)}}else k(-1,"No Transport");function k(t,n,r,s){var l,p,d,b,T,C=n;c||(c=!0,u&&e.clearTimeout(u),i=void 0,a=s||"",E.readyState=t>0?4:0,l=t>=200&&t<300||304===t,r&&(b=Xt(h,E,r)),b=Ut(h,b,E,l),l?(h.ifModified&&((T=E.getResponseHeader("Last-Modified"))&&(w.lastModified[o]=T),(T=E.getResponseHeader("etag"))&&(w.etag[o]=T)),204===t||"HEAD"===h.type?C="nocontent":304===t?C="notmodified":(C=b.state,p=b.data,l=!(d=b.error))):(d=C,!t&&C||(C="error",t<0&&(t=0))),E.status=t,E.statusText=(n||C)+"",l?v.resolveWith(g,[p,C,E]):v.rejectWith(g,[E,C,d]),E.statusCode(x),x=void 0,f&&y.trigger(l?"ajaxSuccess":"ajaxError",[E,h,l?p:d]),m.fireWith(g,[E,C]),f&&(y.trigger("ajaxComplete",[E,h]),--w.active||w.event.trigger("ajaxStop")))}return E},getJSON:function(e,t,n){return w.get(e,t,n,"json")},getScript:function(e,t){return w.get(e,void 0,t,"script")}}),w.each(["get","post"],function(e,t){w[t]=function(e,n,r,i){return g(n)&&(i=i||r,r=n,n=void 0),w.ajax(w.extend({url:e,type:t,dataType:i,data:n,success:r},w.isPlainObject(e)&&e))}}),w._evalUrl=function(e){return w.ajax({url:e,type:"GET",dataType:"script",cache:!0,async:!1,global:!1,"throws":!0})},w.fn.extend({wrapAll:function(e){var t;return this[0]&&(g(e)&&(e=e.call(this[0])),t=w(e,this[0].ownerDocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstElementChild)e=e.firstElementChild;return e}).append(this)),this},wrapInner:function(e){return g(e)?this.each(function(t){w(this).wrapInner(e.call(this,t))}):this.each(function(){var t=w(this),n=t.contents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){var t=g(e);return this.each(function(n){w(this).wrapAll(t?e.call(this,n):e)})},unwrap:function(e){return this.parent(e).not("body").each(function(){w(this).replaceWith(this.childNodes)}),this}}),w.expr.pseudos.hidden=function(e){return!w.expr.pseudos.visible(e)},w.expr.pseudos.visible=function(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},w.ajaxSettings.xhr=function(){try{return new e.XMLHttpRequest}catch(e){}};var Vt={0:200,1223:204},Gt=w.ajaxSettings.xhr();h.cors=!!Gt&&"withCredentials"in Gt,h.ajax=Gt=!!Gt,w.ajaxTransport(function(t){var n,r;if(h.cors||Gt&&!t.crossDomain)return{send:function(i,o){var a,s=t.xhr();if(s.open(t.type,t.url,t.async,t.username,t.password),t.xhrFields)for(a in t.xhrFields)s[a]=t.xhrFields[a];t.mimeType&&s.overrideMimeType&&s.overrideMimeType(t.mimeType),t.crossDomain||i["X-Requested-With"]||(i["X-Requested-With"]="XMLHttpRequest");for(a in i)s.setRequestHeader(a,i[a]);n=function(e){return function(){n&&(n=r=s.onload=s.onerror=s.onabort=s.ontimeout=s.onreadystatechange=null,"abort"===e?s.abort():"error"===e?"number"!=typeof s.status?o(0,"error"):o(s.status,s.statusText):o(Vt[s.status]||s.status,s.statusText,"text"!==(s.responseType||"text")||"string"!=typeof s.responseText?{binary:s.response}:{text:s.responseText},s.getAllResponseHeaders()))}},s.onload=n(),r=s.onerror=s.ontimeout=n("error"),void 0!==s.onabort?s.onabort=r:s.onreadystatechange=function(){4===s.readyState&&e.setTimeout(function(){n&&r()})},n=n("abort");try{s.send(t.hasContent&&t.data||null)}catch(e){if(n)throw e}},abort:function(){n&&n()}}}),w.ajaxPrefilter(function(e){e.crossDomain&&(e.contents.script=!1)}),w.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text script":function(e){return w.globalEval(e),e}}}),w.ajaxPrefilter("script",function(e){void 0===e.cache&&(e.cache=!1),e.crossDomain&&(e.type="GET")}),w.ajaxTransport("script",function(e){if(e.crossDomain){var t,n;return{send:function(i,o){t=w("<script>").prop({charset:e.scriptCharset,src:e.url}).on("load error",n=function(e){t.remove(),n=null,e&&o("error"===e.type?404:200,e.type)}),r.head.appendChild(t[0])},abort:function(){n&&n()}}}});var Yt=[],Qt=/(=)\?(?=&|$)|\?\?/;w.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Yt.pop()||w.expando+"_"+Et++;return this[e]=!0,e}}),w.ajaxPrefilter("json jsonp",function(t,n,r){var i,o,a,s=!1!==t.jsonp&&(Qt.test(t.url)?"url":"string"==typeof t.data&&0===(t.contentType||"").indexOf("application/x-www-form-urlencoded")&&Qt.test(t.data)&&"data");if(s||"jsonp"===t.dataTypes[0])return i=t.jsonpCallback=g(t.jsonpCallback)?t.jsonpCallback():t.jsonpCallback,s?t[s]=t[s].replace(Qt,"$1"+i):!1!==t.jsonp&&(t.url+=(kt.test(t.url)?"&":"?")+t.jsonp+"="+i),t.converters["script json"]=function(){return a||w.error(i+" was not called"),a[0]},t.dataTypes[0]="json",o=e[i],e[i]=function(){a=arguments},r.always(function(){void 0===o?w(e).removeProp(i):e[i]=o,t[i]&&(t.jsonpCallback=n.jsonpCallback,Yt.push(i)),a&&g(o)&&o(a[0]),a=o=void 0}),"script"}),h.createHTMLDocument=function(){var e=r.implementation.createHTMLDocument("").body;return e.innerHTML="<form></form><form></form>",2===e.childNodes.length}(),w.parseHTML=function(e,t,n){if("string"!=typeof e)return[];"boolean"==typeof t&&(n=t,t=!1);var i,o,a;return t||(h.createHTMLDocument?((i=(t=r.implementation.createHTMLDocument("")).createElement("base")).href=r.location.href,t.head.appendChild(i)):t=r),o=A.exec(e),a=!n&&[],o?[t.createElement(o[1])]:(o=xe([e],t,a),a&&a.length&&w(a).remove(),w.merge([],o.childNodes))},w.fn.load=function(e,t,n){var r,i,o,a=this,s=e.indexOf(" ");return s>-1&&(r=vt(e.slice(s)),e=e.slice(0,s)),g(t)?(n=t,t=void 0):t&&"object"==typeof t&&(i="POST"),a.length>0&&w.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=arguments,a.html(r?w("<div>").append(w.parseHTML(e)).find(r):e)}).always(n&&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),this},w.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){w.fn[t]=function(e){return this.on(t,e)}}),w.expr.pseudos.animated=function(e){return w.grep(w.timers,function(t){return e===t.elem}).length},w.offset={setOffset:function(e,t,n){var r,i,o,a,s,u,l,c=w.css(e,"position"),f=w(e),p={};"static"===c&&(e.style.position="relative"),s=f.offset(),o=w.css(e,"top"),u=w.css(e,"left"),(l=("absolute"===c||"fixed"===c)&&(o+u).indexOf("auto")>-1)?(a=(r=f.position()).top,i=r.left):(a=parseFloat(o)||0,i=parseFloat(u)||0),g(t)&&(t=t.call(e,n,w.extend({},s))),null!=t.top&&(p.top=t.top-s.top+a),null!=t.left&&(p.left=t.left-s.left+i),"using"in t?t.using.call(e,p):f.css(p)}},w.fn.extend({offset:function(e){if(arguments.length)return void 0===e?this:this.each(function(t){w.offset.setOffset(this,e,t)});var t,n,r=this[0];if(r)return r.getClientRects().length?(t=r.getBoundingClientRect(),n=r.ownerDocument.defaultView,{top:t.top+n.pageYOffset,left:t.left+n.pageXOffset}):{top:0,left:0}},position:function(){if(this[0]){var e,t,n,r=this[0],i={top:0,left:0};if("fixed"===w.css(r,"position"))t=r.getBoundingClientRect();else{t=this.offset(),n=r.ownerDocument,e=r.offsetParent||n.documentElement;while(e&&(e===n.body||e===n.documentElement)&&"static"===w.css(e,"position"))e=e.parentNode;e&&e!==r&&1===e.nodeType&&((i=w(e).offset()).top+=w.css(e,"borderTopWidth",!0),i.left+=w.css(e,"borderLeftWidth",!0))}return{top:t.top-i.top-w.css(r,"marginTop",!0),left:t.left-i.left-w.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var e=this.offsetParent;while(e&&"static"===w.css(e,"position"))e=e.offsetParent;return e||be})}}),w.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(e,t){var n="pageYOffset"===t;w.fn[e]=function(r){return z(this,function(e,r,i){var o;if(y(e)?o=e:9===e.nodeType&&(o=e.defaultView),void 0===i)return o?o[t]:e[r];o?o.scrollTo(n?o.pageXOffset:i,n?i:o.pageYOffset):e[r]=i},e,r,arguments.length)}}),w.each(["top","left"],function(e,t){w.cssHooks[t]=_e(h.pixelPosition,function(e,n){if(n)return n=Fe(e,t),We.test(n)?w(e).position()[t]+"px":n})}),w.each({Height:"height",Width:"width"},function(e,t){w.each({padding:"inner"+e,content:t,"":"outer"+e},function(n,r){w.fn[r]=function(i,o){var a=arguments.length&&(n||"boolean"!=typeof i),s=n||(!0===i||!0===o?"margin":"border");return z(this,function(t,n,i){var o;return y(t)?0===r.indexOf("outer")?t["inner"+e]:t.document.documentElement["client"+e]:9===t.nodeType?(o=t.documentElement,Math.max(t.body["scroll"+e],o["scroll"+e],t.body["offset"+e],o["offset"+e],o["client"+e])):void 0===i?w.css(t,n,s):w.style(t,n,i,s)},t,a?i:void 0,a)}})}),w.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "),function(e,t){w.fn[t]=function(e,n){return arguments.length>0?this.on(t,null,e,n):this.trigger(t)}}),w.fn.extend({hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),w.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)}}),w.proxy=function(e,t){var n,r,i;if("string"==typeof t&&(n=e[t],t=e,e=n),g(e))return r=o.call(arguments,2),i=function(){return e.apply(t||this,r.concat(o.call(arguments)))},i.guid=e.guid=e.guid||w.guid++,i},w.holdReady=function(e){e?w.readyWait++:w.ready(!0)},w.isArray=Array.isArray,w.parseJSON=JSON.parse,w.nodeName=N,w.isFunction=g,w.isWindow=y,w.camelCase=G,w.type=x,w.now=Date.now,w.isNumeric=function(e){var t=w.type(e);return("number"===t||"string"===t)&&!isNaN(e-parseFloat(e))},"function"==typeof define&&define.amd&&define("jquery",[],function(){return w});var Jt=e.jQuery,Kt=e.$;return w.noConflict=function(t){return e.$===w&&(e.$=Kt),t&&e.jQuery===w&&(e.jQuery=Jt),w},t||(e.jQuery=e.$=w),w});
/*
 Copyright (C) Federico Zivolo 2019
 Distributed under the MIT License (license terms are at http://opensource.org/licenses/MIT).
 */(function(e,t){'object'==typeof exports&&'undefined'!=typeof module?module.exports=t():'function'==typeof define&&define.amd?define(t):e.Popper=t()})(this,function(){'use strict';function e(e){return e&&'[object Function]'==={}.toString.call(e)}function t(e,t){if(1!==e.nodeType)return[];var o=e.ownerDocument.defaultView,n=o.getComputedStyle(e,null);return t?n[t]:n}function o(e){return'HTML'===e.nodeName?e:e.parentNode||e.host}function n(e){if(!e)return document.body;switch(e.nodeName){case'HTML':case'BODY':return e.ownerDocument.body;case'#document':return e.body;}var i=t(e),r=i.overflow,p=i.overflowX,s=i.overflowY;return /(auto|scroll|overlay)/.test(r+s+p)?e:n(o(e))}function r(e){return 11===e?pe:10===e?se:pe||se}function p(e){if(!e)return document.documentElement;for(var o=r(10)?document.body:null,n=e.offsetParent||null;n===o&&e.nextElementSibling;)n=(e=e.nextElementSibling).offsetParent;var i=n&&n.nodeName;return i&&'BODY'!==i&&'HTML'!==i?-1!==['TH','TD','TABLE'].indexOf(n.nodeName)&&'static'===t(n,'position')?p(n):n:e?e.ownerDocument.documentElement:document.documentElement}function s(e){var t=e.nodeName;return'BODY'!==t&&('HTML'===t||p(e.firstElementChild)===e)}function d(e){return null===e.parentNode?e:d(e.parentNode)}function a(e,t){if(!e||!e.nodeType||!t||!t.nodeType)return document.documentElement;var o=e.compareDocumentPosition(t)&Node.DOCUMENT_POSITION_FOLLOWING,n=o?e:t,i=o?t:e,r=document.createRange();r.setStart(n,0),r.setEnd(i,0);var l=r.commonAncestorContainer;if(e!==l&&t!==l||n.contains(i))return s(l)?l:p(l);var f=d(e);return f.host?a(f.host,t):a(e,d(t).host)}function l(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:'top',o='top'===t?'scrollTop':'scrollLeft',n=e.nodeName;if('BODY'===n||'HTML'===n){var i=e.ownerDocument.documentElement,r=e.ownerDocument.scrollingElement||i;return r[o]}return e[o]}function f(e,t){var o=2<arguments.length&&void 0!==arguments[2]&&arguments[2],n=l(t,'top'),i=l(t,'left'),r=o?-1:1;return e.top+=n*r,e.bottom+=n*r,e.left+=i*r,e.right+=i*r,e}function m(e,t){var o='x'===t?'Left':'Top',n='Left'==o?'Right':'Bottom';return parseFloat(e['border'+o+'Width'],10)+parseFloat(e['border'+n+'Width'],10)}function h(e,t,o,n){return ee(t['offset'+e],t['scroll'+e],o['client'+e],o['offset'+e],o['scroll'+e],r(10)?parseInt(o['offset'+e])+parseInt(n['margin'+('Height'===e?'Top':'Left')])+parseInt(n['margin'+('Height'===e?'Bottom':'Right')]):0)}function c(e){var t=e.body,o=e.documentElement,n=r(10)&&getComputedStyle(o);return{height:h('Height',t,o,n),width:h('Width',t,o,n)}}function g(e){return fe({},e,{right:e.left+e.width,bottom:e.top+e.height})}function u(e){var o={};try{if(r(10)){o=e.getBoundingClientRect();var n=l(e,'top'),i=l(e,'left');o.top+=n,o.left+=i,o.bottom+=n,o.right+=i}else o=e.getBoundingClientRect()}catch(t){}var p={left:o.left,top:o.top,width:o.right-o.left,height:o.bottom-o.top},s='HTML'===e.nodeName?c(e.ownerDocument):{},d=s.width||e.clientWidth||p.right-p.left,a=s.height||e.clientHeight||p.bottom-p.top,f=e.offsetWidth-d,h=e.offsetHeight-a;if(f||h){var u=t(e);f-=m(u,'x'),h-=m(u,'y'),p.width-=f,p.height-=h}return g(p)}function b(e,o){var i=2<arguments.length&&void 0!==arguments[2]&&arguments[2],p=r(10),s='HTML'===o.nodeName,d=u(e),a=u(o),l=n(e),m=t(o),h=parseFloat(m.borderTopWidth,10),c=parseFloat(m.borderLeftWidth,10);i&&s&&(a.top=ee(a.top,0),a.left=ee(a.left,0));var b=g({top:d.top-a.top-h,left:d.left-a.left-c,width:d.width,height:d.height});if(b.marginTop=0,b.marginLeft=0,!p&&s){var w=parseFloat(m.marginTop,10),y=parseFloat(m.marginLeft,10);b.top-=h-w,b.bottom-=h-w,b.left-=c-y,b.right-=c-y,b.marginTop=w,b.marginLeft=y}return(p&&!i?o.contains(l):o===l&&'BODY'!==l.nodeName)&&(b=f(b,o)),b}function w(e){var t=1<arguments.length&&void 0!==arguments[1]&&arguments[1],o=e.ownerDocument.documentElement,n=b(e,o),i=ee(o.clientWidth,window.innerWidth||0),r=ee(o.clientHeight,window.innerHeight||0),p=t?0:l(o),s=t?0:l(o,'left'),d={top:p-n.top+n.marginTop,left:s-n.left+n.marginLeft,width:i,height:r};return g(d)}function y(e){var n=e.nodeName;if('BODY'===n||'HTML'===n)return!1;if('fixed'===t(e,'position'))return!0;var i=o(e);return!!i&&y(i)}function E(e){if(!e||!e.parentElement||r())return document.documentElement;for(var o=e.parentElement;o&&'none'===t(o,'transform');)o=o.parentElement;return o||document.documentElement}function v(e,t,i,r){var p=4<arguments.length&&void 0!==arguments[4]&&arguments[4],s={top:0,left:0},d=p?E(e):a(e,t);if('viewport'===r)s=w(d,p);else{var l;'scrollParent'===r?(l=n(o(t)),'BODY'===l.nodeName&&(l=e.ownerDocument.documentElement)):'window'===r?l=e.ownerDocument.documentElement:l=r;var f=b(l,d,p);if('HTML'===l.nodeName&&!y(d)){var m=c(e.ownerDocument),h=m.height,g=m.width;s.top+=f.top-f.marginTop,s.bottom=h+f.top,s.left+=f.left-f.marginLeft,s.right=g+f.left}else s=f}i=i||0;var u='number'==typeof i;return s.left+=u?i:i.left||0,s.top+=u?i:i.top||0,s.right-=u?i:i.right||0,s.bottom-=u?i:i.bottom||0,s}function x(e){var t=e.width,o=e.height;return t*o}function O(e,t,o,n,i){var r=5<arguments.length&&void 0!==arguments[5]?arguments[5]:0;if(-1===e.indexOf('auto'))return e;var p=v(o,n,r,i),s={top:{width:p.width,height:t.top-p.top},right:{width:p.right-t.right,height:p.height},bottom:{width:p.width,height:p.bottom-t.bottom},left:{width:t.left-p.left,height:p.height}},d=Object.keys(s).map(function(e){return fe({key:e},s[e],{area:x(s[e])})}).sort(function(e,t){return t.area-e.area}),a=d.filter(function(e){var t=e.width,n=e.height;return t>=o.clientWidth&&n>=o.clientHeight}),l=0<a.length?a[0].key:d[0].key,f=e.split('-')[1];return l+(f?'-'+f:'')}function L(e,t,o){var n=3<arguments.length&&void 0!==arguments[3]?arguments[3]:null,i=n?E(t):a(t,o);return b(o,i,n)}function S(e){var t=e.ownerDocument.defaultView,o=t.getComputedStyle(e),n=parseFloat(o.marginTop||0)+parseFloat(o.marginBottom||0),i=parseFloat(o.marginLeft||0)+parseFloat(o.marginRight||0),r={width:e.offsetWidth+i,height:e.offsetHeight+n};return r}function T(e){var t={left:'right',right:'left',bottom:'top',top:'bottom'};return e.replace(/left|right|bottom|top/g,function(e){return t[e]})}function D(e,t,o){o=o.split('-')[0];var n=S(e),i={width:n.width,height:n.height},r=-1!==['right','left'].indexOf(o),p=r?'top':'left',s=r?'left':'top',d=r?'height':'width',a=r?'width':'height';return i[p]=t[p]+t[d]/2-n[d]/2,i[s]=o===s?t[s]-n[a]:t[T(s)],i}function C(e,t){return Array.prototype.find?e.find(t):e.filter(t)[0]}function N(e,t,o){if(Array.prototype.findIndex)return e.findIndex(function(e){return e[t]===o});var n=C(e,function(e){return e[t]===o});return e.indexOf(n)}function P(t,o,n){var i=void 0===n?t:t.slice(0,N(t,'name',n));return i.forEach(function(t){t['function']&&console.warn('`modifier.function` is deprecated, use `modifier.fn`!');var n=t['function']||t.fn;t.enabled&&e(n)&&(o.offsets.popper=g(o.offsets.popper),o.offsets.reference=g(o.offsets.reference),o=n(o,t))}),o}function k(){if(!this.state.isDestroyed){var e={instance:this,styles:{},arrowStyles:{},attributes:{},flipped:!1,offsets:{}};e.offsets.reference=L(this.state,this.popper,this.reference,this.options.positionFixed),e.placement=O(this.options.placement,e.offsets.reference,this.popper,this.reference,this.options.modifiers.flip.boundariesElement,this.options.modifiers.flip.padding),e.originalPlacement=e.placement,e.positionFixed=this.options.positionFixed,e.offsets.popper=D(this.popper,e.offsets.reference,e.placement),e.offsets.popper.position=this.options.positionFixed?'fixed':'absolute',e=P(this.modifiers,e),this.state.isCreated?this.options.onUpdate(e):(this.state.isCreated=!0,this.options.onCreate(e))}}function W(e,t){return e.some(function(e){var o=e.name,n=e.enabled;return n&&o===t})}function H(e){for(var t=[!1,'ms','Webkit','Moz','O'],o=e.charAt(0).toUpperCase()+e.slice(1),n=0;n<t.length;n++){var i=t[n],r=i?''+i+o:e;if('undefined'!=typeof document.body.style[r])return r}return null}function B(){return this.state.isDestroyed=!0,W(this.modifiers,'applyStyle')&&(this.popper.removeAttribute('x-placement'),this.popper.style.position='',this.popper.style.top='',this.popper.style.left='',this.popper.style.right='',this.popper.style.bottom='',this.popper.style.willChange='',this.popper.style[H('transform')]=''),this.disableEventListeners(),this.options.removeOnDestroy&&this.popper.parentNode.removeChild(this.popper),this}function A(e){var t=e.ownerDocument;return t?t.defaultView:window}function M(e,t,o,i){var r='BODY'===e.nodeName,p=r?e.ownerDocument.defaultView:e;p.addEventListener(t,o,{passive:!0}),r||M(n(p.parentNode),t,o,i),i.push(p)}function F(e,t,o,i){o.updateBound=i,A(e).addEventListener('resize',o.updateBound,{passive:!0});var r=n(e);return M(r,'scroll',o.updateBound,o.scrollParents),o.scrollElement=r,o.eventsEnabled=!0,o}function I(){this.state.eventsEnabled||(this.state=F(this.reference,this.options,this.state,this.scheduleUpdate))}function R(e,t){return A(e).removeEventListener('resize',t.updateBound),t.scrollParents.forEach(function(e){e.removeEventListener('scroll',t.updateBound)}),t.updateBound=null,t.scrollParents=[],t.scrollElement=null,t.eventsEnabled=!1,t}function U(){this.state.eventsEnabled&&(cancelAnimationFrame(this.scheduleUpdate),this.state=R(this.reference,this.state))}function Y(e){return''!==e&&!isNaN(parseFloat(e))&&isFinite(e)}function j(e,t){Object.keys(t).forEach(function(o){var n='';-1!==['width','height','top','right','bottom','left'].indexOf(o)&&Y(t[o])&&(n='px'),e.style[o]=t[o]+n})}function V(e,t){Object.keys(t).forEach(function(o){var n=t[o];!1===n?e.removeAttribute(o):e.setAttribute(o,t[o])})}function q(e,t){var o=e.offsets,n=o.popper,i=o.reference,r=$,p=function(e){return e},s=r(i.width),d=r(n.width),a=-1!==['left','right'].indexOf(e.placement),l=-1!==e.placement.indexOf('-'),f=t?a||l||s%2==d%2?r:Z:p,m=t?r:p;return{left:f(1==s%2&&1==d%2&&!l&&t?n.left-1:n.left),top:m(n.top),bottom:m(n.bottom),right:f(n.right)}}function K(e,t,o){var n=C(e,function(e){var o=e.name;return o===t}),i=!!n&&e.some(function(e){return e.name===o&&e.enabled&&e.order<n.order});if(!i){var r='`'+t+'`';console.warn('`'+o+'`'+' modifier is required by '+r+' modifier in order to work, be sure to include it before '+r+'!')}return i}function z(e){return'end'===e?'start':'start'===e?'end':e}function G(e){var t=1<arguments.length&&void 0!==arguments[1]&&arguments[1],o=ce.indexOf(e),n=ce.slice(o+1).concat(ce.slice(0,o));return t?n.reverse():n}function _(e,t,o,n){var i=e.match(/((?:\-|\+)?\d*\.?\d*)(.*)/),r=+i[1],p=i[2];if(!r)return e;if(0===p.indexOf('%')){var s;switch(p){case'%p':s=o;break;case'%':case'%r':default:s=n;}var d=g(s);return d[t]/100*r}if('vh'===p||'vw'===p){var a;return a='vh'===p?ee(document.documentElement.clientHeight,window.innerHeight||0):ee(document.documentElement.clientWidth,window.innerWidth||0),a/100*r}return r}function X(e,t,o,n){var i=[0,0],r=-1!==['right','left'].indexOf(n),p=e.split(/(\+|\-)/).map(function(e){return e.trim()}),s=p.indexOf(C(p,function(e){return-1!==e.search(/,|\s/)}));p[s]&&-1===p[s].indexOf(',')&&console.warn('Offsets separated by white space(s) are deprecated, use a comma (,) instead.');var d=/\s*,\s*|\s+/,a=-1===s?[p]:[p.slice(0,s).concat([p[s].split(d)[0]]),[p[s].split(d)[1]].concat(p.slice(s+1))];return a=a.map(function(e,n){var i=(1===n?!r:r)?'height':'width',p=!1;return e.reduce(function(e,t){return''===e[e.length-1]&&-1!==['+','-'].indexOf(t)?(e[e.length-1]=t,p=!0,e):p?(e[e.length-1]+=t,p=!1,e):e.concat(t)},[]).map(function(e){return _(e,i,t,o)})}),a.forEach(function(e,t){e.forEach(function(o,n){Y(o)&&(i[t]+=o*('-'===e[n-1]?-1:1))})}),i}function J(e,t){var o,n=t.offset,i=e.placement,r=e.offsets,p=r.popper,s=r.reference,d=i.split('-')[0];return o=Y(+n)?[+n,0]:X(n,p,s,d),'left'===d?(p.top+=o[0],p.left-=o[1]):'right'===d?(p.top+=o[0],p.left+=o[1]):'top'===d?(p.left+=o[0],p.top-=o[1]):'bottom'===d&&(p.left+=o[0],p.top+=o[1]),e.popper=p,e}for(var Q=Math.min,Z=Math.floor,$=Math.round,ee=Math.max,te='undefined'!=typeof window&&'undefined'!=typeof document,oe=['Edge','Trident','Firefox'],ne=0,ie=0;ie<oe.length;ie+=1)if(te&&0<=navigator.userAgent.indexOf(oe[ie])){ne=1;break}var i=te&&window.Promise,re=i?function(e){var t=!1;return function(){t||(t=!0,window.Promise.resolve().then(function(){t=!1,e()}))}}:function(e){var t=!1;return function(){t||(t=!0,setTimeout(function(){t=!1,e()},ne))}},pe=te&&!!(window.MSInputMethodContext&&document.documentMode),se=te&&/MSIE 10/.test(navigator.userAgent),de=function(e,t){if(!(e instanceof t))throw new TypeError('Cannot call a class as a function')},ae=function(){function e(e,t){for(var o,n=0;n<t.length;n++)o=t[n],o.enumerable=o.enumerable||!1,o.configurable=!0,'value'in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}return function(t,o,n){return o&&e(t.prototype,o),n&&e(t,n),t}}(),le=function(e,t,o){return t in e?Object.defineProperty(e,t,{value:o,enumerable:!0,configurable:!0,writable:!0}):e[t]=o,e},fe=Object.assign||function(e){for(var t,o=1;o<arguments.length;o++)for(var n in t=arguments[o],t)Object.prototype.hasOwnProperty.call(t,n)&&(e[n]=t[n]);return e},me=te&&/Firefox/i.test(navigator.userAgent),he=['auto-start','auto','auto-end','top-start','top','top-end','right-start','right','right-end','bottom-end','bottom','bottom-start','left-end','left','left-start'],ce=he.slice(3),ge={FLIP:'flip',CLOCKWISE:'clockwise',COUNTERCLOCKWISE:'counterclockwise'},ue=function(){function t(o,n){var i=this,r=2<arguments.length&&void 0!==arguments[2]?arguments[2]:{};de(this,t),this.scheduleUpdate=function(){return requestAnimationFrame(i.update)},this.update=re(this.update.bind(this)),this.options=fe({},t.Defaults,r),this.state={isDestroyed:!1,isCreated:!1,scrollParents:[]},this.reference=o&&o.jquery?o[0]:o,this.popper=n&&n.jquery?n[0]:n,this.options.modifiers={},Object.keys(fe({},t.Defaults.modifiers,r.modifiers)).forEach(function(e){i.options.modifiers[e]=fe({},t.Defaults.modifiers[e]||{},r.modifiers?r.modifiers[e]:{})}),this.modifiers=Object.keys(this.options.modifiers).map(function(e){return fe({name:e},i.options.modifiers[e])}).sort(function(e,t){return e.order-t.order}),this.modifiers.forEach(function(t){t.enabled&&e(t.onLoad)&&t.onLoad(i.reference,i.popper,i.options,t,i.state)}),this.update();var p=this.options.eventsEnabled;p&&this.enableEventListeners(),this.state.eventsEnabled=p}return ae(t,[{key:'update',value:function(){return k.call(this)}},{key:'destroy',value:function(){return B.call(this)}},{key:'enableEventListeners',value:function(){return I.call(this)}},{key:'disableEventListeners',value:function(){return U.call(this)}}]),t}();return ue.Utils=('undefined'==typeof window?global:window).PopperUtils,ue.placements=he,ue.Defaults={placement:'bottom',positionFixed:!1,eventsEnabled:!0,removeOnDestroy:!1,onCreate:function(){},onUpdate:function(){},modifiers:{shift:{order:100,enabled:!0,fn:function(e){var t=e.placement,o=t.split('-')[0],n=t.split('-')[1];if(n){var i=e.offsets,r=i.reference,p=i.popper,s=-1!==['bottom','top'].indexOf(o),d=s?'left':'top',a=s?'width':'height',l={start:le({},d,r[d]),end:le({},d,r[d]+r[a]-p[a])};e.offsets.popper=fe({},p,l[n])}return e}},offset:{order:200,enabled:!0,fn:J,offset:0},preventOverflow:{order:300,enabled:!0,fn:function(e,t){var o=t.boundariesElement||p(e.instance.popper);e.instance.reference===o&&(o=p(o));var n=H('transform'),i=e.instance.popper.style,r=i.top,s=i.left,d=i[n];i.top='',i.left='',i[n]='';var a=v(e.instance.popper,e.instance.reference,t.padding,o,e.positionFixed);i.top=r,i.left=s,i[n]=d,t.boundaries=a;var l=t.priority,f=e.offsets.popper,m={primary:function(e){var o=f[e];return f[e]<a[e]&&!t.escapeWithReference&&(o=ee(f[e],a[e])),le({},e,o)},secondary:function(e){var o='right'===e?'left':'top',n=f[o];return f[e]>a[e]&&!t.escapeWithReference&&(n=Q(f[o],a[e]-('right'===e?f.width:f.height))),le({},o,n)}};return l.forEach(function(e){var t=-1===['left','top'].indexOf(e)?'secondary':'primary';f=fe({},f,m[t](e))}),e.offsets.popper=f,e},priority:['left','right','top','bottom'],padding:5,boundariesElement:'scrollParent'},keepTogether:{order:400,enabled:!0,fn:function(e){var t=e.offsets,o=t.popper,n=t.reference,i=e.placement.split('-')[0],r=Z,p=-1!==['top','bottom'].indexOf(i),s=p?'right':'bottom',d=p?'left':'top',a=p?'width':'height';return o[s]<r(n[d])&&(e.offsets.popper[d]=r(n[d])-o[a]),o[d]>r(n[s])&&(e.offsets.popper[d]=r(n[s])),e}},arrow:{order:500,enabled:!0,fn:function(e,o){var n;if(!K(e.instance.modifiers,'arrow','keepTogether'))return e;var i=o.element;if('string'==typeof i){if(i=e.instance.popper.querySelector(i),!i)return e;}else if(!e.instance.popper.contains(i))return console.warn('WARNING: `arrow.element` must be child of its popper element!'),e;var r=e.placement.split('-')[0],p=e.offsets,s=p.popper,d=p.reference,a=-1!==['left','right'].indexOf(r),l=a?'height':'width',f=a?'Top':'Left',m=f.toLowerCase(),h=a?'left':'top',c=a?'bottom':'right',u=S(i)[l];d[c]-u<s[m]&&(e.offsets.popper[m]-=s[m]-(d[c]-u)),d[m]+u>s[c]&&(e.offsets.popper[m]+=d[m]+u-s[c]),e.offsets.popper=g(e.offsets.popper);var b=d[m]+d[l]/2-u/2,w=t(e.instance.popper),y=parseFloat(w['margin'+f],10),E=parseFloat(w['border'+f+'Width'],10),v=b-e.offsets.popper[m]-y-E;return v=ee(Q(s[l]-u,v),0),e.arrowElement=i,e.offsets.arrow=(n={},le(n,m,$(v)),le(n,h,''),n),e},element:'[x-arrow]'},flip:{order:600,enabled:!0,fn:function(e,t){if(W(e.instance.modifiers,'inner'))return e;if(e.flipped&&e.placement===e.originalPlacement)return e;var o=v(e.instance.popper,e.instance.reference,t.padding,t.boundariesElement,e.positionFixed),n=e.placement.split('-')[0],i=T(n),r=e.placement.split('-')[1]||'',p=[];switch(t.behavior){case ge.FLIP:p=[n,i];break;case ge.CLOCKWISE:p=G(n);break;case ge.COUNTERCLOCKWISE:p=G(n,!0);break;default:p=t.behavior;}return p.forEach(function(s,d){if(n!==s||p.length===d+1)return e;n=e.placement.split('-')[0],i=T(n);var a=e.offsets.popper,l=e.offsets.reference,f=Z,m='left'===n&&f(a.right)>f(l.left)||'right'===n&&f(a.left)<f(l.right)||'top'===n&&f(a.bottom)>f(l.top)||'bottom'===n&&f(a.top)<f(l.bottom),h=f(a.left)<f(o.left),c=f(a.right)>f(o.right),g=f(a.top)<f(o.top),u=f(a.bottom)>f(o.bottom),b='left'===n&&h||'right'===n&&c||'top'===n&&g||'bottom'===n&&u,w=-1!==['top','bottom'].indexOf(n),y=!!t.flipVariations&&(w&&'start'===r&&h||w&&'end'===r&&c||!w&&'start'===r&&g||!w&&'end'===r&&u);(m||b||y)&&(e.flipped=!0,(m||b)&&(n=p[d+1]),y&&(r=z(r)),e.placement=n+(r?'-'+r:''),e.offsets.popper=fe({},e.offsets.popper,D(e.instance.popper,e.offsets.reference,e.placement)),e=P(e.instance.modifiers,e,'flip'))}),e},behavior:'flip',padding:5,boundariesElement:'viewport'},inner:{order:700,enabled:!1,fn:function(e){var t=e.placement,o=t.split('-')[0],n=e.offsets,i=n.popper,r=n.reference,p=-1!==['left','right'].indexOf(o),s=-1===['top','left'].indexOf(o);return i[p?'left':'top']=r[o]-(s?i[p?'width':'height']:0),e.placement=T(t),e.offsets.popper=g(i),e}},hide:{order:800,enabled:!0,fn:function(e){if(!K(e.instance.modifiers,'hide','preventOverflow'))return e;var t=e.offsets.reference,o=C(e.instance.modifiers,function(e){return'preventOverflow'===e.name}).boundaries;if(t.bottom<o.top||t.left>o.right||t.top>o.bottom||t.right<o.left){if(!0===e.hide)return e;e.hide=!0,e.attributes['x-out-of-boundaries']=''}else{if(!1===e.hide)return e;e.hide=!1,e.attributes['x-out-of-boundaries']=!1}return e}},computeStyle:{order:850,enabled:!0,fn:function(e,t){var o=t.x,n=t.y,i=e.offsets.popper,r=C(e.instance.modifiers,function(e){return'applyStyle'===e.name}).gpuAcceleration;void 0!==r&&console.warn('WARNING: `gpuAcceleration` option moved to `computeStyle` modifier and will not be supported in future versions of Popper.js!');var s,d,a=void 0===r?t.gpuAcceleration:r,l=p(e.instance.popper),f=u(l),m={position:i.position},h=q(e,2>window.devicePixelRatio||!me),c='bottom'===o?'top':'bottom',g='right'===n?'left':'right',b=H('transform');if(d='bottom'==c?'HTML'===l.nodeName?-l.clientHeight+h.bottom:-f.height+h.bottom:h.top,s='right'==g?'HTML'===l.nodeName?-l.clientWidth+h.right:-f.width+h.right:h.left,a&&b)m[b]='translate3d('+s+'px, '+d+'px, 0)',m[c]=0,m[g]=0,m.willChange='transform';else{var w='bottom'==c?-1:1,y='right'==g?-1:1;m[c]=d*w,m[g]=s*y,m.willChange=c+', '+g}var E={"x-placement":e.placement};return e.attributes=fe({},E,e.attributes),e.styles=fe({},m,e.styles),e.arrowStyles=fe({},e.offsets.arrow,e.arrowStyles),e},gpuAcceleration:!0,x:'bottom',y:'right'},applyStyle:{order:900,enabled:!0,fn:function(e){return j(e.instance.popper,e.styles),V(e.instance.popper,e.attributes),e.arrowElement&&Object.keys(e.arrowStyles).length&&j(e.arrowElement,e.arrowStyles),e},onLoad:function(e,t,o,n,i){var r=L(i,t,e,o.positionFixed),p=O(o.placement,r,t,e,o.modifiers.flip.boundariesElement,o.modifiers.flip.padding);return t.setAttribute('x-placement',p),j(t,{position:o.positionFixed?'fixed':'absolute'}),o},gpuAcceleration:void 0}}},ue});
//# sourceMappingURL=popper.min.js.map
/*!
  * Bootstrap v4.3.1 (https://getbootstrap.com/)
  * Copyright 2011-2019 The Bootstrap Authors (https://github.com/twbs/bootstrap/graphs/contributors)
  * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
  */
!function(t,e){"object"==typeof exports&&"undefined"!=typeof module?e(exports,require("jquery"),require("popper.js")):"function"==typeof define&&define.amd?define(["exports","jquery","popper.js"],e):e((t=t||self).bootstrap={},t.jQuery,t.Popper)}(this,function(t,g,u){"use strict";function i(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function s(t,e,n){return e&&i(t.prototype,e),n&&i(t,n),t}function l(o){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{},e=Object.keys(r);"function"==typeof Object.getOwnPropertySymbols&&(e=e.concat(Object.getOwnPropertySymbols(r).filter(function(t){return Object.getOwnPropertyDescriptor(r,t).enumerable}))),e.forEach(function(t){var e,n,i;e=o,i=r[n=t],n in e?Object.defineProperty(e,n,{value:i,enumerable:!0,configurable:!0,writable:!0}):e[n]=i})}return o}g=g&&g.hasOwnProperty("default")?g.default:g,u=u&&u.hasOwnProperty("default")?u.default:u;var e="transitionend";function n(t){var e=this,n=!1;return g(this).one(_.TRANSITION_END,function(){n=!0}),setTimeout(function(){n||_.triggerTransitionEnd(e)},t),this}var _={TRANSITION_END:"bsTransitionEnd",getUID:function(t){for(;t+=~~(1e6*Math.random()),document.getElementById(t););return t},getSelectorFromElement:function(t){var e=t.getAttribute("data-target");if(!e||"#"===e){var n=t.getAttribute("href");e=n&&"#"!==n?n.trim():""}try{return document.querySelector(e)?e:null}catch(t){return null}},getTransitionDurationFromElement:function(t){if(!t)return 0;var e=g(t).css("transition-duration"),n=g(t).css("transition-delay"),i=parseFloat(e),o=parseFloat(n);return i||o?(e=e.split(",")[0],n=n.split(",")[0],1e3*(parseFloat(e)+parseFloat(n))):0},reflow:function(t){return t.offsetHeight},triggerTransitionEnd:function(t){g(t).trigger(e)},supportsTransitionEnd:function(){return Boolean(e)},isElement:function(t){return(t[0]||t).nodeType},typeCheckConfig:function(t,e,n){for(var i in n)if(Object.prototype.hasOwnProperty.call(n,i)){var o=n[i],r=e[i],s=r&&_.isElement(r)?"element":(a=r,{}.toString.call(a).match(/\s([a-z]+)/i)[1].toLowerCase());if(!new RegExp(o).test(s))throw new Error(t.toUpperCase()+': Option "'+i+'" provided type "'+s+'" but expected type "'+o+'".')}var a},findShadowRoot:function(t){if(!document.documentElement.attachShadow)return null;if("function"!=typeof t.getRootNode)return t instanceof ShadowRoot?t:t.parentNode?_.findShadowRoot(t.parentNode):null;var e=t.getRootNode();return e instanceof ShadowRoot?e:null}};g.fn.emulateTransitionEnd=n,g.event.special[_.TRANSITION_END]={bindType:e,delegateType:e,handle:function(t){if(g(t.target).is(this))return t.handleObj.handler.apply(this,arguments)}};var o="alert",r="bs.alert",a="."+r,c=g.fn[o],h={CLOSE:"close"+a,CLOSED:"closed"+a,CLICK_DATA_API:"click"+a+".data-api"},f="alert",d="fade",m="show",p=function(){function i(t){this._element=t}var t=i.prototype;return t.close=function(t){var e=this._element;t&&(e=this._getRootElement(t)),this._triggerCloseEvent(e).isDefaultPrevented()||this._removeElement(e)},t.dispose=function(){g.removeData(this._element,r),this._element=null},t._getRootElement=function(t){var e=_.getSelectorFromElement(t),n=!1;return e&&(n=document.querySelector(e)),n||(n=g(t).closest("."+f)[0]),n},t._triggerCloseEvent=function(t){var e=g.Event(h.CLOSE);return g(t).trigger(e),e},t._removeElement=function(e){var n=this;if(g(e).removeClass(m),g(e).hasClass(d)){var t=_.getTransitionDurationFromElement(e);g(e).one(_.TRANSITION_END,function(t){return n._destroyElement(e,t)}).emulateTransitionEnd(t)}else this._destroyElement(e)},t._destroyElement=function(t){g(t).detach().trigger(h.CLOSED).remove()},i._jQueryInterface=function(n){return this.each(function(){var t=g(this),e=t.data(r);e||(e=new i(this),t.data(r,e)),"close"===n&&e[n](this)})},i._handleDismiss=function(e){return function(t){t&&t.preventDefault(),e.close(this)}},s(i,null,[{key:"VERSION",get:function(){return"4.3.1"}}]),i}();g(document).on(h.CLICK_DATA_API,'[data-dismiss="alert"]',p._handleDismiss(new p)),g.fn[o]=p._jQueryInterface,g.fn[o].Constructor=p,g.fn[o].noConflict=function(){return g.fn[o]=c,p._jQueryInterface};var v="button",y="bs.button",E="."+y,C=".data-api",T=g.fn[v],S="active",b="btn",I="focus",D='[data-toggle^="button"]',w='[data-toggle="buttons"]',A='input:not([type="hidden"])',N=".active",O=".btn",k={CLICK_DATA_API:"click"+E+C,FOCUS_BLUR_DATA_API:"focus"+E+C+" blur"+E+C},P=function(){function n(t){this._element=t}var t=n.prototype;return t.toggle=function(){var t=!0,e=!0,n=g(this._element).closest(w)[0];if(n){var i=this._element.querySelector(A);if(i){if("radio"===i.type)if(i.checked&&this._element.classList.contains(S))t=!1;else{var o=n.querySelector(N);o&&g(o).removeClass(S)}if(t){if(i.hasAttribute("disabled")||n.hasAttribute("disabled")||i.classList.contains("disabled")||n.classList.contains("disabled"))return;i.checked=!this._element.classList.contains(S),g(i).trigger("change")}i.focus(),e=!1}}e&&this._element.setAttribute("aria-pressed",!this._element.classList.contains(S)),t&&g(this._element).toggleClass(S)},t.dispose=function(){g.removeData(this._element,y),this._element=null},n._jQueryInterface=function(e){return this.each(function(){var t=g(this).data(y);t||(t=new n(this),g(this).data(y,t)),"toggle"===e&&t[e]()})},s(n,null,[{key:"VERSION",get:function(){return"4.3.1"}}]),n}();g(document).on(k.CLICK_DATA_API,D,function(t){t.preventDefault();var e=t.target;g(e).hasClass(b)||(e=g(e).closest(O)),P._jQueryInterface.call(g(e),"toggle")}).on(k.FOCUS_BLUR_DATA_API,D,function(t){var e=g(t.target).closest(O)[0];g(e).toggleClass(I,/^focus(in)?$/.test(t.type))}),g.fn[v]=P._jQueryInterface,g.fn[v].Constructor=P,g.fn[v].noConflict=function(){return g.fn[v]=T,P._jQueryInterface};var L="carousel",j="bs.carousel",H="."+j,R=".data-api",x=g.fn[L],F={interval:5e3,keyboard:!0,slide:!1,pause:"hover",wrap:!0,touch:!0},U={interval:"(number|boolean)",keyboard:"boolean",slide:"(boolean|string)",pause:"(string|boolean)",wrap:"boolean",touch:"boolean"},W="next",q="prev",M="left",K="right",Q={SLIDE:"slide"+H,SLID:"slid"+H,KEYDOWN:"keydown"+H,MOUSEENTER:"mouseenter"+H,MOUSELEAVE:"mouseleave"+H,TOUCHSTART:"touchstart"+H,TOUCHMOVE:"touchmove"+H,TOUCHEND:"touchend"+H,POINTERDOWN:"pointerdown"+H,POINTERUP:"pointerup"+H,DRAG_START:"dragstart"+H,LOAD_DATA_API:"load"+H+R,CLICK_DATA_API:"click"+H+R},B="carousel",V="active",Y="slide",z="carousel-item-right",X="carousel-item-left",$="carousel-item-next",G="carousel-item-prev",J="pointer-event",Z=".active",tt=".active.carousel-item",et=".carousel-item",nt=".carousel-item img",it=".carousel-item-next, .carousel-item-prev",ot=".carousel-indicators",rt="[data-slide], [data-slide-to]",st='[data-ride="carousel"]',at={TOUCH:"touch",PEN:"pen"},lt=function(){function r(t,e){this._items=null,this._interval=null,this._activeElement=null,this._isPaused=!1,this._isSliding=!1,this.touchTimeout=null,this.touchStartX=0,this.touchDeltaX=0,this._config=this._getConfig(e),this._element=t,this._indicatorsElement=this._element.querySelector(ot),this._touchSupported="ontouchstart"in document.documentElement||0<navigator.maxTouchPoints,this._pointerEvent=Boolean(window.PointerEvent||window.MSPointerEvent),this._addEventListeners()}var t=r.prototype;return t.next=function(){this._isSliding||this._slide(W)},t.nextWhenVisible=function(){!document.hidden&&g(this._element).is(":visible")&&"hidden"!==g(this._element).css("visibility")&&this.next()},t.prev=function(){this._isSliding||this._slide(q)},t.pause=function(t){t||(this._isPaused=!0),this._element.querySelector(it)&&(_.triggerTransitionEnd(this._element),this.cycle(!0)),clearInterval(this._interval),this._interval=null},t.cycle=function(t){t||(this._isPaused=!1),this._interval&&(clearInterval(this._interval),this._interval=null),this._config.interval&&!this._isPaused&&(this._interval=setInterval((document.visibilityState?this.nextWhenVisible:this.next).bind(this),this._config.interval))},t.to=function(t){var e=this;this._activeElement=this._element.querySelector(tt);var n=this._getItemIndex(this._activeElement);if(!(t>this._items.length-1||t<0))if(this._isSliding)g(this._element).one(Q.SLID,function(){return e.to(t)});else{if(n===t)return this.pause(),void this.cycle();var i=n<t?W:q;this._slide(i,this._items[t])}},t.dispose=function(){g(this._element).off(H),g.removeData(this._element,j),this._items=null,this._config=null,this._element=null,this._interval=null,this._isPaused=null,this._isSliding=null,this._activeElement=null,this._indicatorsElement=null},t._getConfig=function(t){return t=l({},F,t),_.typeCheckConfig(L,t,U),t},t._handleSwipe=function(){var t=Math.abs(this.touchDeltaX);if(!(t<=40)){var e=t/this.touchDeltaX;0<e&&this.prev(),e<0&&this.next()}},t._addEventListeners=function(){var e=this;this._config.keyboard&&g(this._element).on(Q.KEYDOWN,function(t){return e._keydown(t)}),"hover"===this._config.pause&&g(this._element).on(Q.MOUSEENTER,function(t){return e.pause(t)}).on(Q.MOUSELEAVE,function(t){return e.cycle(t)}),this._config.touch&&this._addTouchEventListeners()},t._addTouchEventListeners=function(){var n=this;if(this._touchSupported){var e=function(t){n._pointerEvent&&at[t.originalEvent.pointerType.toUpperCase()]?n.touchStartX=t.originalEvent.clientX:n._pointerEvent||(n.touchStartX=t.originalEvent.touches[0].clientX)},i=function(t){n._pointerEvent&&at[t.originalEvent.pointerType.toUpperCase()]&&(n.touchDeltaX=t.originalEvent.clientX-n.touchStartX),n._handleSwipe(),"hover"===n._config.pause&&(n.pause(),n.touchTimeout&&clearTimeout(n.touchTimeout),n.touchTimeout=setTimeout(function(t){return n.cycle(t)},500+n._config.interval))};g(this._element.querySelectorAll(nt)).on(Q.DRAG_START,function(t){return t.preventDefault()}),this._pointerEvent?(g(this._element).on(Q.POINTERDOWN,function(t){return e(t)}),g(this._element).on(Q.POINTERUP,function(t){return i(t)}),this._element.classList.add(J)):(g(this._element).on(Q.TOUCHSTART,function(t){return e(t)}),g(this._element).on(Q.TOUCHMOVE,function(t){var e;(e=t).originalEvent.touches&&1<e.originalEvent.touches.length?n.touchDeltaX=0:n.touchDeltaX=e.originalEvent.touches[0].clientX-n.touchStartX}),g(this._element).on(Q.TOUCHEND,function(t){return i(t)}))}},t._keydown=function(t){if(!/input|textarea/i.test(t.target.tagName))switch(t.which){case 37:t.preventDefault(),this.prev();break;case 39:t.preventDefault(),this.next()}},t._getItemIndex=function(t){return this._items=t&&t.parentNode?[].slice.call(t.parentNode.querySelectorAll(et)):[],this._items.indexOf(t)},t._getItemByDirection=function(t,e){var n=t===W,i=t===q,o=this._getItemIndex(e),r=this._items.length-1;if((i&&0===o||n&&o===r)&&!this._config.wrap)return e;var s=(o+(t===q?-1:1))%this._items.length;return-1===s?this._items[this._items.length-1]:this._items[s]},t._triggerSlideEvent=function(t,e){var n=this._getItemIndex(t),i=this._getItemIndex(this._element.querySelector(tt)),o=g.Event(Q.SLIDE,{relatedTarget:t,direction:e,from:i,to:n});return g(this._element).trigger(o),o},t._setActiveIndicatorElement=function(t){if(this._indicatorsElement){var e=[].slice.call(this._indicatorsElement.querySelectorAll(Z));g(e).removeClass(V);var n=this._indicatorsElement.children[this._getItemIndex(t)];n&&g(n).addClass(V)}},t._slide=function(t,e){var n,i,o,r=this,s=this._element.querySelector(tt),a=this._getItemIndex(s),l=e||s&&this._getItemByDirection(t,s),c=this._getItemIndex(l),h=Boolean(this._interval);if(o=t===W?(n=X,i=$,M):(n=z,i=G,K),l&&g(l).hasClass(V))this._isSliding=!1;else if(!this._triggerSlideEvent(l,o).isDefaultPrevented()&&s&&l){this._isSliding=!0,h&&this.pause(),this._setActiveIndicatorElement(l);var u=g.Event(Q.SLID,{relatedTarget:l,direction:o,from:a,to:c});if(g(this._element).hasClass(Y)){g(l).addClass(i),_.reflow(l),g(s).addClass(n),g(l).addClass(n);var f=parseInt(l.getAttribute("data-interval"),10);this._config.interval=f?(this._config.defaultInterval=this._config.defaultInterval||this._config.interval,f):this._config.defaultInterval||this._config.interval;var d=_.getTransitionDurationFromElement(s);g(s).one(_.TRANSITION_END,function(){g(l).removeClass(n+" "+i).addClass(V),g(s).removeClass(V+" "+i+" "+n),r._isSliding=!1,setTimeout(function(){return g(r._element).trigger(u)},0)}).emulateTransitionEnd(d)}else g(s).removeClass(V),g(l).addClass(V),this._isSliding=!1,g(this._element).trigger(u);h&&this.cycle()}},r._jQueryInterface=function(i){return this.each(function(){var t=g(this).data(j),e=l({},F,g(this).data());"object"==typeof i&&(e=l({},e,i));var n="string"==typeof i?i:e.slide;if(t||(t=new r(this,e),g(this).data(j,t)),"number"==typeof i)t.to(i);else if("string"==typeof n){if("undefined"==typeof t[n])throw new TypeError('No method named "'+n+'"');t[n]()}else e.interval&&e.ride&&(t.pause(),t.cycle())})},r._dataApiClickHandler=function(t){var e=_.getSelectorFromElement(this);if(e){var n=g(e)[0];if(n&&g(n).hasClass(B)){var i=l({},g(n).data(),g(this).data()),o=this.getAttribute("data-slide-to");o&&(i.interval=!1),r._jQueryInterface.call(g(n),i),o&&g(n).data(j).to(o),t.preventDefault()}}},s(r,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return F}}]),r}();g(document).on(Q.CLICK_DATA_API,rt,lt._dataApiClickHandler),g(window).on(Q.LOAD_DATA_API,function(){for(var t=[].slice.call(document.querySelectorAll(st)),e=0,n=t.length;e<n;e++){var i=g(t[e]);lt._jQueryInterface.call(i,i.data())}}),g.fn[L]=lt._jQueryInterface,g.fn[L].Constructor=lt,g.fn[L].noConflict=function(){return g.fn[L]=x,lt._jQueryInterface};var ct="collapse",ht="bs.collapse",ut="."+ht,ft=g.fn[ct],dt={toggle:!0,parent:""},gt={toggle:"boolean",parent:"(string|element)"},_t={SHOW:"show"+ut,SHOWN:"shown"+ut,HIDE:"hide"+ut,HIDDEN:"hidden"+ut,CLICK_DATA_API:"click"+ut+".data-api"},mt="show",pt="collapse",vt="collapsing",yt="collapsed",Et="width",Ct="height",Tt=".show, .collapsing",St='[data-toggle="collapse"]',bt=function(){function a(e,t){this._isTransitioning=!1,this._element=e,this._config=this._getConfig(t),this._triggerArray=[].slice.call(document.querySelectorAll('[data-toggle="collapse"][href="#'+e.id+'"],[data-toggle="collapse"][data-target="#'+e.id+'"]'));for(var n=[].slice.call(document.querySelectorAll(St)),i=0,o=n.length;i<o;i++){var r=n[i],s=_.getSelectorFromElement(r),a=[].slice.call(document.querySelectorAll(s)).filter(function(t){return t===e});null!==s&&0<a.length&&(this._selector=s,this._triggerArray.push(r))}this._parent=this._config.parent?this._getParent():null,this._config.parent||this._addAriaAndCollapsedClass(this._element,this._triggerArray),this._config.toggle&&this.toggle()}var t=a.prototype;return t.toggle=function(){g(this._element).hasClass(mt)?this.hide():this.show()},t.show=function(){var t,e,n=this;if(!this._isTransitioning&&!g(this._element).hasClass(mt)&&(this._parent&&0===(t=[].slice.call(this._parent.querySelectorAll(Tt)).filter(function(t){return"string"==typeof n._config.parent?t.getAttribute("data-parent")===n._config.parent:t.classList.contains(pt)})).length&&(t=null),!(t&&(e=g(t).not(this._selector).data(ht))&&e._isTransitioning))){var i=g.Event(_t.SHOW);if(g(this._element).trigger(i),!i.isDefaultPrevented()){t&&(a._jQueryInterface.call(g(t).not(this._selector),"hide"),e||g(t).data(ht,null));var o=this._getDimension();g(this._element).removeClass(pt).addClass(vt),this._element.style[o]=0,this._triggerArray.length&&g(this._triggerArray).removeClass(yt).attr("aria-expanded",!0),this.setTransitioning(!0);var r="scroll"+(o[0].toUpperCase()+o.slice(1)),s=_.getTransitionDurationFromElement(this._element);g(this._element).one(_.TRANSITION_END,function(){g(n._element).removeClass(vt).addClass(pt).addClass(mt),n._element.style[o]="",n.setTransitioning(!1),g(n._element).trigger(_t.SHOWN)}).emulateTransitionEnd(s),this._element.style[o]=this._element[r]+"px"}}},t.hide=function(){var t=this;if(!this._isTransitioning&&g(this._element).hasClass(mt)){var e=g.Event(_t.HIDE);if(g(this._element).trigger(e),!e.isDefaultPrevented()){var n=this._getDimension();this._element.style[n]=this._element.getBoundingClientRect()[n]+"px",_.reflow(this._element),g(this._element).addClass(vt).removeClass(pt).removeClass(mt);var i=this._triggerArray.length;if(0<i)for(var o=0;o<i;o++){var r=this._triggerArray[o],s=_.getSelectorFromElement(r);if(null!==s)g([].slice.call(document.querySelectorAll(s))).hasClass(mt)||g(r).addClass(yt).attr("aria-expanded",!1)}this.setTransitioning(!0);this._element.style[n]="";var a=_.getTransitionDurationFromElement(this._element);g(this._element).one(_.TRANSITION_END,function(){t.setTransitioning(!1),g(t._element).removeClass(vt).addClass(pt).trigger(_t.HIDDEN)}).emulateTransitionEnd(a)}}},t.setTransitioning=function(t){this._isTransitioning=t},t.dispose=function(){g.removeData(this._element,ht),this._config=null,this._parent=null,this._element=null,this._triggerArray=null,this._isTransitioning=null},t._getConfig=function(t){return(t=l({},dt,t)).toggle=Boolean(t.toggle),_.typeCheckConfig(ct,t,gt),t},t._getDimension=function(){return g(this._element).hasClass(Et)?Et:Ct},t._getParent=function(){var t,n=this;_.isElement(this._config.parent)?(t=this._config.parent,"undefined"!=typeof this._config.parent.jquery&&(t=this._config.parent[0])):t=document.querySelector(this._config.parent);var e='[data-toggle="collapse"][data-parent="'+this._config.parent+'"]',i=[].slice.call(t.querySelectorAll(e));return g(i).each(function(t,e){n._addAriaAndCollapsedClass(a._getTargetFromElement(e),[e])}),t},t._addAriaAndCollapsedClass=function(t,e){var n=g(t).hasClass(mt);e.length&&g(e).toggleClass(yt,!n).attr("aria-expanded",n)},a._getTargetFromElement=function(t){var e=_.getSelectorFromElement(t);return e?document.querySelector(e):null},a._jQueryInterface=function(i){return this.each(function(){var t=g(this),e=t.data(ht),n=l({},dt,t.data(),"object"==typeof i&&i?i:{});if(!e&&n.toggle&&/show|hide/.test(i)&&(n.toggle=!1),e||(e=new a(this,n),t.data(ht,e)),"string"==typeof i){if("undefined"==typeof e[i])throw new TypeError('No method named "'+i+'"');e[i]()}})},s(a,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return dt}}]),a}();g(document).on(_t.CLICK_DATA_API,St,function(t){"A"===t.currentTarget.tagName&&t.preventDefault();var n=g(this),e=_.getSelectorFromElement(this),i=[].slice.call(document.querySelectorAll(e));g(i).each(function(){var t=g(this),e=t.data(ht)?"toggle":n.data();bt._jQueryInterface.call(t,e)})}),g.fn[ct]=bt._jQueryInterface,g.fn[ct].Constructor=bt,g.fn[ct].noConflict=function(){return g.fn[ct]=ft,bt._jQueryInterface};var It="dropdown",Dt="bs.dropdown",wt="."+Dt,At=".data-api",Nt=g.fn[It],Ot=new RegExp("38|40|27"),kt={HIDE:"hide"+wt,HIDDEN:"hidden"+wt,SHOW:"show"+wt,SHOWN:"shown"+wt,CLICK:"click"+wt,CLICK_DATA_API:"click"+wt+At,KEYDOWN_DATA_API:"keydown"+wt+At,KEYUP_DATA_API:"keyup"+wt+At},Pt="disabled",Lt="show",jt="dropup",Ht="dropright",Rt="dropleft",xt="dropdown-menu-right",Ft="position-static",Ut='[data-toggle="dropdown"]',Wt=".dropdown form",qt=".dropdown-menu",Mt=".navbar-nav",Kt=".dropdown-menu .dropdown-item:not(.disabled):not(:disabled)",Qt="top-start",Bt="top-end",Vt="bottom-start",Yt="bottom-end",zt="right-start",Xt="left-start",$t={offset:0,flip:!0,boundary:"scrollParent",reference:"toggle",display:"dynamic"},Gt={offset:"(number|string|function)",flip:"boolean",boundary:"(string|element)",reference:"(string|element)",display:"string"},Jt=function(){function c(t,e){this._element=t,this._popper=null,this._config=this._getConfig(e),this._menu=this._getMenuElement(),this._inNavbar=this._detectNavbar(),this._addEventListeners()}var t=c.prototype;return t.toggle=function(){if(!this._element.disabled&&!g(this._element).hasClass(Pt)){var t=c._getParentFromElement(this._element),e=g(this._menu).hasClass(Lt);if(c._clearMenus(),!e){var n={relatedTarget:this._element},i=g.Event(kt.SHOW,n);if(g(t).trigger(i),!i.isDefaultPrevented()){if(!this._inNavbar){if("undefined"==typeof u)throw new TypeError("Bootstrap's dropdowns require Popper.js (https://popper.js.org/)");var o=this._element;"parent"===this._config.reference?o=t:_.isElement(this._config.reference)&&(o=this._config.reference,"undefined"!=typeof this._config.reference.jquery&&(o=this._config.reference[0])),"scrollParent"!==this._config.boundary&&g(t).addClass(Ft),this._popper=new u(o,this._menu,this._getPopperConfig())}"ontouchstart"in document.documentElement&&0===g(t).closest(Mt).length&&g(document.body).children().on("mouseover",null,g.noop),this._element.focus(),this._element.setAttribute("aria-expanded",!0),g(this._menu).toggleClass(Lt),g(t).toggleClass(Lt).trigger(g.Event(kt.SHOWN,n))}}}},t.show=function(){if(!(this._element.disabled||g(this._element).hasClass(Pt)||g(this._menu).hasClass(Lt))){var t={relatedTarget:this._element},e=g.Event(kt.SHOW,t),n=c._getParentFromElement(this._element);g(n).trigger(e),e.isDefaultPrevented()||(g(this._menu).toggleClass(Lt),g(n).toggleClass(Lt).trigger(g.Event(kt.SHOWN,t)))}},t.hide=function(){if(!this._element.disabled&&!g(this._element).hasClass(Pt)&&g(this._menu).hasClass(Lt)){var t={relatedTarget:this._element},e=g.Event(kt.HIDE,t),n=c._getParentFromElement(this._element);g(n).trigger(e),e.isDefaultPrevented()||(g(this._menu).toggleClass(Lt),g(n).toggleClass(Lt).trigger(g.Event(kt.HIDDEN,t)))}},t.dispose=function(){g.removeData(this._element,Dt),g(this._element).off(wt),this._element=null,(this._menu=null)!==this._popper&&(this._popper.destroy(),this._popper=null)},t.update=function(){this._inNavbar=this._detectNavbar(),null!==this._popper&&this._popper.scheduleUpdate()},t._addEventListeners=function(){var e=this;g(this._element).on(kt.CLICK,function(t){t.preventDefault(),t.stopPropagation(),e.toggle()})},t._getConfig=function(t){return t=l({},this.constructor.Default,g(this._element).data(),t),_.typeCheckConfig(It,t,this.constructor.DefaultType),t},t._getMenuElement=function(){if(!this._menu){var t=c._getParentFromElement(this._element);t&&(this._menu=t.querySelector(qt))}return this._menu},t._getPlacement=function(){var t=g(this._element.parentNode),e=Vt;return t.hasClass(jt)?(e=Qt,g(this._menu).hasClass(xt)&&(e=Bt)):t.hasClass(Ht)?e=zt:t.hasClass(Rt)?e=Xt:g(this._menu).hasClass(xt)&&(e=Yt),e},t._detectNavbar=function(){return 0<g(this._element).closest(".navbar").length},t._getOffset=function(){var e=this,t={};return"function"==typeof this._config.offset?t.fn=function(t){return t.offsets=l({},t.offsets,e._config.offset(t.offsets,e._element)||{}),t}:t.offset=this._config.offset,t},t._getPopperConfig=function(){var t={placement:this._getPlacement(),modifiers:{offset:this._getOffset(),flip:{enabled:this._config.flip},preventOverflow:{boundariesElement:this._config.boundary}}};return"static"===this._config.display&&(t.modifiers.applyStyle={enabled:!1}),t},c._jQueryInterface=function(e){return this.each(function(){var t=g(this).data(Dt);if(t||(t=new c(this,"object"==typeof e?e:null),g(this).data(Dt,t)),"string"==typeof e){if("undefined"==typeof t[e])throw new TypeError('No method named "'+e+'"');t[e]()}})},c._clearMenus=function(t){if(!t||3!==t.which&&("keyup"!==t.type||9===t.which))for(var e=[].slice.call(document.querySelectorAll(Ut)),n=0,i=e.length;n<i;n++){var o=c._getParentFromElement(e[n]),r=g(e[n]).data(Dt),s={relatedTarget:e[n]};if(t&&"click"===t.type&&(s.clickEvent=t),r){var a=r._menu;if(g(o).hasClass(Lt)&&!(t&&("click"===t.type&&/input|textarea/i.test(t.target.tagName)||"keyup"===t.type&&9===t.which)&&g.contains(o,t.target))){var l=g.Event(kt.HIDE,s);g(o).trigger(l),l.isDefaultPrevented()||("ontouchstart"in document.documentElement&&g(document.body).children().off("mouseover",null,g.noop),e[n].setAttribute("aria-expanded","false"),g(a).removeClass(Lt),g(o).removeClass(Lt).trigger(g.Event(kt.HIDDEN,s)))}}}},c._getParentFromElement=function(t){var e,n=_.getSelectorFromElement(t);return n&&(e=document.querySelector(n)),e||t.parentNode},c._dataApiKeydownHandler=function(t){if((/input|textarea/i.test(t.target.tagName)?!(32===t.which||27!==t.which&&(40!==t.which&&38!==t.which||g(t.target).closest(qt).length)):Ot.test(t.which))&&(t.preventDefault(),t.stopPropagation(),!this.disabled&&!g(this).hasClass(Pt))){var e=c._getParentFromElement(this),n=g(e).hasClass(Lt);if(n&&(!n||27!==t.which&&32!==t.which)){var i=[].slice.call(e.querySelectorAll(Kt));if(0!==i.length){var o=i.indexOf(t.target);38===t.which&&0<o&&o--,40===t.which&&o<i.length-1&&o++,o<0&&(o=0),i[o].focus()}}else{if(27===t.which){var r=e.querySelector(Ut);g(r).trigger("focus")}g(this).trigger("click")}}},s(c,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return $t}},{key:"DefaultType",get:function(){return Gt}}]),c}();g(document).on(kt.KEYDOWN_DATA_API,Ut,Jt._dataApiKeydownHandler).on(kt.KEYDOWN_DATA_API,qt,Jt._dataApiKeydownHandler).on(kt.CLICK_DATA_API+" "+kt.KEYUP_DATA_API,Jt._clearMenus).on(kt.CLICK_DATA_API,Ut,function(t){t.preventDefault(),t.stopPropagation(),Jt._jQueryInterface.call(g(this),"toggle")}).on(kt.CLICK_DATA_API,Wt,function(t){t.stopPropagation()}),g.fn[It]=Jt._jQueryInterface,g.fn[It].Constructor=Jt,g.fn[It].noConflict=function(){return g.fn[It]=Nt,Jt._jQueryInterface};var Zt="modal",te="bs.modal",ee="."+te,ne=g.fn[Zt],ie={backdrop:!0,keyboard:!0,focus:!0,show:!0},oe={backdrop:"(boolean|string)",keyboard:"boolean",focus:"boolean",show:"boolean"},re={HIDE:"hide"+ee,HIDDEN:"hidden"+ee,SHOW:"show"+ee,SHOWN:"shown"+ee,FOCUSIN:"focusin"+ee,RESIZE:"resize"+ee,CLICK_DISMISS:"click.dismiss"+ee,KEYDOWN_DISMISS:"keydown.dismiss"+ee,MOUSEUP_DISMISS:"mouseup.dismiss"+ee,MOUSEDOWN_DISMISS:"mousedown.dismiss"+ee,CLICK_DATA_API:"click"+ee+".data-api"},se="modal-dialog-scrollable",ae="modal-scrollbar-measure",le="modal-backdrop",ce="modal-open",he="fade",ue="show",fe=".modal-dialog",de=".modal-body",ge='[data-toggle="modal"]',_e='[data-dismiss="modal"]',me=".fixed-top, .fixed-bottom, .is-fixed, .sticky-top",pe=".sticky-top",ve=function(){function o(t,e){this._config=this._getConfig(e),this._element=t,this._dialog=t.querySelector(fe),this._backdrop=null,this._isShown=!1,this._isBodyOverflowing=!1,this._ignoreBackdropClick=!1,this._isTransitioning=!1,this._scrollbarWidth=0}var t=o.prototype;return t.toggle=function(t){return this._isShown?this.hide():this.show(t)},t.show=function(t){var e=this;if(!this._isShown&&!this._isTransitioning){g(this._element).hasClass(he)&&(this._isTransitioning=!0);var n=g.Event(re.SHOW,{relatedTarget:t});g(this._element).trigger(n),this._isShown||n.isDefaultPrevented()||(this._isShown=!0,this._checkScrollbar(),this._setScrollbar(),this._adjustDialog(),this._setEscapeEvent(),this._setResizeEvent(),g(this._element).on(re.CLICK_DISMISS,_e,function(t){return e.hide(t)}),g(this._dialog).on(re.MOUSEDOWN_DISMISS,function(){g(e._element).one(re.MOUSEUP_DISMISS,function(t){g(t.target).is(e._element)&&(e._ignoreBackdropClick=!0)})}),this._showBackdrop(function(){return e._showElement(t)}))}},t.hide=function(t){var e=this;if(t&&t.preventDefault(),this._isShown&&!this._isTransitioning){var n=g.Event(re.HIDE);if(g(this._element).trigger(n),this._isShown&&!n.isDefaultPrevented()){this._isShown=!1;var i=g(this._element).hasClass(he);if(i&&(this._isTransitioning=!0),this._setEscapeEvent(),this._setResizeEvent(),g(document).off(re.FOCUSIN),g(this._element).removeClass(ue),g(this._element).off(re.CLICK_DISMISS),g(this._dialog).off(re.MOUSEDOWN_DISMISS),i){var o=_.getTransitionDurationFromElement(this._element);g(this._element).one(_.TRANSITION_END,function(t){return e._hideModal(t)}).emulateTransitionEnd(o)}else this._hideModal()}}},t.dispose=function(){[window,this._element,this._dialog].forEach(function(t){return g(t).off(ee)}),g(document).off(re.FOCUSIN),g.removeData(this._element,te),this._config=null,this._element=null,this._dialog=null,this._backdrop=null,this._isShown=null,this._isBodyOverflowing=null,this._ignoreBackdropClick=null,this._isTransitioning=null,this._scrollbarWidth=null},t.handleUpdate=function(){this._adjustDialog()},t._getConfig=function(t){return t=l({},ie,t),_.typeCheckConfig(Zt,t,oe),t},t._showElement=function(t){var e=this,n=g(this._element).hasClass(he);this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE||document.body.appendChild(this._element),this._element.style.display="block",this._element.removeAttribute("aria-hidden"),this._element.setAttribute("aria-modal",!0),g(this._dialog).hasClass(se)?this._dialog.querySelector(de).scrollTop=0:this._element.scrollTop=0,n&&_.reflow(this._element),g(this._element).addClass(ue),this._config.focus&&this._enforceFocus();var i=g.Event(re.SHOWN,{relatedTarget:t}),o=function(){e._config.focus&&e._element.focus(),e._isTransitioning=!1,g(e._element).trigger(i)};if(n){var r=_.getTransitionDurationFromElement(this._dialog);g(this._dialog).one(_.TRANSITION_END,o).emulateTransitionEnd(r)}else o()},t._enforceFocus=function(){var e=this;g(document).off(re.FOCUSIN).on(re.FOCUSIN,function(t){document!==t.target&&e._element!==t.target&&0===g(e._element).has(t.target).length&&e._element.focus()})},t._setEscapeEvent=function(){var e=this;this._isShown&&this._config.keyboard?g(this._element).on(re.KEYDOWN_DISMISS,function(t){27===t.which&&(t.preventDefault(),e.hide())}):this._isShown||g(this._element).off(re.KEYDOWN_DISMISS)},t._setResizeEvent=function(){var e=this;this._isShown?g(window).on(re.RESIZE,function(t){return e.handleUpdate(t)}):g(window).off(re.RESIZE)},t._hideModal=function(){var t=this;this._element.style.display="none",this._element.setAttribute("aria-hidden",!0),this._element.removeAttribute("aria-modal"),this._isTransitioning=!1,this._showBackdrop(function(){g(document.body).removeClass(ce),t._resetAdjustments(),t._resetScrollbar(),g(t._element).trigger(re.HIDDEN)})},t._removeBackdrop=function(){this._backdrop&&(g(this._backdrop).remove(),this._backdrop=null)},t._showBackdrop=function(t){var e=this,n=g(this._element).hasClass(he)?he:"";if(this._isShown&&this._config.backdrop){if(this._backdrop=document.createElement("div"),this._backdrop.className=le,n&&this._backdrop.classList.add(n),g(this._backdrop).appendTo(document.body),g(this._element).on(re.CLICK_DISMISS,function(t){e._ignoreBackdropClick?e._ignoreBackdropClick=!1:t.target===t.currentTarget&&("static"===e._config.backdrop?e._element.focus():e.hide())}),n&&_.reflow(this._backdrop),g(this._backdrop).addClass(ue),!t)return;if(!n)return void t();var i=_.getTransitionDurationFromElement(this._backdrop);g(this._backdrop).one(_.TRANSITION_END,t).emulateTransitionEnd(i)}else if(!this._isShown&&this._backdrop){g(this._backdrop).removeClass(ue);var o=function(){e._removeBackdrop(),t&&t()};if(g(this._element).hasClass(he)){var r=_.getTransitionDurationFromElement(this._backdrop);g(this._backdrop).one(_.TRANSITION_END,o).emulateTransitionEnd(r)}else o()}else t&&t()},t._adjustDialog=function(){var t=this._element.scrollHeight>document.documentElement.clientHeight;!this._isBodyOverflowing&&t&&(this._element.style.paddingLeft=this._scrollbarWidth+"px"),this._isBodyOverflowing&&!t&&(this._element.style.paddingRight=this._scrollbarWidth+"px")},t._resetAdjustments=function(){this._element.style.paddingLeft="",this._element.style.paddingRight=""},t._checkScrollbar=function(){var t=document.body.getBoundingClientRect();this._isBodyOverflowing=t.left+t.right<window.innerWidth,this._scrollbarWidth=this._getScrollbarWidth()},t._setScrollbar=function(){var o=this;if(this._isBodyOverflowing){var t=[].slice.call(document.querySelectorAll(me)),e=[].slice.call(document.querySelectorAll(pe));g(t).each(function(t,e){var n=e.style.paddingRight,i=g(e).css("padding-right");g(e).data("padding-right",n).css("padding-right",parseFloat(i)+o._scrollbarWidth+"px")}),g(e).each(function(t,e){var n=e.style.marginRight,i=g(e).css("margin-right");g(e).data("margin-right",n).css("margin-right",parseFloat(i)-o._scrollbarWidth+"px")});var n=document.body.style.paddingRight,i=g(document.body).css("padding-right");g(document.body).data("padding-right",n).css("padding-right",parseFloat(i)+this._scrollbarWidth+"px")}g(document.body).addClass(ce)},t._resetScrollbar=function(){var t=[].slice.call(document.querySelectorAll(me));g(t).each(function(t,e){var n=g(e).data("padding-right");g(e).removeData("padding-right"),e.style.paddingRight=n||""});var e=[].slice.call(document.querySelectorAll(""+pe));g(e).each(function(t,e){var n=g(e).data("margin-right");"undefined"!=typeof n&&g(e).css("margin-right",n).removeData("margin-right")});var n=g(document.body).data("padding-right");g(document.body).removeData("padding-right"),document.body.style.paddingRight=n||""},t._getScrollbarWidth=function(){var t=document.createElement("div");t.className=ae,document.body.appendChild(t);var e=t.getBoundingClientRect().width-t.clientWidth;return document.body.removeChild(t),e},o._jQueryInterface=function(n,i){return this.each(function(){var t=g(this).data(te),e=l({},ie,g(this).data(),"object"==typeof n&&n?n:{});if(t||(t=new o(this,e),g(this).data(te,t)),"string"==typeof n){if("undefined"==typeof t[n])throw new TypeError('No method named "'+n+'"');t[n](i)}else e.show&&t.show(i)})},s(o,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return ie}}]),o}();g(document).on(re.CLICK_DATA_API,ge,function(t){var e,n=this,i=_.getSelectorFromElement(this);i&&(e=document.querySelector(i));var o=g(e).data(te)?"toggle":l({},g(e).data(),g(this).data());"A"!==this.tagName&&"AREA"!==this.tagName||t.preventDefault();var r=g(e).one(re.SHOW,function(t){t.isDefaultPrevented()||r.one(re.HIDDEN,function(){g(n).is(":visible")&&n.focus()})});ve._jQueryInterface.call(g(e),o,this)}),g.fn[Zt]=ve._jQueryInterface,g.fn[Zt].Constructor=ve,g.fn[Zt].noConflict=function(){return g.fn[Zt]=ne,ve._jQueryInterface};var ye=["background","cite","href","itemtype","longdesc","poster","src","xlink:href"],Ee={"*":["class","dir","id","lang","role",/^aria-[\w-]*$/i],a:["target","href","title","rel"],area:[],b:[],br:[],col:[],code:[],div:[],em:[],hr:[],h1:[],h2:[],h3:[],h4:[],h5:[],h6:[],i:[],img:["src","alt","title","width","height"],li:[],ol:[],p:[],pre:[],s:[],small:[],span:[],sub:[],sup:[],strong:[],u:[],ul:[]},Ce=/^(?:(?:https?|mailto|ftp|tel|file):|[^&:/?#]*(?:[/?#]|$))/gi,Te=/^data:(?:image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp)|video\/(?:mpeg|mp4|ogg|webm)|audio\/(?:mp3|oga|ogg|opus));base64,[a-z0-9+/]+=*$/i;function Se(t,s,e){if(0===t.length)return t;if(e&&"function"==typeof e)return e(t);for(var n=(new window.DOMParser).parseFromString(t,"text/html"),a=Object.keys(s),l=[].slice.call(n.body.querySelectorAll("*")),i=function(t,e){var n=l[t],i=n.nodeName.toLowerCase();if(-1===a.indexOf(n.nodeName.toLowerCase()))return n.parentNode.removeChild(n),"continue";var o=[].slice.call(n.attributes),r=[].concat(s["*"]||[],s[i]||[]);o.forEach(function(t){(function(t,e){var n=t.nodeName.toLowerCase();if(-1!==e.indexOf(n))return-1===ye.indexOf(n)||Boolean(t.nodeValue.match(Ce)||t.nodeValue.match(Te));for(var i=e.filter(function(t){return t instanceof RegExp}),o=0,r=i.length;o<r;o++)if(n.match(i[o]))return!0;return!1})(t,r)||n.removeAttribute(t.nodeName)})},o=0,r=l.length;o<r;o++)i(o);return n.body.innerHTML}var be="tooltip",Ie="bs.tooltip",De="."+Ie,we=g.fn[be],Ae="bs-tooltip",Ne=new RegExp("(^|\\s)"+Ae+"\\S+","g"),Oe=["sanitize","whiteList","sanitizeFn"],ke={animation:"boolean",template:"string",title:"(string|element|function)",trigger:"string",delay:"(number|object)",html:"boolean",selector:"(string|boolean)",placement:"(string|function)",offset:"(number|string|function)",container:"(string|element|boolean)",fallbackPlacement:"(string|array)",boundary:"(string|element)",sanitize:"boolean",sanitizeFn:"(null|function)",whiteList:"object"},Pe={AUTO:"auto",TOP:"top",RIGHT:"right",BOTTOM:"bottom",LEFT:"left"},Le={animation:!0,template:'<div class="tooltip" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:!1,selector:!1,placement:"top",offset:0,container:!1,fallbackPlacement:"flip",boundary:"scrollParent",sanitize:!0,sanitizeFn:null,whiteList:Ee},je="show",He="out",Re={HIDE:"hide"+De,HIDDEN:"hidden"+De,SHOW:"show"+De,SHOWN:"shown"+De,INSERTED:"inserted"+De,CLICK:"click"+De,FOCUSIN:"focusin"+De,FOCUSOUT:"focusout"+De,MOUSEENTER:"mouseenter"+De,MOUSELEAVE:"mouseleave"+De},xe="fade",Fe="show",Ue=".tooltip-inner",We=".arrow",qe="hover",Me="focus",Ke="click",Qe="manual",Be=function(){function i(t,e){if("undefined"==typeof u)throw new TypeError("Bootstrap's tooltips require Popper.js (https://popper.js.org/)");this._isEnabled=!0,this._timeout=0,this._hoverState="",this._activeTrigger={},this._popper=null,this.element=t,this.config=this._getConfig(e),this.tip=null,this._setListeners()}var t=i.prototype;return t.enable=function(){this._isEnabled=!0},t.disable=function(){this._isEnabled=!1},t.toggleEnabled=function(){this._isEnabled=!this._isEnabled},t.toggle=function(t){if(this._isEnabled)if(t){var e=this.constructor.DATA_KEY,n=g(t.currentTarget).data(e);n||(n=new this.constructor(t.currentTarget,this._getDelegateConfig()),g(t.currentTarget).data(e,n)),n._activeTrigger.click=!n._activeTrigger.click,n._isWithActiveTrigger()?n._enter(null,n):n._leave(null,n)}else{if(g(this.getTipElement()).hasClass(Fe))return void this._leave(null,this);this._enter(null,this)}},t.dispose=function(){clearTimeout(this._timeout),g.removeData(this.element,this.constructor.DATA_KEY),g(this.element).off(this.constructor.EVENT_KEY),g(this.element).closest(".modal").off("hide.bs.modal"),this.tip&&g(this.tip).remove(),this._isEnabled=null,this._timeout=null,this._hoverState=null,(this._activeTrigger=null)!==this._popper&&this._popper.destroy(),this._popper=null,this.element=null,this.config=null,this.tip=null},t.show=function(){var e=this;if("none"===g(this.element).css("display"))throw new Error("Please use show on visible elements");var t=g.Event(this.constructor.Event.SHOW);if(this.isWithContent()&&this._isEnabled){g(this.element).trigger(t);var n=_.findShadowRoot(this.element),i=g.contains(null!==n?n:this.element.ownerDocument.documentElement,this.element);if(t.isDefaultPrevented()||!i)return;var o=this.getTipElement(),r=_.getUID(this.constructor.NAME);o.setAttribute("id",r),this.element.setAttribute("aria-describedby",r),this.setContent(),this.config.animation&&g(o).addClass(xe);var s="function"==typeof this.config.placement?this.config.placement.call(this,o,this.element):this.config.placement,a=this._getAttachment(s);this.addAttachmentClass(a);var l=this._getContainer();g(o).data(this.constructor.DATA_KEY,this),g.contains(this.element.ownerDocument.documentElement,this.tip)||g(o).appendTo(l),g(this.element).trigger(this.constructor.Event.INSERTED),this._popper=new u(this.element,o,{placement:a,modifiers:{offset:this._getOffset(),flip:{behavior:this.config.fallbackPlacement},arrow:{element:We},preventOverflow:{boundariesElement:this.config.boundary}},onCreate:function(t){t.originalPlacement!==t.placement&&e._handlePopperPlacementChange(t)},onUpdate:function(t){return e._handlePopperPlacementChange(t)}}),g(o).addClass(Fe),"ontouchstart"in document.documentElement&&g(document.body).children().on("mouseover",null,g.noop);var c=function(){e.config.animation&&e._fixTransition();var t=e._hoverState;e._hoverState=null,g(e.element).trigger(e.constructor.Event.SHOWN),t===He&&e._leave(null,e)};if(g(this.tip).hasClass(xe)){var h=_.getTransitionDurationFromElement(this.tip);g(this.tip).one(_.TRANSITION_END,c).emulateTransitionEnd(h)}else c()}},t.hide=function(t){var e=this,n=this.getTipElement(),i=g.Event(this.constructor.Event.HIDE),o=function(){e._hoverState!==je&&n.parentNode&&n.parentNode.removeChild(n),e._cleanTipClass(),e.element.removeAttribute("aria-describedby"),g(e.element).trigger(e.constructor.Event.HIDDEN),null!==e._popper&&e._popper.destroy(),t&&t()};if(g(this.element).trigger(i),!i.isDefaultPrevented()){if(g(n).removeClass(Fe),"ontouchstart"in document.documentElement&&g(document.body).children().off("mouseover",null,g.noop),this._activeTrigger[Ke]=!1,this._activeTrigger[Me]=!1,this._activeTrigger[qe]=!1,g(this.tip).hasClass(xe)){var r=_.getTransitionDurationFromElement(n);g(n).one(_.TRANSITION_END,o).emulateTransitionEnd(r)}else o();this._hoverState=""}},t.update=function(){null!==this._popper&&this._popper.scheduleUpdate()},t.isWithContent=function(){return Boolean(this.getTitle())},t.addAttachmentClass=function(t){g(this.getTipElement()).addClass(Ae+"-"+t)},t.getTipElement=function(){return this.tip=this.tip||g(this.config.template)[0],this.tip},t.setContent=function(){var t=this.getTipElement();this.setElementContent(g(t.querySelectorAll(Ue)),this.getTitle()),g(t).removeClass(xe+" "+Fe)},t.setElementContent=function(t,e){"object"!=typeof e||!e.nodeType&&!e.jquery?this.config.html?(this.config.sanitize&&(e=Se(e,this.config.whiteList,this.config.sanitizeFn)),t.html(e)):t.text(e):this.config.html?g(e).parent().is(t)||t.empty().append(e):t.text(g(e).text())},t.getTitle=function(){var t=this.element.getAttribute("data-original-title");return t||(t="function"==typeof this.config.title?this.config.title.call(this.element):this.config.title),t},t._getOffset=function(){var e=this,t={};return"function"==typeof this.config.offset?t.fn=function(t){return t.offsets=l({},t.offsets,e.config.offset(t.offsets,e.element)||{}),t}:t.offset=this.config.offset,t},t._getContainer=function(){return!1===this.config.container?document.body:_.isElement(this.config.container)?g(this.config.container):g(document).find(this.config.container)},t._getAttachment=function(t){return Pe[t.toUpperCase()]},t._setListeners=function(){var i=this;this.config.trigger.split(" ").forEach(function(t){if("click"===t)g(i.element).on(i.constructor.Event.CLICK,i.config.selector,function(t){return i.toggle(t)});else if(t!==Qe){var e=t===qe?i.constructor.Event.MOUSEENTER:i.constructor.Event.FOCUSIN,n=t===qe?i.constructor.Event.MOUSELEAVE:i.constructor.Event.FOCUSOUT;g(i.element).on(e,i.config.selector,function(t){return i._enter(t)}).on(n,i.config.selector,function(t){return i._leave(t)})}}),g(this.element).closest(".modal").on("hide.bs.modal",function(){i.element&&i.hide()}),this.config.selector?this.config=l({},this.config,{trigger:"manual",selector:""}):this._fixTitle()},t._fixTitle=function(){var t=typeof this.element.getAttribute("data-original-title");(this.element.getAttribute("title")||"string"!==t)&&(this.element.setAttribute("data-original-title",this.element.getAttribute("title")||""),this.element.setAttribute("title",""))},t._enter=function(t,e){var n=this.constructor.DATA_KEY;(e=e||g(t.currentTarget).data(n))||(e=new this.constructor(t.currentTarget,this._getDelegateConfig()),g(t.currentTarget).data(n,e)),t&&(e._activeTrigger["focusin"===t.type?Me:qe]=!0),g(e.getTipElement()).hasClass(Fe)||e._hoverState===je?e._hoverState=je:(clearTimeout(e._timeout),e._hoverState=je,e.config.delay&&e.config.delay.show?e._timeout=setTimeout(function(){e._hoverState===je&&e.show()},e.config.delay.show):e.show())},t._leave=function(t,e){var n=this.constructor.DATA_KEY;(e=e||g(t.currentTarget).data(n))||(e=new this.constructor(t.currentTarget,this._getDelegateConfig()),g(t.currentTarget).data(n,e)),t&&(e._activeTrigger["focusout"===t.type?Me:qe]=!1),e._isWithActiveTrigger()||(clearTimeout(e._timeout),e._hoverState=He,e.config.delay&&e.config.delay.hide?e._timeout=setTimeout(function(){e._hoverState===He&&e.hide()},e.config.delay.hide):e.hide())},t._isWithActiveTrigger=function(){for(var t in this._activeTrigger)if(this._activeTrigger[t])return!0;return!1},t._getConfig=function(t){var e=g(this.element).data();return Object.keys(e).forEach(function(t){-1!==Oe.indexOf(t)&&delete e[t]}),"number"==typeof(t=l({},this.constructor.Default,e,"object"==typeof t&&t?t:{})).delay&&(t.delay={show:t.delay,hide:t.delay}),"number"==typeof t.title&&(t.title=t.title.toString()),"number"==typeof t.content&&(t.content=t.content.toString()),_.typeCheckConfig(be,t,this.constructor.DefaultType),t.sanitize&&(t.template=Se(t.template,t.whiteList,t.sanitizeFn)),t},t._getDelegateConfig=function(){var t={};if(this.config)for(var e in this.config)this.constructor.Default[e]!==this.config[e]&&(t[e]=this.config[e]);return t},t._cleanTipClass=function(){var t=g(this.getTipElement()),e=t.attr("class").match(Ne);null!==e&&e.length&&t.removeClass(e.join(""))},t._handlePopperPlacementChange=function(t){var e=t.instance;this.tip=e.popper,this._cleanTipClass(),this.addAttachmentClass(this._getAttachment(t.placement))},t._fixTransition=function(){var t=this.getTipElement(),e=this.config.animation;null===t.getAttribute("x-placement")&&(g(t).removeClass(xe),this.config.animation=!1,this.hide(),this.show(),this.config.animation=e)},i._jQueryInterface=function(n){return this.each(function(){var t=g(this).data(Ie),e="object"==typeof n&&n;if((t||!/dispose|hide/.test(n))&&(t||(t=new i(this,e),g(this).data(Ie,t)),"string"==typeof n)){if("undefined"==typeof t[n])throw new TypeError('No method named "'+n+'"');t[n]()}})},s(i,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return Le}},{key:"NAME",get:function(){return be}},{key:"DATA_KEY",get:function(){return Ie}},{key:"Event",get:function(){return Re}},{key:"EVENT_KEY",get:function(){return De}},{key:"DefaultType",get:function(){return ke}}]),i}();g.fn[be]=Be._jQueryInterface,g.fn[be].Constructor=Be,g.fn[be].noConflict=function(){return g.fn[be]=we,Be._jQueryInterface};var Ve="popover",Ye="bs.popover",ze="."+Ye,Xe=g.fn[Ve],$e="bs-popover",Ge=new RegExp("(^|\\s)"+$e+"\\S+","g"),Je=l({},Be.Default,{placement:"right",trigger:"click",content:"",template:'<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'}),Ze=l({},Be.DefaultType,{content:"(string|element|function)"}),tn="fade",en="show",nn=".popover-header",on=".popover-body",rn={HIDE:"hide"+ze,HIDDEN:"hidden"+ze,SHOW:"show"+ze,SHOWN:"shown"+ze,INSERTED:"inserted"+ze,CLICK:"click"+ze,FOCUSIN:"focusin"+ze,FOCUSOUT:"focusout"+ze,MOUSEENTER:"mouseenter"+ze,MOUSELEAVE:"mouseleave"+ze},sn=function(t){var e,n;function i(){return t.apply(this,arguments)||this}n=t,(e=i).prototype=Object.create(n.prototype),(e.prototype.constructor=e).__proto__=n;var o=i.prototype;return o.isWithContent=function(){return this.getTitle()||this._getContent()},o.addAttachmentClass=function(t){g(this.getTipElement()).addClass($e+"-"+t)},o.getTipElement=function(){return this.tip=this.tip||g(this.config.template)[0],this.tip},o.setContent=function(){var t=g(this.getTipElement());this.setElementContent(t.find(nn),this.getTitle());var e=this._getContent();"function"==typeof e&&(e=e.call(this.element)),this.setElementContent(t.find(on),e),t.removeClass(tn+" "+en)},o._getContent=function(){return this.element.getAttribute("data-content")||this.config.content},o._cleanTipClass=function(){var t=g(this.getTipElement()),e=t.attr("class").match(Ge);null!==e&&0<e.length&&t.removeClass(e.join(""))},i._jQueryInterface=function(n){return this.each(function(){var t=g(this).data(Ye),e="object"==typeof n?n:null;if((t||!/dispose|hide/.test(n))&&(t||(t=new i(this,e),g(this).data(Ye,t)),"string"==typeof n)){if("undefined"==typeof t[n])throw new TypeError('No method named "'+n+'"');t[n]()}})},s(i,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return Je}},{key:"NAME",get:function(){return Ve}},{key:"DATA_KEY",get:function(){return Ye}},{key:"Event",get:function(){return rn}},{key:"EVENT_KEY",get:function(){return ze}},{key:"DefaultType",get:function(){return Ze}}]),i}(Be);g.fn[Ve]=sn._jQueryInterface,g.fn[Ve].Constructor=sn,g.fn[Ve].noConflict=function(){return g.fn[Ve]=Xe,sn._jQueryInterface};var an="scrollspy",ln="bs.scrollspy",cn="."+ln,hn=g.fn[an],un={offset:10,method:"auto",target:""},fn={offset:"number",method:"string",target:"(string|element)"},dn={ACTIVATE:"activate"+cn,SCROLL:"scroll"+cn,LOAD_DATA_API:"load"+cn+".data-api"},gn="dropdown-item",_n="active",mn='[data-spy="scroll"]',pn=".nav, .list-group",vn=".nav-link",yn=".nav-item",En=".list-group-item",Cn=".dropdown",Tn=".dropdown-item",Sn=".dropdown-toggle",bn="offset",In="position",Dn=function(){function n(t,e){var n=this;this._element=t,this._scrollElement="BODY"===t.tagName?window:t,this._config=this._getConfig(e),this._selector=this._config.target+" "+vn+","+this._config.target+" "+En+","+this._config.target+" "+Tn,this._offsets=[],this._targets=[],this._activeTarget=null,this._scrollHeight=0,g(this._scrollElement).on(dn.SCROLL,function(t){return n._process(t)}),this.refresh(),this._process()}var t=n.prototype;return t.refresh=function(){var e=this,t=this._scrollElement===this._scrollElement.window?bn:In,o="auto"===this._config.method?t:this._config.method,r=o===In?this._getScrollTop():0;this._offsets=[],this._targets=[],this._scrollHeight=this._getScrollHeight(),[].slice.call(document.querySelectorAll(this._selector)).map(function(t){var e,n=_.getSelectorFromElement(t);if(n&&(e=document.querySelector(n)),e){var i=e.getBoundingClientRect();if(i.width||i.height)return[g(e)[o]().top+r,n]}return null}).filter(function(t){return t}).sort(function(t,e){return t[0]-e[0]}).forEach(function(t){e._offsets.push(t[0]),e._targets.push(t[1])})},t.dispose=function(){g.removeData(this._element,ln),g(this._scrollElement).off(cn),this._element=null,this._scrollElement=null,this._config=null,this._selector=null,this._offsets=null,this._targets=null,this._activeTarget=null,this._scrollHeight=null},t._getConfig=function(t){if("string"!=typeof(t=l({},un,"object"==typeof t&&t?t:{})).target){var e=g(t.target).attr("id");e||(e=_.getUID(an),g(t.target).attr("id",e)),t.target="#"+e}return _.typeCheckConfig(an,t,fn),t},t._getScrollTop=function(){return this._scrollElement===window?this._scrollElement.pageYOffset:this._scrollElement.scrollTop},t._getScrollHeight=function(){return this._scrollElement.scrollHeight||Math.max(document.body.scrollHeight,document.documentElement.scrollHeight)},t._getOffsetHeight=function(){return this._scrollElement===window?window.innerHeight:this._scrollElement.getBoundingClientRect().height},t._process=function(){var t=this._getScrollTop()+this._config.offset,e=this._getScrollHeight(),n=this._config.offset+e-this._getOffsetHeight();if(this._scrollHeight!==e&&this.refresh(),n<=t){var i=this._targets[this._targets.length-1];this._activeTarget!==i&&this._activate(i)}else{if(this._activeTarget&&t<this._offsets[0]&&0<this._offsets[0])return this._activeTarget=null,void this._clear();for(var o=this._offsets.length;o--;){this._activeTarget!==this._targets[o]&&t>=this._offsets[o]&&("undefined"==typeof this._offsets[o+1]||t<this._offsets[o+1])&&this._activate(this._targets[o])}}},t._activate=function(e){this._activeTarget=e,this._clear();var t=this._selector.split(",").map(function(t){return t+'[data-target="'+e+'"],'+t+'[href="'+e+'"]'}),n=g([].slice.call(document.querySelectorAll(t.join(","))));n.hasClass(gn)?(n.closest(Cn).find(Sn).addClass(_n),n.addClass(_n)):(n.addClass(_n),n.parents(pn).prev(vn+", "+En).addClass(_n),n.parents(pn).prev(yn).children(vn).addClass(_n)),g(this._scrollElement).trigger(dn.ACTIVATE,{relatedTarget:e})},t._clear=function(){[].slice.call(document.querySelectorAll(this._selector)).filter(function(t){return t.classList.contains(_n)}).forEach(function(t){return t.classList.remove(_n)})},n._jQueryInterface=function(e){return this.each(function(){var t=g(this).data(ln);if(t||(t=new n(this,"object"==typeof e&&e),g(this).data(ln,t)),"string"==typeof e){if("undefined"==typeof t[e])throw new TypeError('No method named "'+e+'"');t[e]()}})},s(n,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"Default",get:function(){return un}}]),n}();g(window).on(dn.LOAD_DATA_API,function(){for(var t=[].slice.call(document.querySelectorAll(mn)),e=t.length;e--;){var n=g(t[e]);Dn._jQueryInterface.call(n,n.data())}}),g.fn[an]=Dn._jQueryInterface,g.fn[an].Constructor=Dn,g.fn[an].noConflict=function(){return g.fn[an]=hn,Dn._jQueryInterface};var wn="bs.tab",An="."+wn,Nn=g.fn.tab,On={HIDE:"hide"+An,HIDDEN:"hidden"+An,SHOW:"show"+An,SHOWN:"shown"+An,CLICK_DATA_API:"click"+An+".data-api"},kn="dropdown-menu",Pn="active",Ln="disabled",jn="fade",Hn="show",Rn=".dropdown",xn=".nav, .list-group",Fn=".active",Un="> li > .active",Wn='[data-toggle="tab"], [data-toggle="pill"], [data-toggle="list"]',qn=".dropdown-toggle",Mn="> .dropdown-menu .active",Kn=function(){function i(t){this._element=t}var t=i.prototype;return t.show=function(){var n=this;if(!(this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE&&g(this._element).hasClass(Pn)||g(this._element).hasClass(Ln))){var t,i,e=g(this._element).closest(xn)[0],o=_.getSelectorFromElement(this._element);if(e){var r="UL"===e.nodeName||"OL"===e.nodeName?Un:Fn;i=(i=g.makeArray(g(e).find(r)))[i.length-1]}var s=g.Event(On.HIDE,{relatedTarget:this._element}),a=g.Event(On.SHOW,{relatedTarget:i});if(i&&g(i).trigger(s),g(this._element).trigger(a),!a.isDefaultPrevented()&&!s.isDefaultPrevented()){o&&(t=document.querySelector(o)),this._activate(this._element,e);var l=function(){var t=g.Event(On.HIDDEN,{relatedTarget:n._element}),e=g.Event(On.SHOWN,{relatedTarget:i});g(i).trigger(t),g(n._element).trigger(e)};t?this._activate(t,t.parentNode,l):l()}}},t.dispose=function(){g.removeData(this._element,wn),this._element=null},t._activate=function(t,e,n){var i=this,o=(!e||"UL"!==e.nodeName&&"OL"!==e.nodeName?g(e).children(Fn):g(e).find(Un))[0],r=n&&o&&g(o).hasClass(jn),s=function(){return i._transitionComplete(t,o,n)};if(o&&r){var a=_.getTransitionDurationFromElement(o);g(o).removeClass(Hn).one(_.TRANSITION_END,s).emulateTransitionEnd(a)}else s()},t._transitionComplete=function(t,e,n){if(e){g(e).removeClass(Pn);var i=g(e.parentNode).find(Mn)[0];i&&g(i).removeClass(Pn),"tab"===e.getAttribute("role")&&e.setAttribute("aria-selected",!1)}if(g(t).addClass(Pn),"tab"===t.getAttribute("role")&&t.setAttribute("aria-selected",!0),_.reflow(t),t.classList.contains(jn)&&t.classList.add(Hn),t.parentNode&&g(t.parentNode).hasClass(kn)){var o=g(t).closest(Rn)[0];if(o){var r=[].slice.call(o.querySelectorAll(qn));g(r).addClass(Pn)}t.setAttribute("aria-expanded",!0)}n&&n()},i._jQueryInterface=function(n){return this.each(function(){var t=g(this),e=t.data(wn);if(e||(e=new i(this),t.data(wn,e)),"string"==typeof n){if("undefined"==typeof e[n])throw new TypeError('No method named "'+n+'"');e[n]()}})},s(i,null,[{key:"VERSION",get:function(){return"4.3.1"}}]),i}();g(document).on(On.CLICK_DATA_API,Wn,function(t){t.preventDefault(),Kn._jQueryInterface.call(g(this),"show")}),g.fn.tab=Kn._jQueryInterface,g.fn.tab.Constructor=Kn,g.fn.tab.noConflict=function(){return g.fn.tab=Nn,Kn._jQueryInterface};var Qn="toast",Bn="bs.toast",Vn="."+Bn,Yn=g.fn[Qn],zn={CLICK_DISMISS:"click.dismiss"+Vn,HIDE:"hide"+Vn,HIDDEN:"hidden"+Vn,SHOW:"show"+Vn,SHOWN:"shown"+Vn},Xn="fade",$n="hide",Gn="show",Jn="showing",Zn={animation:"boolean",autohide:"boolean",delay:"number"},ti={animation:!0,autohide:!0,delay:500},ei='[data-dismiss="toast"]',ni=function(){function i(t,e){this._element=t,this._config=this._getConfig(e),this._timeout=null,this._setListeners()}var t=i.prototype;return t.show=function(){var t=this;g(this._element).trigger(zn.SHOW),this._config.animation&&this._element.classList.add(Xn);var e=function(){t._element.classList.remove(Jn),t._element.classList.add(Gn),g(t._element).trigger(zn.SHOWN),t._config.autohide&&t.hide()};if(this._element.classList.remove($n),this._element.classList.add(Jn),this._config.animation){var n=_.getTransitionDurationFromElement(this._element);g(this._element).one(_.TRANSITION_END,e).emulateTransitionEnd(n)}else e()},t.hide=function(t){var e=this;this._element.classList.contains(Gn)&&(g(this._element).trigger(zn.HIDE),t?this._close():this._timeout=setTimeout(function(){e._close()},this._config.delay))},t.dispose=function(){clearTimeout(this._timeout),this._timeout=null,this._element.classList.contains(Gn)&&this._element.classList.remove(Gn),g(this._element).off(zn.CLICK_DISMISS),g.removeData(this._element,Bn),this._element=null,this._config=null},t._getConfig=function(t){return t=l({},ti,g(this._element).data(),"object"==typeof t&&t?t:{}),_.typeCheckConfig(Qn,t,this.constructor.DefaultType),t},t._setListeners=function(){var t=this;g(this._element).on(zn.CLICK_DISMISS,ei,function(){return t.hide(!0)})},t._close=function(){var t=this,e=function(){t._element.classList.add($n),g(t._element).trigger(zn.HIDDEN)};if(this._element.classList.remove(Gn),this._config.animation){var n=_.getTransitionDurationFromElement(this._element);g(this._element).one(_.TRANSITION_END,e).emulateTransitionEnd(n)}else e()},i._jQueryInterface=function(n){return this.each(function(){var t=g(this),e=t.data(Bn);if(e||(e=new i(this,"object"==typeof n&&n),t.data(Bn,e)),"string"==typeof n){if("undefined"==typeof e[n])throw new TypeError('No method named "'+n+'"');e[n](this)}})},s(i,null,[{key:"VERSION",get:function(){return"4.3.1"}},{key:"DefaultType",get:function(){return Zn}},{key:"Default",get:function(){return ti}}]),i}();g.fn[Qn]=ni._jQueryInterface,g.fn[Qn].Constructor=ni,g.fn[Qn].noConflict=function(){return g.fn[Qn]=Yn,ni._jQueryInterface},function(){if("undefined"==typeof g)throw new TypeError("Bootstrap's JavaScript requires jQuery. jQuery must be included before Bootstrap's JavaScript.");var t=g.fn.jquery.split(" ")[0].split(".");if(t[0]<2&&t[1]<9||1===t[0]&&9===t[1]&&t[2]<1||4<=t[0])throw new Error("Bootstrap's JavaScript requires at least jQuery v1.9.1 but less than v4.0.0")}(),t.Util=_,t.Alert=p,t.Button=P,t.Carousel=lt,t.Collapse=bt,t.Dropdown=Jt,t.Modal=ve,t.Popover=sn,t.Scrollspy=Dn,t.Tab=Kn,t.Toast=ni,t.Tooltip=Be,Object.defineProperty(t,"__esModule",{value:!0})});
//# sourceMappingURL=bootstrap.min.js.map
function setUpDropdown(section) {
    $('.'+section+'Row[data-dropdown-title]').sort(function(a, b) {
        var aTitle = $(a).attr('data-dropdown-title');
        var bTitle = $(b).attr('data-dropdown-title');
        if (aTitle < bTitle) { return -1; }
        if (aTitle > bTitle) { return 1; }
        return 0;
    }).each(function() {
        $('#'+section+'DropDown').append("<a class=\"dropdown-item "+section+"-dropdown-item textSmall\" data-filter-target=\""+$(this).attr('data-filter-target')+"\">"+$(this).attr('data-dropdown-title')+"</a>")
    });

    $('.'+section+'-dropdown-item').click(function() {
        var targetId = $(this).attr('data-filter-target');
        $('.'+section+'Row[data-filter-target]').each(function() {
            if(targetId=="show-all") {
                $(this).removeClass('d-none');
            } else {
                if($(this).attr('data-filter-target')!=targetId) {
                    $(this).addClass('d-none');
                } else {
                    $(this).removeClass('d-none');
                }
            }
        });
    });
}
function setUpSearch(section) {
    $('#'+section+'SearchControl').click(function() {
        var searchBox = $('#'+section+'SearchBox');
        var searchInput = $('#'+section+'SearchInput');
        if(searchBox.hasClass("isOpen")) {
            searchBox.animate({width: '0px'}, 'slow');
            showAll('general');
            showAll('travel');
            showAll('other');
        } else {
            searchInput.val('');
            searchBox.animate({width: '300px'}, 'slow');
        }
        searchBox.toggleClass("isOpen");
    });

    $('#'+section+'SearchInput').on("change paste keyup", function() {
        var searchString = $(this).val().toLowerCase();
        performSearch(searchString, 'general');
        performSearch(searchString, 'travel');
        performSearch(searchString, 'other');
    });
}

function showAll(section) {
    $('.'+section+'Row[data-search-immunization-name]').each(function() {
        $(this).removeClass("d-none");
    });
}

function performSearch(searchString, section) {

    $('.'+section+'Row[data-search-immunization-name]').each(function() {
        var searchName = $(this).attr('data-search-immunization-name').toLowerCase();
        var searchProduct = $(this).attr('data-search-immunization-product').toLowerCase();

        if(searchName.indexOf(searchString) >= 0 || searchProduct.indexOf(searchString) >= 0) {
            $(this).removeClass("d-none");
        } else {
            $(this).addClass("d-none");
        }
    });

    var sectionTitleContainer = $('#'+section+'SectionTitleContainer');
    var titleContainer = $('#'+section+'TitleContainer');
    if($('.'+section+'Row[data-search-immunization-name]').filter(":not(.d-none)").length > 0) {
        sectionTitleContainer.removeClass("d-none");
        titleContainer.removeClass("d-none");
    } else {
        if(section != 'general') {
            sectionTitleContainer.addClass("d-none");
        }
        titleContainer.addClass("d-none");
    }
}

                    $(document).ready(function () {
                        // collapse child rows if parent row gets collapsed.
                        $('.panel-collapse').on('hidden.bs.collapse', function () {
                            $(this).find('.collapse').collapse('hide');
                        });

                        // tooltips
                        $('[data-toggle="tooltip"]').tooltip()

                        // dropdowns
                        setUpDropdown('general')
                        setUpDropdown('travel')

                        // search
                        setUpSearch('general')
                    });

                    //]]>
                </script>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
