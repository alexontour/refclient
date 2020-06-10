<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5
Name: Befund Bildgebende Diagnostik
Description: Template Spezieller Implementierungsleitfaden ELGA Befund Bildgebende Diagnostik
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5-2013-09-09T000000">
   <title>Befund Bildgebende Diagnostik</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]"
         id="d20e40668-false-d337017e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.2.40.0.34.11.5.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.5.0.3'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="$elmcount &lt;= 1">(BefundBildgebendeDiagnostik): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.5.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.5.0.3']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:participant[@typeCode='REF']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:participant[@typeCode='REF'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5']"
         id="d20e40679-false-d337083e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.2.40.0.34.11.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.0.1']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.0.1']"
         id="d20e40690-false-d337098e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.0.1')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.2.40.0.34.11.5.0.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.0.3']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.0.3']"
         id="d20e40698-false-d337113e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.0.3')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.2.40.0.34.11.5.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e40707-false-d337130e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BefundBildgebendeDiagnostik): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.39 ELGA_Dokumentenklassen (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:title[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:title[not(@nullFlavor)]"
         id="d20e40717-false-d337150e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]"
         id="d20e40723-false-d337158e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@typeCode) = ('CALLBCK')">(BefundBildgebendeDiagnostik): Der Wert von typeCode MUSS 'CALLBCK' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e40729-false-d337188e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('PROV')">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e40735-false-d337230e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e40739-false-d337240e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e40744-false-d337253e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d337250e53-false-d337283e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d20e40751-false-d337296e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d337293e38-false-d337337e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d337293e40-false-d337347e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d337293e43-false-d337357e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d337293e45-false-d337367e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']"
         id="d20e40758-false-d337375e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@typeCode) = ('REF')">(BefundBildgebendeDiagnostik): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e40764-false-d337405e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('PROV')">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d20e40770-false-d337449e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e40774-false-d337459e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d20e40779-false-d337469e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e40783-false-d337482e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d337479e53-false-d337512e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d20e40790-false-d337525e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d337522e38-false-d337566e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d337522e40-false-d337576e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d337522e43-false-d337586e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d337522e45-false-d337596e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]"
         id="d20e40797-false-d337607e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]"
         id="d20e40823-false-d337625e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.5.38']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[@codeSystem = '1.2.40.0.34.5.38'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.5.38']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[@codeSystem = '1.2.40.0.34.5.38'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:code[@codeSystem = '1.2.40.0.34.5.38']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:code[@codeSystem = '1.2.40.0.34.5.38']"
         id="d20e40827-false-d337655e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.34.5.38')">(BefundBildgebendeDiagnostik): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.34.5.38'' sein.</assert>
      <let name="appc1" value="tokenize(@code, '\.')[1]"/>
      <let name="appc2" value="tokenize(@code, '\.')[2]"/>
      <let name="appc3" value="tokenize(@code, '\.')[3]"/>
      <let name="appc4" value="tokenize(@code, '\.')[4]"/>
      <let name="appc1ok"
           value="concat(exists(document('include/voc-1.2.40.0.34.10.62-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $appc1][@codeSystem = '1.2.40.0.34.5.38.1']]), '')"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or contains($appc1ok,'true')">(BefundBildgebendeDiagnostik): Code Achse 1: APPC Modalitaet muss aus dem Value Set APPCModalitaet 1.2.40.0.34.10.62 stammen.</assert>
      <let name="appc2ok"
           value="concat(exists(document('include/voc-1.2.40.0.34.10.63-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $appc2][@codeSystem = '1.2.40.0.34.5.38.2']]), '')"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or contains($appc2ok,'true')">(BefundBildgebendeDiagnostik): Code Achse 2: APPC Lateralitaet muss aus dem Value Set APPCLateralitaet 1.2.40.0.34.10.63 stammen.</assert>
      <let name="appc3ok"
           value="concat(exists(document('include/voc-1.2.40.0.34.10.64-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $appc3][@codeSystem = '1.2.40.0.34.5.38.3']]), '')"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or contains($appc3ok,'true')">(BefundBildgebendeDiagnostik): Code Achse 3: APPC Prozeduren muss aus dem Value Set APPCProzeduren 1.2.40.0.34.10.64 stammen.</assert>
      <let name="appc4ok"
           value="concat(exists(document('include/voc-1.2.40.0.34.10.65-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $appc4][@codeSystem = '1.2.40.0.34.5.38.4']]), '')"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="@nullFlavor or contains($appc4ok,'true')">(BefundBildgebendeDiagnostik): Code Achse 4: APPC Anatomie muss aus dem Value Set APPCAnatomie 1.2.40.0.34.10.65 stammen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e40891-false-d337671e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:high) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e40893-false-d337696e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="not(*)">(BefundBildgebendeDiagnostik): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high"
         id="d20e40895-false-d337709e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="not(*)">(BefundBildgebendeDiagnostik): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]"
         id="d20e40901-false-d337723e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']"
         id="d20e40918-false-d337741e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2013-09-09T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.7')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
