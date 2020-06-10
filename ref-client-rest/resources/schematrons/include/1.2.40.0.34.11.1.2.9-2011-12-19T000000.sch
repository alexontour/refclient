<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.9
Name: Hilfsmittel und Ressourcen
Description: 
                 Wird ausschließlich als Untersektion zu einer fachlichen Sektion angewandt. 
                 Enthält die Hilfsmittel und Ressourcen zum Thema der übergeordneten Sektion als narrative Beschreibung oder Auflistung. 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.9-2011-12-19T000000">
   <title>Hilfsmittel und Ressourcen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (HilfsmittelRessourcen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]
Item: (HilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]"
         id="d20e5342-false-d38521e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']) &gt;= 1">(HilfsmittelRessourcen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']) &lt;= 1">(HilfsmittelRessourcen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(HilfsmittelRessourcen): Element hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(HilfsmittelRessourcen): Element hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(HilfsmittelRessourcen): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(HilfsmittelRessourcen): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(HilfsmittelRessourcen): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(HilfsmittelRessourcen): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']
Item: (HilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']"
         id="d20e5349-false-d38564e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HilfsmittelRessourcen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.9')">(HilfsmittelRessourcen): Der Wert von root MUSS '1.2.40.0.34.11.1.2.9' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (HilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e5354-false-d38579e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HilfsmittelRessourcen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="@nullFlavor or (@code='RES' and @codeSystem='1.2.40.0.34.5.40' and @displayName='Hilfsmittel und Ressourcen')">(HilfsmittelRessourcen): Der Elementinhalt MUSS einer von 'code 'RES' codeSystem '1.2.40.0.34.5.40' displayName='Hilfsmittel und Ressourcen'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:title
Item: (HilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:title"
         id="d20e5359-false-d38595e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HilfsmittelRessourcen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.9-2011-12-19T000000.html"
              test="text()='Hilfsmittel und Ressourcen'">(HilfsmittelRessourcen): Der Elementinhalt von 'hl7:title' MUSS ''Hilfsmittel und Ressourcen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/hl7:text
Item: (HilfsmittelRessourcen)
-->
</pattern>
