<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.4.3.1
Name: Medikation Pharmazeutische Empfehlung Entry eMedikation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000">
   <title>Medikation Pharmazeutische Empfehlung Entry eMedikation</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]"
         id="d20e47899-false-d376259e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]"
         id="d20e47905-false-d376592e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@classCode) = ('OBS')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@moodCode) = ('EVN')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][hl7:supply]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:entryRelationship[@typeCode='REFR'][hl7:supply] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:entryRelationship[@typeCode='REFR'][hl7:organizer] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:entryRelationship[@typeCode='REFR'][hl7:organizer] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1']"
         id="d20e47913-false-d376669e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.4.3.1')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von root MUSS '1.2.40.0.34.11.8.4.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']"
         id="d20e47918-false-d376684e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.3')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.4']"
         id="d20e47926-false-d376699e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.2.4')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@extension">(MedikationPharmazeutischeEmpfehlungEntry): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e47947-false-d376720e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MedikationPharmazeutischeEmpfehlungEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.71 ELGA_MedikationPharmazeutischeEmpfehlungStatus (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:originalText) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.71-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText"
         id="d20e47959-false-d376746e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:statusCode[@code = 'completed']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:statusCode[@code = 'completed']"
         id="d20e47964-false-d376757e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='completed')">(MedikationPharmazeutischeEmpfehlungEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]"
         id="d20e47972-false-d376771e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]"
         id="d20e47997-false-d376788e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@classCode) = ('SBADM')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@moodCode) = ('INT')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']"
         id="d20e48005-false-d376822e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.2.2')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@extension">(MedikationPharmazeutischeEmpfehlungEntry): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]"
         id="d20e48022-false-d376840e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]"
         id="d20e48024-false-d376856e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:substanceAdministration]/hl7:substanceAdministration[hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.2']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']"
         id="d20e48026-false-d376872e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@nullFlavor) = ('NA')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:supply]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:supply]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]"
         id="d20e48044-false-d376894e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@inversionInd) = ('false')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von inversionInd MUSS 'false' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:organizer[hl7:statusCode[@code = 'completed']]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:organizer[hl7:statusCode[@code = 'completed']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:organizer[hl7:statusCode[@code = 'completed']]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:organizer[hl7:statusCode[@code = 'completed']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]"
         id="d20e48053-false-d377026e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@classCode) = ('CLUSTER')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@moodCode) = ('EVN')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']"
         id="d20e48061-false-d377117e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='completed')">(MedikationPharmazeutischeEmpfehlungEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:seperatableInd[not(@nullFlavor)]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:seperatableInd[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:seperatableInd[not(@nullFlavor)]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:seperatableInd[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:seperatableInd[not(@nullFlavor)]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:seperatableInd[not(@nullFlavor)]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]"
         id="d20e48078-false-d377222e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('REFR')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@inversionInd) = ('false')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von inversionInd MUSS 'false' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:organizer[hl7:statusCode[@code = 'completed']]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:organizer[hl7:statusCode[@code = 'completed']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:organizer[hl7:statusCode[@code = 'completed']]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:organizer[hl7:statusCode[@code = 'completed']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]"
         id="d20e48087-false-d377330e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@classCode) = ('CLUSTER')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@moodCode) = ('EVN')">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']"
         id="d20e48095-false-d377405e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='completed')">(MedikationPharmazeutischeEmpfehlungEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]">
      <extends rule="d377491e0-false-d377495e0"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(MedikationPharmazeutischeEmpfehlungEntry): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:seperatableInd[not(@nullFlavor)]) &gt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:seperatableInd[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="count(hl7:seperatableInd[not(@nullFlavor)]) &lt;= 1">(MedikationPharmazeutischeEmpfehlungEntry): Element hl7:seperatableInd[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:seperatableInd[not(@nullFlavor)]
Item: (MedikationPharmazeutischeEmpfehlungEntry)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:seperatableInd[not(@nullFlavor)]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.3.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationPharmazeutischeEmpfehlungEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (AlteredSupplyInformation)
-->
   <rule id="d377491e0-false-d377495e0" abstract="true">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]) &gt;= 1">(AlteredSupplyInformation): Element hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]) &lt;= 1">(AlteredSupplyInformation): Element hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="string(@classCode) = ('SBADM')">(AlteredSupplyInformation): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="string(@moodCode) = ('INT')">(AlteredSupplyInformation): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']) &gt;= 1">(AlteredSupplyInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']) &lt;= 1">(AlteredSupplyInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="$elmcount &gt;= 1">(AlteredSupplyInformation): Auswahl (hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']  oder  hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredSupplyInformation): Auswahl (hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']  oder  hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &lt;= 1">(AlteredSupplyInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']) &lt;= 1">(AlteredSupplyInformation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:effectiveTime[1][hl7:low] | hl7:effectiveTime[1][hl7:width] | hl7:effectiveTime[1][@nullFlavor])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredSupplyInformation): Auswahl (hl7:effectiveTime[1][hl7:low]  oder  hl7:effectiveTime[1][hl7:width]  oder  hl7:effectiveTime[1][@nullFlavor]) enthält zu viele Elemente [max 1x]</assert>
      <let name="elmcount"
           value="count(hl7:effectiveTime[hl7:period and not(hl7:phase)] | hl7:effectiveTime[2] | hl7:effectiveTime[2])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredSupplyInformation): Auswahl (hl7:effectiveTime[hl7:period and not(hl7:phase)]  oder  hl7:effectiveTime[2]  oder  hl7:effectiveTime[2]) enthält zu viele Elemente [max 1x]</assert>
      <let name="elmcount" value="count(hl7:doseQuantity | hl7:doseQuantity)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="$elmcount &lt;= 1">(AlteredSupplyInformation): Auswahl (hl7:doseQuantity  oder  hl7:doseQuantity) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]) &lt;= 1">(AlteredSupplyInformation): Element hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &gt;= 1">(AlteredSupplyInformation): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]) &lt;= 1">(AlteredSupplyInformation): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlteredSupplyInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.3.6')">(AlteredSupplyInformation): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.21']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.21']">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Sbadmtemplateidoptions)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90012
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']
Item: (Sbadmtemplateidoptions)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.9']">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Einnahmedauer)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30006
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:low
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:low">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:high
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:low]/hl7:high">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]/hl7:width
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][hl7:width]/hl7:width">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][@nullFlavor]
Item: (Einnahmedauer)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[1][@nullFlavor]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]
Item: (Dosierung1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]/hl7:period
Item: (Dosierung1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and not(hl7:phase)]/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[2]
Item: (Dosierung2)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung3)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:period and hl7:phase]/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[not(@operator)]/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:phase
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30009-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Dosierung3): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30009
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:period
Item: (Dosierung3)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[hl7:comp]/hl7:comp[@operator='I']/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:effectiveTime[2]
Item: (Dosierung4)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung1dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high
Item: (Dosierung1dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity
Item: (Dosierung2dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]
Item: (Dosierung3dq)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30041
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[not(hl7:low|hl7:high)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high
Item: (Dosierung3dq)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:doseQuantity
Item: (Dosierung4dq)
-->

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:routeCode[@codeSystem = '1.2.40.0.10.1.4.3.4.3.4' or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlteredSupplyInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.10.1.4.3.4.3.4')">(AlteredSupplyInformation): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.10.1.4.3.4.3.4'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(AlteredSupplyInformation): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(AlteredSupplyInformation): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(AlteredSupplyInformation): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(AlteredSupplyInformation): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.9.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (AlteredSupplyInformation)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.9.1.3.6-2013-12-21T000000.html"
              test="string(@nullFlavor) = ('NA')">(AlteredSupplyInformation): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30038
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[@typeCode='COMP']
Item: (Dosierung1er)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]
Item: (Dosierung2er)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:sequenceNumber[not(@nullFlavor)]
Item: (Dosierung2er)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:sequenceNumber[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(Splitdose1): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(Splitdose1): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(Splitdose1): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(Splitdose1): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (Splitdose1)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30046-2015-09-05T000000.html"
              test="string(@nullFlavor) = ('NA')">(Splitdose1): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30042
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship
Item: (Dosierung3er)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30044
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]
Item: (Dosierung4er)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:sequenceNumber[not(@nullFlavor)]
Item: (Dosierung4er)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:sequenceNumber[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:event[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='EIVL_TS'][not(@nullFlavor)]/hl7:offset[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase/hl7:value
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:phase/hl7:value">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:period
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='A'][not(@nullFlavor)]/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Splitdose2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase/hl7:value
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:phase/hl7:value">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:period
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:effectiveTime[@xsi:type='SXPR_TS'][not(@nullFlavor)]/hl7:comp[@xsi:type='PIVL_TS'][@operator='I']/hl7:period">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:doseQuantity[not(@nullFlavor)]">
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
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(Splitdose2): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(Splitdose2): Element hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(Splitdose2): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(Splitdose2): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (Splitdose2)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]/hl7:entryRelationship[@typeCode='REFR'][hl7:organizer]/hl7:organizer[hl7:statusCode[@code = 'completed']]/hl7:component[hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]/hl7:entryRelationship[hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'INT'][hl7:consumable]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct]/hl7:manufacturedProduct[not(@nullFlavor)][hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30047-2015-09-05T000000.html"
              test="string(@nullFlavor) = ('NA')">(Splitdose2): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
