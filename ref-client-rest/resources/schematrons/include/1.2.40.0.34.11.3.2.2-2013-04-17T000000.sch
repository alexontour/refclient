<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.2
Name: Pflege- und Betreuungsdiagnosen (full)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.2-2013-04-17T000000">
   <title>Pflege- und Betreuungsdiagnosen (full)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]"
         id="d20e27149-false-d256168e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']) &lt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']"
         id="d20e27151-false-d256232e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.2')">(PflegeBetreuungsdiagnosenFull): Der Wert von root MUSS '1.2.40.0.34.11.3.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30011
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (PflegeBetreuungsdiagnosenAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d256233e66-false-d256248e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30011-2015-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30011-2015-01-31T000000.html"
              test="@nullFlavor or (@code='PFDIAG' and @codeSystem='1.2.40.0.34.5.40')">(PflegeBetreuungsdiagnosenAlleEIS): Der Elementinhalt MUSS einer von 'code 'PFDIAG' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30011
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:title[not(@nullFlavor)]
Item: (PflegeBetreuungsdiagnosenAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d256233e77-false-d256264e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30011-2015-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30011-2015-01-31T000000.html"
              test="text()='Pflegediagnosen'">(PflegeBetreuungsdiagnosenAlleEIS): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Pflegediagnosen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30011
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:text[not(@nullFlavor)]
Item: (PflegeBetreuungsdiagnosenAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d256233e83-false-d256278e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30011-2015-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]
Item: (PflegeBetreuungsdiagnosenFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2013-04-17T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(PflegeBetreuungsdiagnosenFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
