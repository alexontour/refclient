<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.17
Name: Beigelegte erhobene Befunde
Description: Beinhaltet eingebettete Befunde, die im Zuge des Aufenthalts erstellt wurden.  Die beigelegten Befunde werden in Form von maschinenlesbaren Elementen eingebettet.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.17-2011-12-19T000000">
   <title>Beigelegte erhobene Befunde</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]
Item: (BeigelegteBefunde)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]
Item: (BeigelegteBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]"
         id="d20e11570-false-d190276e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']) &gt;= 1">(BeigelegteBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.17'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']) &lt;= 1">(BeigelegteBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.17'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(BeigelegteBefunde): Element hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(BeigelegteBefunde): Element hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(BeigelegteBefunde): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(BeigelegteBefunde): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(BeigelegteBefunde): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(BeigelegteBefunde): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]) &gt;= 1">(BeigelegteBefunde): Element hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']
Item: (BeigelegteBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']"
         id="d20e11572-false-d190329e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BeigelegteBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.17')">(BeigelegteBefunde): Der Wert von root MUSS '1.2.40.0.34.11.2.2.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (BeigelegteBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:code[(@code = 'BEFBEI' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e11577-false-d190344e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BeigelegteBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="@nullFlavor or (@code='BEFBEI' and @codeSystem='1.2.40.0.34.5.40' and @displayName='Beigelegte erhobene Befunde')">(BeigelegteBefunde): Der Elementinhalt MUSS einer von 'code 'BEFBEI' codeSystem '1.2.40.0.34.5.40' displayName='Beigelegte erhobene Befunde'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:title[not(@nullFlavor)]
Item: (BeigelegteBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:title[not(@nullFlavor)]"
         id="d20e11587-false-d190360e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BeigelegteBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="text()='Beigelegte erhobene Befunde'">(BeigelegteBefunde): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Beigelegte erhobene Befunde'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:text[not(@nullFlavor)]
Item: (BeigelegteBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:text[not(@nullFlavor)]"
         id="d20e11593-false-d190374e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BeigelegteBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (BeigelegteBefunde)
--></pattern>
