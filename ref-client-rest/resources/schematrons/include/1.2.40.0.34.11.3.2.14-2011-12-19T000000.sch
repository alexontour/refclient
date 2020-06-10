<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.14
Name: Rollenwahrnehmung und Sinnfindung
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.14-2011-12-19T000000">
   <title>Rollenwahrnehmung und Sinnfindung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]
Item: (RollenwahrnehmungSinnfindung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]
Item: (RollenwahrnehmungSinnfindung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]"
         id="d20e26810-false-d255165e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']) &gt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]) &lt;= 1">(RollenwahrnehmungSinnfindung): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']
Item: (RollenwahrnehmungSinnfindung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']"
         id="d20e26812-false-d255230e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RollenwahrnehmungSinnfindung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.14')">(RollenwahrnehmungSinnfindung): Der Wert von root MUSS '1.2.40.0.34.11.3.2.14' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (RollenwahrnehmungSinnfindung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e26817-false-d255245e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RollenwahrnehmungSinnfindung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="@nullFlavor or (@code='PFROLL' and @codeSystem='1.2.40.0.34.5.40')">(RollenwahrnehmungSinnfindung): Der Elementinhalt MUSS einer von 'code 'PFROLL' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:title[not(@nullFlavor)]
Item: (RollenwahrnehmungSinnfindung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:title[not(@nullFlavor)]"
         id="d20e26827-false-d255261e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RollenwahrnehmungSinnfindung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.14-2011-12-19T000000.html"
              test="text()='Rollenwahrnehmung und Sinnfindung'">(RollenwahrnehmungSinnfindung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Rollenwahrnehmung und Sinnfindung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:text[not(@nullFlavor)]
Item: (RollenwahrnehmungSinnfindung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]"
         id="d255277e8-false-d255288e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]"
         id="d255277e15-false-d255306e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
