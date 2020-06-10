<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.10.1.4.3.4.1.3.2
Name: Medikation Abgabe Entry eMedikation-deprecated
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000">
   <title>Medikation Abgabe Entry eMedikation-deprecated</title>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]"
         id="d20e1515-false-d17950e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@classCode) = ('SPLY')">(MedikationAbgabeEntryemed-deprecated): Der Wert von classCode MUSS 'SPLY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@moodCode) = ('EVN')">(MedikationAbgabeEntryemed-deprecated): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:quantity[not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:quantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:quantity[not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:quantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:author[not(@nullFlavor)] | hl7:author[@nullFlavor])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="$elmcount &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Auswahl (hl7:author[not(@nullFlavor)]  oder  hl7:author[@nullFlavor]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:entryRelationship[@typeCode='REFR'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:entryRelationship[@typeCode='COMP'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2']"
         id="d20e1523-false-d18114e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.1.3.2')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.1.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34']"
         id="d20e1528-false-d18129e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.34')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.34' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3']"
         id="d20e1534-false-d18144e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.3')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']"
         id="d20e1539-false-d18159e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.4')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.3']"
         id="d20e1546-false-d18174e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.2.3')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.2.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="@extension">(MedikationAbgabeEntryemed-deprecated): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e1567-false-d18195e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MedikationAbgabeEntryemed-deprecated): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.30 ELGA_MedikationTherapieArt (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:originalText) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText"
         id="d20e1574-false-d18221e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:text[not(@nullFlavor)]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:text[not(@nullFlavor)]"
         id="d20e1580-false-d18231e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e1582-false-d18250e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="@value">(MedikationAbgabeEntryemed-deprecated): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:quantity[not(@nullFlavor)]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:quantity[not(@nullFlavor)]"
         id="d20e1594-false-d18264e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MedikationAbgabeEntryemed-deprecated): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(MedikationAbgabeEntryemed-deprecated): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (ArzneiEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.4']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:originalText">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:translation[@codeSystem = '1.2.40.0.34.4.17' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:code[@codeSystem = '1.2.40.0.34.4.16' or @nullFlavor]/hl7:translation[@codeSystem = '1.2.40.0.34.4.17' or @nullFlavor]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/hl7:name">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:formCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.5' or @nullFlavor]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.4.3.5')">(ArzneiEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.4.3.5'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']/pharm:capacityQuantity[not(@nullFlavor)]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:asContent[@classCode = 'CONT'][pharm:containerPackagedMedicine[@classCode = 'CONT'][@determinerCode = 'INSTANCE']]/pharm:containerPackagedMedicine[not(@nullFlavor)][@classCode = 'CONT'][@determinerCode = 'INSTANCE']/pharm:capacityQuantity[not(@nullFlavor)]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]">
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
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:originalText
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:originalText">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:translation
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:code[@codeSystem = '2.16.840.1.113883.6.73' or @codeSystem = '1.2.40.0.34.5.156' or @nullFlavor]/hl7:translation">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.4
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:name[not(@nullFlavor)]
Item: (ArzneiEntry)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:product[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[hl7:templateId[@root = '1.2.40.0.34.11.2.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.1']]/pharm:ingredient[@classCode = 'ACTI'][pharm:ingredient[@classCode = 'MMAT'][@determinerCode = 'KIND']]/pharm:ingredient[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND']/pharm:name[not(@nullFlavor)]">
      <extends rule="EN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.4-2014-02-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ArzneiEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]"
         id="d20e1607-false-d18786e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@typeCode) = ('PRF')">(MedikationAbgabeEntryemed-deprecated): Der Wert von typeCode MUSS 'PRF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:time) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:time) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:time
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:time"
         id="d20e1655-false-d18821e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="not(*)">(MedikationAbgabeEntryemed-deprecated): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e1661-false-d18841e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:id) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d18878e22-false-d18886e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d18878e37-false-d18896e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d18878e53-false-d18906e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d18878e68-false-d18919e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d18916e53-false-d18949e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d18878e78-false-d18962e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(AssignedEntityElements): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d18959e38-false-d19003e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d18959e40-false-d19013e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d18959e43-false-d19023e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d18959e45-false-d19033e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]
Item: (AuthorElements)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]"
         id="d19034e219-false-d19044e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(AuthorElements): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(AuthorElements): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:functionCode) &lt;= 1">(AuthorElements): Element hl7:functionCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:time) &gt;= 1">(AuthorElements): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:time) &lt;= 1">(AuthorElements): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]) &gt;= 1">(AuthorElements): Element hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]) &lt;= 1">(AuthorElements): Element hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:functionCode
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:functionCode"
         id="d19034e228-false-d19087e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:time
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:time"
         id="d19034e248-false-d19097e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(*)">(AuthorElements): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]"
         id="d19034e292-false-d19115e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(AuthorElements): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:id) &gt;= 1">(AuthorElements): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(AuthorElements): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="$elmcount &gt;= 1">(AuthorElements): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="$elmcount &lt;= 1">(AuthorElements): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(AuthorElements): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedAuthoringDevice) &lt;= 1">(AuthorElements): Element hl7:assignedAuthoringDevice kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &gt;= 1">(AuthorElements): Element hl7:representedOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &lt;= 1">(AuthorElements): Element hl7:representedOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id"
         id="d19034e314-false-d19184e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d19034e351-false-d19197e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(AuthorElements): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom"
         id="d19034e381-false-d19217e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson"
         id="d19034e395-false-d19230e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(AuthorElements): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AuthorElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AuthorElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AuthorElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d19227e53-false-d19260e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d19034e409-false-d19270e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@classCode) = ('DEV') or not(@classCode)">(AuthorElements): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AuthorElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:manufacturerModelName) &lt;= 1">(AuthorElements): Element hl7:manufacturerModelName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:softwareName) &lt;= 1">(AuthorElements): Element hl7:softwareName kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d19034e415-false-d19298e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d19034e426-false-d19308e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d19034e439-false-d19321e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(AuthorElements): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AuthorElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AuthorElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AuthorElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:addr) &lt;= 1">(AuthorElements): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id"
         id="d19318e38-false-d19362e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d19318e40-false-d19372e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d19318e43-false-d19382e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d19318e45-false-d19392e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]"
         id="d19034e446-false-d19400e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:time[@nullFlavor = 'NA']) &gt;= 1">(AuthorElements): Element hl7:time[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:time[@nullFlavor = 'NA']) &lt;= 1">(AuthorElements): Element hl7:time[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]) &gt;= 1">(AuthorElements): Element hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]) &lt;= 1">(AuthorElements): Element hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']"
         id="d19034e466-false-d19428e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]"
         id="d19034e471-false-d19439e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:id[@nullFlavor = 'NA']) &gt;= 1">(AuthorElements): Element hl7:id[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="count(hl7:id[@nullFlavor = 'NA']) &lt;= 1">(AuthorElements): Element hl7:id[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']"
         id="d19034e475-false-d19459e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']"
         id="d20e1718-false-d19468e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationAbgabeEntryemed-deprecated): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]"
         id="d20e1785-false-d19485e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@classCode) = ('SBADM')">(MedikationAbgabeEntryemed-deprecated): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@moodCode) = ('INT')">(MedikationAbgabeEntryemed-deprecated): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']"
         id="d20e1793-false-d19519e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAbgabeEntryemed-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.2.2')">(MedikationAbgabeEntryemed-deprecated): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="@extension">(MedikationAbgabeEntryemed-deprecated): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]"
         id="d20e1810-false-d19537e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]"
         id="d20e1812-false-d19553e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(MedikationAbgabeEntryemed-deprecated): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (MedikationAbgabeEntryemed-deprecated)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='REFR']/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']"
         id="d20e1814-false-d19569e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@nullFlavor) = ('NA')">(MedikationAbgabeEntryemed-deprecated): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]"
         id="d19574e55-false-d19583e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@classCode) = ('ACT')">(PatientInstructions): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@moodCode) = ('INT')">(PatientInstructions): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49']) &gt;= 1">(PatientInstructions): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49']) &lt;= 1">(PatientInstructions): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']) &gt;= 1">(PatientInstructions): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']) &lt;= 1">(PatientInstructions): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]) &gt;= 1">(PatientInstructions): Element hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]) &lt;= 1">(PatientInstructions): Element hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PatientInstructions): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PatientInstructions): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(PatientInstructions): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(PatientInstructions): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]) &gt;= 1">(PatientInstructions): Element hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]) &lt;= 3">(PatientInstructions): Element hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]] kommt zu häufig vor [max 3x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49']
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49']"
         id="d19574e66-false-d19653e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.49')">(PatientInstructions): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.49' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']"
         id="d19574e71-false-d19668e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.3')">(PatientInstructions): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:code[(@code = 'PINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]"
         id="d19574e77-false-d19683e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@nullFlavor or (@code='PINSTRUCT' and @codeSystem='1.3.6.1.4.1.19376.1.5.3.2')">(PatientInstructions): Der Elementinhalt MUSS einer von 'code 'PINSTRUCT' codeSystem '1.3.6.1.4.1.19376.1.5.3.2'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:text[not(@nullFlavor)]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:text[not(@nullFlavor)]"
         id="d19574e82-false-d19699e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(PatientInstructions): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(PatientInstructions): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d19574e87-false-d19718e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@value">(PatientInstructions): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:statusCode[@code = 'completed']
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:statusCode[@code = 'completed']"
         id="d19574e97-false-d19733e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@nullFlavor or (@code='completed')">(PatientInstructions): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]"
         id="d19574e102-false-d19750e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@typeCode) = ('SUBJ')">(PatientInstructions): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@inversionInd) = ('true')">(PatientInstructions): Der Wert von inversionInd MUSS 'true' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]) &gt;= 1">(PatientInstructions): Element hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]) &lt;= 1">(PatientInstructions): Element hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]"
         id="d19574e111-false-d19776e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@classCode) = ('ACT')">(PatientInstructions): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@moodCode) = ('INT')">(PatientInstructions): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']) &gt;= 1">(PatientInstructions): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']) &lt;= 1">(PatientInstructions): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(PatientInstructions): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(PatientInstructions): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PatientInstructions): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PatientInstructions): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(PatientInstructions): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(PatientInstructions): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']"
         id="d19574e117-false-d19830e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.0.3.1')">(PatientInstructions): Der Wert von root MUSS '1.2.40.0.34.11.8.0.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d19574e122-false-d19847e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.161-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PatientInstructions): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.161 ELGA_ActCode_PatInfo (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:text[not(@nullFlavor)]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:text[not(@nullFlavor)]"
         id="d19574e127-false-d19867e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(PatientInstructions): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(PatientInstructions): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d19574e132-false-d19886e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@value">(PatientInstructions): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30033
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:statusCode[@code = 'completed']
Item: (PatientInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.49'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.1']]/hl7:statusCode[@code = 'completed']"
         id="d19574e143-false-d19901e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30033-2014-09-10T000000.html"
              test="@nullFlavor or (@code='completed')">(PatientInstructions): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]"
         id="d19902e56-false-d19920e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@classCode) = ('ACT')">(PharmacistInstructions): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@moodCode) = ('INT')">(PharmacistInstructions): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43']) &gt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43']) &lt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']) &gt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']) &lt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]) &gt;= 1">(PharmacistInstructions): Element hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]) &lt;= 1">(PharmacistInstructions): Element hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PharmacistInstructions): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PharmacistInstructions): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(PharmacistInstructions): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(PharmacistInstructions): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]) &gt;= 1">(PharmacistInstructions): Element hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]) &lt;= 2">(PharmacistInstructions): Element hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]] kommt zu häufig vor [max 2x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43']
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43']"
         id="d19902e62-false-d19990e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.43')">(PharmacistInstructions): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.43' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']"
         id="d19902e67-false-d20005e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.3.1')">(PharmacistInstructions): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:code[(@code = 'FINSTRUCT' and @codeSystem = '1.3.6.1.4.1.19376.1.5.3.2')]"
         id="d19902e75-false-d20020e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@nullFlavor or (@code='FINSTRUCT' and @codeSystem='1.3.6.1.4.1.19376.1.5.3.2')">(PharmacistInstructions): Der Elementinhalt MUSS einer von 'code 'FINSTRUCT' codeSystem '1.3.6.1.4.1.19376.1.5.3.2'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:text[not(@nullFlavor)]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:text[not(@nullFlavor)]"
         id="d19902e82-false-d20036e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(PharmacistInstructions): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(PharmacistInstructions): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d19902e87-false-d20055e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@value">(PharmacistInstructions): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:statusCode[@code = 'completed']
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:statusCode[@code = 'completed']"
         id="d19902e99-false-d20070e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@nullFlavor or (@code='completed')">(PharmacistInstructions): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]"
         id="d19902e104-false-d20087e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@typeCode) = ('SUBJ')">(PharmacistInstructions): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@inversionInd) = ('true')">(PharmacistInstructions): Der Wert von inversionInd MUSS 'true' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]) &gt;= 1">(PharmacistInstructions): Element hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]) &lt;= 1">(PharmacistInstructions): Element hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]"
         id="d19902e113-false-d20113e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@classCode) = ('ACT')">(PharmacistInstructions): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@moodCode) = ('INT')">(PharmacistInstructions): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']) &gt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']) &lt;= 1">(PharmacistInstructions): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(PharmacistInstructions): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(PharmacistInstructions): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PharmacistInstructions): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PharmacistInstructions): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(PharmacistInstructions): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(PharmacistInstructions): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']"
         id="d19902e119-false-d20167e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.0.3.2')">(PharmacistInstructions): Der Wert von root MUSS '1.2.40.0.34.11.8.0.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d19902e126-false-d20184e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.160-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PharmacistInstructions): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.160 ELGA_ActCode_AbgInfo (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:text[not(@nullFlavor)]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:text[not(@nullFlavor)]"
         id="d19902e134-false-d20204e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(PharmacistInstructions): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(PharmacistInstructions): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d19902e139-false-d20223e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@value">(PharmacistInstructions): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30034
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:statusCode[@code = 'completed']
Item: (PharmacistInstructions)
-->

   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.43'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.3.1']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.8.0.3.2']]/hl7:statusCode[@code = 'completed']"
         id="d19902e151-false-d20238e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmacistInstructions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30034-2014-09-10T000000.html"
              test="@nullFlavor or (@code='completed')">(PharmacistInstructions): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.3.2
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']
Item: (MedikationAbgabeEntryemed-deprecated)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']">
      <extends rule="d20262e0-false-d20266e0"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.3.2-2013-12-20T000000.html"
              test="string(@typeCode) = ('COMP')">(MedikationAbgabeEntryemed-deprecated): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']
Item: (AlteredDosageInformation)
-->
   <rule id="d20262e0-false-d20266e0" abstract="true">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]) &gt;= 1">(AlteredDosageInformation): Element hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]) &lt;= 1">(AlteredDosageInformation): Element hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="string(@classCode) = ('SBADM')">(AlteredDosageInformation): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="string(@moodCode) = ('INT')">(AlteredDosageInformation): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']) &gt;= 1">(AlteredDosageInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']) &lt;= 1">(AlteredDosageInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="$elmcount &gt;= 1">(AlteredDosageInformation): Auswahl (hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']  oder  hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredDosageInformation): Auswahl (hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']  oder  hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &lt;= 1">(AlteredDosageInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) &lt;= 1">(AlteredDosageInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:effectiveTime[1][hl7:low] | hl7:effectiveTime[1][hl7:width] | hl7:effectiveTime[1][@nullFlavor])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredDosageInformation): Auswahl (hl7:effectiveTime[1][hl7:low]  oder  hl7:effectiveTime[1][hl7:width]  oder  hl7:effectiveTime[1][@nullFlavor]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]) &lt;= 1">(AlteredDosageInformation): Element hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(AlteredDosageInformation): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(AlteredDosageInformation): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlteredDosageInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.6')">(AlteredDosageInformation): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.21']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.21']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sbadmtemplateidoptions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.21')">(Sbadmtemplateidoptions): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.21' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Sbadmtemplateidoptions)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sbadmtemplateidoptions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.1')">(Sbadmtemplateidoptions): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sbadmtemplateidoptions): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90012-2015-02-17T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.9')">(Sbadmtemplateidoptions): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.9' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Einnahmedauer)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:low) &gt;= 1">(Einnahmedauer): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:low) &lt;= 1">(Einnahmedauer): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:high) &gt;= 1">(Einnahmedauer): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:high) &lt;= 1">(Einnahmedauer): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:low
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:low">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="not(*)">(Einnahmedauer): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:high
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:high">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="not(*)">(Einnahmedauer): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:width) &gt;= 1">(Einnahmedauer): Element hl7:width ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="count(hl7:width) &lt;= 1">(Einnahmedauer): Element hl7:width kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]/hl7:width
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]/hl7:width">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Einnahmedauer): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Einnahmedauer): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.69-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Einnahmedauer): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.69' ELGA_MedikationFrequenz (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][@nullFlavor]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][@nullFlavor]">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Einnahmedauer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30006-2013-12-20T000000.html"
              test="string(@nullFlavor) = ('NA')">(Einnahmedauer): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30007
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]
Item: (Dosierung1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="string(@operator) = ('A')">(Dosierung1): Der Wert von operator MUSS 'A' sein. Gefunden: "<value-of select="@operator"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="string(@institutionSpecified) = ('true')">(Dosierung1): Der Wert von institutionSpecified MUSS 'true' sein. Gefunden: "<value-of select="@institutionSpecified"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="count(hl7:period) &gt;= 1">(Dosierung1): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="count(hl7:period) &lt;= 1">(Dosierung1): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30007
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]/hl7:period
Item: (Dosierung1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung1): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="string(@value) = ('1')">(Dosierung1): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="@unit">(Dosierung1): Attribut @unit MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30007-2014-09-02T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.69-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung1): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.69' ELGA_MedikationFrequenz (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30008
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[2]
Item: (Dosierung2)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung3)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@operator) = ('A')">(Dosierung3): Der Wert von operator MUSS 'A' sein. Gefunden: "<value-of select="@operator"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &gt;= 1">(Dosierung3): Element hl7:phase ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &lt;= 1">(Dosierung3): Element hl7:phase kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &gt;= 1">(Dosierung3): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &lt;= 1">(Dosierung3): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung3): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@value) = ('1')">(Dosierung3): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@unit) = ('wk')">(Dosierung3): Der Wert von unit MUSS 'wk' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]">
      <extends rule="SXPR_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SXPR_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SXPR_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@operator) = ('A')">(Dosierung3): Der Wert von operator MUSS 'A' sein. Gefunden: "<value-of select="@operator"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:comp[not(@operator)]) &gt;= 1">(Dosierung3): Element hl7:comp[not(@operator)] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:comp[not(@operator)]) &lt;= 1">(Dosierung3): Element hl7:comp[not(@operator)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &gt;= 1">(Dosierung3): Element hl7:phase ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &lt;= 1">(Dosierung3): Element hl7:phase kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &gt;= 1">(Dosierung3): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &lt;= 1">(Dosierung3): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung3): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@value) = ('1')">(Dosierung3): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@unit) = ('wk')">(Dosierung3): Der Wert von unit MUSS 'wk' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@operator) = ('I')">(Dosierung3): Der Wert von operator MUSS 'I' sein. Gefunden: "<value-of select="@operator"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &gt;= 1">(Dosierung3): Element hl7:phase ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:phase) &lt;= 1">(Dosierung3): Element hl7:phase kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &gt;= 1">(Dosierung3): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="count(hl7:period) &lt;= 1">(Dosierung3): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung3): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@value) = ('1')">(Dosierung3): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="string(@unit) = ('wk')">(Dosierung3): Der Wert von unit MUSS 'wk' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30010
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[2]
Item: (Dosierung4)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung1dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="@value">(Dosierung1dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung1dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung1dq): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="@value">(Dosierung1dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung1dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung1dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung1dq): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung1dq): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="@value">(Dosierung1dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30037-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung1dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30039
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity
Item: (Dosierung2dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung3dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="@value">(Dosierung3dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung3dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung3dq): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="@value">(Dosierung3dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung3dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3dq): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Dosierung3dq): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Dosierung3dq): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="@value">(Dosierung3dq): Attribut @value MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30041-2015-09-05T000000.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.32-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code, doc('include/voc-1.2.40.0.34.10.67-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Dosierung3dq): Der Wert von unit MUSS gewählt werden aus Value Set '1.2.40.0.34.10.32' ELGA_MedikationMengenart_VS (DYNAMIC) oder Value Set '1.2.40.0.34.10.67' ELGA_MedikationMengenartAlternativ (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30043
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity
Item: (Dosierung4dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlteredDosageInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.4.3.4')">(AlteredDosageInformation): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.4.3.4'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(AlteredDosageInformation): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(AlteredDosageInformation): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(AlteredDosageInformation): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(AlteredDosageInformation): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30035
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (AlteredDosageInformation)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30035-2013-12-21T000000.html"
              test="string(@nullFlavor) = ('NA')">(AlteredDosageInformation): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30038
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[@typeCode='COMP']
Item: (Dosierung1er)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30040
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]
Item: (Dosierung2er)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Dosierung2er): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="count(hl7:sequenceNumber[not(@nullFlavor)]) &gt;= 1">(Dosierung2er): Element hl7:sequenceNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="count(hl7:sequenceNumber[not(@nullFlavor)]) &lt;= 1">(Dosierung2er): Element hl7:sequenceNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="count(hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]) &gt;= 1">(Dosierung2er): Element hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="count(hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]) &lt;= 1">(Dosierung2er): Element hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30040
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:sequenceNumber[not(@nullFlavor)]
Item: (Dosierung2er)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:sequenceNumber[not(@nullFlavor)]">
      <extends rule="INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung2er): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30040-2014-09-01T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Dosierung2er): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@classCode) = ('SBADM')">(Splitdose1): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@moodCode) = ('INT')">(Splitdose1): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]) &gt;= 1">(Splitdose1): Element hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]) &lt;= 1">(Splitdose1): Element hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:doseQuantity[not(@nullFlavor)]) &gt;= 1">(Splitdose1): Element hl7:doseQuantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:doseQuantity[not(@nullFlavor)]) &lt;= 1">(Splitdose1): Element hl7:doseQuantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(Splitdose1): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(Splitdose1): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]">
      <extends rule="EIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose1): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:event[not(@nullFlavor)]) &gt;= 1">(Splitdose1): Element hl7:event[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:event[not(@nullFlavor)]) &lt;= 1">(Splitdose1): Element hl7:event[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:offset[not(@nullFlavor)]) &gt;= 1">(Splitdose1): Element hl7:offset[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:offset[not(@nullFlavor)]) &lt;= 1">(Splitdose1): Element hl7:offset[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="@code">(Splitdose1): Attribut @code MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(@code) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.59-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Splitdose1): Der Wert von code MUSS gewählt werden aus Value Set '1.2.40.0.34.10.59' ELGA_Einnahmezeitpunkte (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose1): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@value) = ('0')">(Splitdose1): Der Wert von value MUSS '0' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@unit) = ('s')">(Splitdose1): Der Wert von unit MUSS 's' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose1): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose1): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(Splitdose1): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(Splitdose1): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(Splitdose1): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(Splitdose1): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (Splitdose1)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@nullFlavor) = ('NA')">(Splitdose1): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30042
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship
Item: (Dosierung3er)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30044
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]
Item: (Dosierung4er)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Dosierung4er): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="count(hl7:sequenceNumber[not(@nullFlavor)]) &gt;= 1">(Dosierung4er): Element hl7:sequenceNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="count(hl7:sequenceNumber[not(@nullFlavor)]) &lt;= 1">(Dosierung4er): Element hl7:sequenceNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="count(hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]) &gt;= 1">(Dosierung4er): Element hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="count(hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]) &lt;= 1">(Dosierung4er): Element hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30044
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:sequenceNumber[not(@nullFlavor)]
Item: (Dosierung4er)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:sequenceNumber[not(@nullFlavor)]">
      <extends rule="INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung4er): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30044-2014-09-01T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Dosierung4er): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@classCode) = ('SBADM')">(Splitdose2): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@moodCode) = ('INT')">(Splitdose2): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:doseQuantity[not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:doseQuantity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:doseQuantity[not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:doseQuantity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(Splitdose2): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(Splitdose2): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]">
      <extends rule="SXPR_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SXPR_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SXPR_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]">
      <extends rule="EIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:event[not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:event[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:event[not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:event[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:offset[not(@nullFlavor)]) &gt;= 1">(Splitdose2): Element hl7:offset[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:offset[not(@nullFlavor)]) &lt;= 1">(Splitdose2): Element hl7:offset[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="@code">(Splitdose2): Attribut @code MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(@code) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.59-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(Splitdose2): Der Wert von code MUSS gewählt werden aus Value Set '1.2.40.0.34.10.59' ELGA_Einnahmezeitpunkte (DYNAMIC).</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@value) = ('0')">(Splitdose2): Der Wert von value MUSS '0' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@unit) = ('s')">(Splitdose2): Der Wert von unit MUSS 's' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@operator) = ('A')">(Splitdose2): Der Wert von operator MUSS 'A' sein. Gefunden: "<value-of select="@operator"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:phase) &gt;= 1">(Splitdose2): Element hl7:phase ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:phase) &lt;= 1">(Splitdose2): Element hl7:phase kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:period) &gt;= 1">(Splitdose2): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:period) &lt;= 1">(Splitdose2): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase/hl7:value
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase/hl7:value">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(*)">(Splitdose2): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:period
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Splitdose2): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@value) = ('1')">(Splitdose2): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@unit) = ('wk')">(Splitdose2): Der Wert von unit MUSS 'wk' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PIVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:phase) &gt;= 1">(Splitdose2): Element hl7:phase ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:phase) &lt;= 1">(Splitdose2): Element hl7:phase kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:period) &gt;= 1">(Splitdose2): Element hl7:period ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:period) &lt;= 1">(Splitdose2): Element hl7:period kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase/hl7:value
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase/hl7:value">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(*)">(Splitdose2): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:period
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:period">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Splitdose2): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@value) = ('1')">(Splitdose2): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@unit) = ('wk')">(Splitdose2): Der Wert von unit MUSS 'wk' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Splitdose2): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(Splitdose2): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(Splitdose2): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(Splitdose2): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(Splitdose2): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (Splitdose2)
-->
   <rule context="*[hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]/hl7:supply[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]/hl7:entryRelationship[@typeCode='COMP']/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@nullFlavor) = ('NA')">(Splitdose2): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
