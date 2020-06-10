<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.3.3
Name: Medikation Abgabe Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.3.3-2012-07-14T000000">
   <title>Medikation Abgabe Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]
Item: (MedikationAbgabeEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]"
         id="d20e14520-false-d205600e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@classCode) = ('SPLY')">(MedikationAbgabeEntry): Der Wert von classCode MUSS 'SPLY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@moodCode) = ('EVN')">(MedikationAbgabeEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.3']) &gt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.3']) &lt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']) &gt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']) &lt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']) &gt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']) &lt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']) &gt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']) &lt;= 1">(MedikationAbgabeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4']) &gt;= 1">(MedikationAbgabeEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4']) &lt;= 1">(MedikationAbgabeEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MedikationAbgabeEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:quantity[not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntry): Element hl7:quantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:quantity[not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntry): Element hl7:quantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &gt;= 1">(MedikationAbgabeEntry): Element hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &lt;= 1">(MedikationAbgabeEntry): Element hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntry): Element hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntry): Element hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.3']
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.3']"
         id="d20e14528-false-d205696e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.3.3')">(MedikationAbgabeEntry): Der Wert von root MUSS '1.2.40.0.34.11.2.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']"
         id="d20e14533-false-d205711e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.34')">(MedikationAbgabeEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.34' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']"
         id="d20e14539-false-d205726e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.3')">(MedikationAbgabeEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']"
         id="d20e14544-false-d205741e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.4')">(MedikationAbgabeEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4']
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.1.4']"
         id="d20e14551-false-d205756e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.1.4')">(MedikationAbgabeEntry): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e14558-false-d205773e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MedikationAbgabeEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.31 ELGA_MedikationAbgabekennz (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="count(hl7:originalText) &lt;= 1">(MedikationAbgabeEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText"
         id="d20e14562-false-d205799e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:quantity[not(@nullFlavor)]
Item: (MedikationAbgabeEntry)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:quantity[not(@nullFlavor)]"
         id="d20e14568-false-d205809e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MedikationAbgabeEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(MedikationAbgabeEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (MedikationAbgabeEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (ArzneiEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('MANU')">(ArzneiEntry): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]) &gt;= 1">(ArzneiEntry): Element hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]) &lt;= 1">(ArzneiEntry): Element hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.2')">(ArzneiEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.53')">(ArzneiEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.53' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('MMAT')">(ArzneiEntry): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@determinerCode) = ('KIND')">(ArzneiEntry): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="hl7:code/@code or (hl7:code/@nullFlavor and count(pharm:asContent)=0)">(ArzneiEntry): pharm:asContent Komponente zur Aufnahme der Packungsangaben nur zulässig wenn PZN oder Zulassungsnummer nicht vorhanden</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']) &gt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']) &lt;= 1">(ArzneiEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]) &gt;= 1">(ArzneiEntry): Element hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]) &lt;= 1">(ArzneiEntry): Element hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:name) &gt;= 1">(ArzneiEntry): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:name) &lt;= 1">(ArzneiEntry): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor]) &lt;= 1">(ArzneiEntry): Element pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]) &lt;= 1">(ArzneiEntry): Element pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.3.4')">(ArzneiEntry): Der Wert von root MUSS '1.2.40.0.34.11.2.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.1')">(ArzneiEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.34.4.16')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.34.4.16'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(@nullFlavor) or @nullFlavor=('NA','NI','UNK')">(ArzneiEntry): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set .</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NA','NI','UNK')))])">(ArzneiEntry): Der Wert von nullFlavor MUSS 'Code NA oder Code NI oder Code UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(hl7:translation) or //hl7:templateId[@root='1.2.40.0.34.11.8.3']">(ArzneiEntry): Optionale Übersetzung des Codes nur bei Medikationsliste zugelassen</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ArzneiEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:originalText">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:translation[@codeSystem = '1.2.40.0.34.4.17' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:translation[@codeSystem = '1.2.40.0.34.4.17' or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.34.4.17')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.34.4.17'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NA')))])">(ArzneiEntry): Der Wert von nullFlavor MUSS 'Code NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.4.3.5')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.4.3.5'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('CONT')">(ArzneiEntry): Der Wert von classCode MUSS 'CONT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']) &gt;= 1">(ArzneiEntry): Element pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']) &lt;= 1">(ArzneiEntry): Element pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('CONT')">(ArzneiEntry): Der Wert von classCode MUSS 'CONT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(ArzneiEntry): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:capacityQuantity[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element pharm:capacityQuantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:capacityQuantity[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element pharm:capacityQuantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']/pharm:capacityQuantity[not(@nullFlavor)]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']/pharm:capacityQuantity[not(@nullFlavor)]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(ArzneiEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(ArzneiEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@value">(ArzneiEntry): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(ArzneiEntry): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('ACTI')">(ArzneiEntry): Der Wert von classCode MUSS 'ACTI' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']) &gt;= 1">(ArzneiEntry): Element pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']) &lt;= 1">(ArzneiEntry): Element pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@classCode) = ('MMAT')">(ArzneiEntry): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="string(@determinerCode) = ('KIND')">(ArzneiEntry): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]) &lt;= 1">(ArzneiEntry): Element pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &gt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(pharm:name[not(@nullFlavor)]) &lt;= 1">(ArzneiEntry): Element pharm:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.6.73') or (@codeSystem='1.2.40.0.34.5.156')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '2.16.840.1.113883.6.73' oder codeSystem '1.2.40.0.34.5.156'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ArzneiEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:originalText">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:translation
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:translation">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:name[not(@nullFlavor)]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:name[not(@nullFlavor)]">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.3
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)]
Item: (MedikationAbgabeEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.2.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR'][not(@nullFlavor)]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.3-2012-07-14T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationAbgabeEntry): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
