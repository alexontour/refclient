<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.20.6.2.8
Name: SopInstance (DICOM Service Object Pair)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000">
   <title>SopInstance (DICOM Service Object Pair)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]
Item: (SopInstance)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]"
         id="d20e53428-false-d388303e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="string(@classCode) = ('DGIMG')">(SopInstance): Der Wert von classCode MUSS 'DGIMG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="string(@moodCode) = ('EVN')">(SopInstance): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']) &gt;= 1">(SopInstance): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']) &lt;= 1">(SopInstance): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:id[not(@extension)]) &gt;= 1">(SopInstance): Element hl7:id[not(@extension)] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:id[not(@extension)]) &lt;= 1">(SopInstance): Element hl7:id[not(@extension)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.840.10008.2.6.1']) &gt;= 1">(SopInstance): Element hl7:code[@codeSystem = '1.2.840.10008.2.6.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.840.10008.2.6.1']) &lt;= 1">(SopInstance): Element hl7:code[@codeSystem = '1.2.840.10008.2.6.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:text[hl7:reference]) &lt;= 1">(SopInstance): Element hl7:text[hl7:reference] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(SopInstance): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']"
         id="d20e53449-false-d388358e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SopInstance): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.2.8')">(SopInstance): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.2.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:id[not(@extension)]
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:id[not(@extension)]"
         id="d20e53454-false-d388372e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SopInstance): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="@root">(SopInstance): Attribut @root MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(SopInstance): Attribute @root MUSS vom Datentyp 'uid' sein  - '<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="not(@extension)">(SopInstance): Attribut @extension DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(SopInstance): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:code[@codeSystem = '1.2.840.10008.2.6.1']
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:code[@codeSystem = '1.2.840.10008.2.6.1']"
         id="d20e53473-false-d388394e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SopInstance): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.840.10008.2.6.1' and @codeSystemName='DCMUID')">(SopInstance): Der Elementinhalt MUSS einer von 'codeSystem '1.2.840.10008.2.6.1' codeSystemName='DCMUID'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:text[hl7:reference]
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:text[hl7:reference]"
         id="d20e53483-false-d388410e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SopInstance): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="string(@mediaType) = ('application/dicom')">(SopInstance): Der Wert von mediaType MUSS 'application/dicom' sein. Gefunden: "<value-of select="@mediaType"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="not(@mediaType) or string-length(@mediaType)&gt;0">(SopInstance): Attribute @mediaType MUSS vom Datentyp 'st' sein  - '<value-of select="@mediaType"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(SopInstance): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(SopInstance): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:text[hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (SopInstance)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.8
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:effectiveTime
Item: (SopInstance)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:effectiveTime"
         id="d20e53493-false-d388443e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SopInstance): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.html"
              test="not(*)">(SopInstance): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
