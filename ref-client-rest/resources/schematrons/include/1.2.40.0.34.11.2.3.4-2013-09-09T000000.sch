<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.3.4
Name: Arznei Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.3.4-2013-09-09T000000">
   <title>Arznei Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (ArzneiEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]"
         id="d20e15861-false-d207604e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@classCode) = ('MANU')">(ArzneiEntry): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]) &gt;= 1">(ArzneiEntry): Element hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]) &lt;= 1">(ArzneiEntry): Element hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']"
         id="d20e15869-false-d207645e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.2')">(ArzneiEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']"
         id="d20e15874-false-d207660e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.53')">(ArzneiEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.53' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]"
         id="d20e15882-false-d207676e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@classCode) = ('MMAT')">(ArzneiEntry): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@determinerCode) = ('KIND')">(ArzneiEntry): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="hl7:code/@nullFlavor or (hl7:code/@code and count(pharm:asContent)&gt;0)">(ArzneiEntry): pharm:asContent Komponente zur Aufnahme der Packungsangaben ist mandatory wenn PZN vorhanden </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]) &gt;= 1">(ArzneiEntry): Element hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]) &lt;= 1">(ArzneiEntry): Element hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]) &lt;= 1">(ArzneiEntry): Element pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']"
         id="d20e15890-false-d207739e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.3.4')">(ArzneiEntry): Der Wert von root MUSS '1.2.40.0.34.11.2.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']"
         id="d20e15895-false-d207754e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.1')">(ArzneiEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]"
         id="d20e15903-false-d207769e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.5')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.5'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:originalText) &gt;= 1">(ArzneiEntry): Element hl7:originalText ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ArzneiEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]/hl7:originalText"
         id="d20e15922-false-d207793e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]/hl7:translation
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.10.1.4.3.5' or @nullFlavor]/hl7:translation"
         id="d20e15924-false-d207803e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name[not(@nullFlavor)]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name[not(@nullFlavor)]"
         id="d20e15929-false-d207813e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]"
         id="d20e15939-false-d207824e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@classCode) = ('CONT')">(ArzneiEntry): Der Wert von classCode MUSS 'CONT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]) &gt;= 1">(ArzneiEntry): Element pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]) &lt;= 1">(ArzneiEntry): Element pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]"
         id="d20e15943-false-d207846e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@classCode) = ('CONT')">(ArzneiEntry): Der Wert von classCode MUSS 'CONT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(ArzneiEntry): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']) &gt;= 1">(ArzneiEntry): Element pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']) &lt;= 1">(ArzneiEntry): Element pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:capacityQuantity[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element pharm:capacityQuantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:capacityQuantity[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element pharm:capacityQuantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']"
         id="d20e15949-false-d207888e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.5')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.5'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ArzneiEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']/hl7:originalText
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']/hl7:originalText"
         id="d20e15956-false-d207907e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:name[not(@nullFlavor)]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:name[not(@nullFlavor)]"
         id="d20e15961-false-d207917e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:capacityQuantity[not(@nullFlavor)]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]]/pharm:containerPackagedMedicine[pharm:code[@codeSystem = '1.2.40.0.10.1.4.3.5']]/pharm:capacityQuantity[not(@nullFlavor)]"
         id="d20e15966-false-d207927e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(ArzneiEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(ArzneiEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]"
         id="d20e15972-false-d207943e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="string(@classCode) = ('ACTI')">(ArzneiEntry): Der Wert von classCode MUSS 'ACTI' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:quantity) &gt;= 1">(ArzneiEntry): Element pharm:quantity ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:quantity) &lt;= 1">(ArzneiEntry): Element pharm:quantity kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]) &gt;= 1">(ArzneiEntry): Element pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]) &lt;= 1">(ArzneiEntry): Element pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity"
         id="d20e15981-false-d207972e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:numerator) &gt;= 1">(ArzneiEntry): Element hl7:numerator ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:numerator) &lt;= 1">(ArzneiEntry): Element hl7:numerator kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:denominator) &gt;= 1">(ArzneiEntry): Element hl7:denominator ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:denominator) &lt;= 1">(ArzneiEntry): Element hl7:denominator kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity/hl7:numerator
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity/hl7:numerator"
         id="d20e15983-false-d207996e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(ArzneiEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(ArzneiEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity/hl7:denominator
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:quantity/hl7:denominator"
         id="d20e15985-false-d208011e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(ArzneiEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(ArzneiEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]"
         id="d20e15988-false-d208027e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]) &gt;= 1">(ArzneiEntry): Element pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]) &lt;= 1">(ArzneiEntry): Element pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]"
         id="d20e15993-false-d208053e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.6.73')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '2.16.840.1.113883.6.73'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ArzneiEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]/hl7:originalText"
         id="d20e15997-false-d208078e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]/hl7:translation
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]/hl7:translation"
         id="d20e15999-false-d208088e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:name[not(@nullFlavor)]
Item: (ArzneiEntry)
-->

   <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]]/pharm:ingredient[pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @nullFlavor]]/pharm:name[not(@nullFlavor)]"
         id="d20e16004-false-d208098e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
