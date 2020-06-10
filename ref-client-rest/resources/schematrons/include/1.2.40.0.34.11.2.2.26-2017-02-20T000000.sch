<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.26
Name: Rehabilitationsziele
Description: Die Rehabilitationsziele werden zu Beginn des Reha- Aufenthaltes gemeinsam mit den Patienten definiert. Sie sollen ICF-orientiert formuliert werden (International Classi- fication of Functioning, Disability and Health) und betreffen vor allem individuelle Aktivitäts- und Teilhabe-Ziele der Patienten (beruflich, Arbeitsplatz, Verrichtungen des täglichen Lebens, soziale Teilhabe, Sportausübung ...). Auf den Reha-Zielen basieren die für die Patienten individuell kombinierten rehabilitativen Maßnahmen (Therapien, Schulun- gen ...), die das Reha-Team
                gemeinsam mit den Patienten iR. des Reha-Aufenthaltes umsetzt. Insbesonders bei den ärztlichen Kontrollen und bei der ärztli- chen Schlussuntersuchung wird ua. auch die Ziele-Erreichung geprüft und dokumentiert.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.26-2017-02-20T000000">
   <title>Rehabilitationsziele</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]
Item: (Rehabilitationsziele)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]
Item: (Rehabilitationsziele)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]"
         id="d20e12445-false-d193684e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']) &gt;= 1">(Rehabilitationsziele): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.26'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']) &lt;= 1">(Rehabilitationsziele): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.26'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Rehabilitationsziele): Element hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Rehabilitationsziele): Element hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Rehabilitationsziele): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Rehabilitationsziele): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Rehabilitationsziele): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Rehabilitationsziele): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']
Item: (Rehabilitationsziele)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']"
         id="d20e12447-false-d193734e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Rehabilitationsziele): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.26')">(Rehabilitationsziele): Der Wert von root MUSS '1.2.40.0.34.11.2.2.26' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Rehabilitationsziele)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:code[(@code = 'REHAZIELE' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e12455-false-d193749e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Rehabilitationsziele): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="@nullFlavor or (@code='REHAZIELE' and @codeSystem='1.2.40.0.34.5.40')">(Rehabilitationsziele): Der Elementinhalt MUSS einer von 'code 'REHAZIELE' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:title[not(@nullFlavor)]
Item: (Rehabilitationsziele)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:title[not(@nullFlavor)]"
         id="d20e12465-false-d193765e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Rehabilitationsziele): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="text()='Rehabilitationsziele'">(Rehabilitationsziele): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Rehabilitationsziele'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:text[not(@nullFlavor)]
Item: (Rehabilitationsziele)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:text[not(@nullFlavor)]"
         id="d20e12471-false-d193779e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.26-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Rehabilitationsziele): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.26
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.26']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (Rehabilitationsziele)
--></pattern>
