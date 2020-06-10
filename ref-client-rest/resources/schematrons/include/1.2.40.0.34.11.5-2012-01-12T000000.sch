<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5
Name: Befund Bildgebende Diagnostik
Description: Template Spezieller Implementierungsleitfaden ELGA Befund Bildgebende Diagnostik
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5-2012-01-12T000000">
   <title>Befund Bildgebende Diagnostik</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]"
         id="d20e41350-false-d339187e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:participant[@typeCode='REF']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:participant[@typeCode='REF'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5']"
         id="d20e41361-false-d339237e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.2.40.0.34.11.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e41370-false-d339254e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BefundBildgebendeDiagnostik): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.39 ELGA_Dokumentenklassen (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:title[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:title[not(@nullFlavor)]"
         id="d20e41380-false-d339274e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]"
         id="d20e41386-false-d339282e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@typeCode) = ('CALLBCK')">(BefundBildgebendeDiagnostik): Der Wert von typeCode MUSS 'CALLBCK' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e41392-false-d339312e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('PROV')">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e41398-false-d339354e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e41402-false-d339364e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e41407-false-d339377e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d339374e53-false-d339407e0">
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
         id="d20e41414-false-d339420e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d339417e38-false-d339461e0">
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
         id="d339417e40-false-d339471e0">
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
         id="d339417e43-false-d339481e0">
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
         id="d339417e45-false-d339491e0">
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
         id="d20e41421-false-d339499e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@typeCode) = ('REF')">(BefundBildgebendeDiagnostik): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e41427-false-d339536e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.15-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BefundBildgebendeDiagnostik): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.15 ELGA_ParticipationFunctionCode (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e41434-false-d339561e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('PROV')">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d20e41440-false-d339605e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e41444-false-d339615e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d20e41449-false-d339625e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e41453-false-d339638e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d339635e53-false-d339668e0">
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
         id="d20e41460-false-d339681e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(BefundBildgebendeDiagnostik): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(BefundBildgebendeDiagnostik): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[@typeCode='REF']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d339678e38-false-d339722e0">
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
         id="d339678e40-false-d339732e0">
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
         id="d339678e43-false-d339742e0">
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
         id="d339678e45-false-d339752e0">
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
         id="d20e41467-false-d339763e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]"
         id="d20e41487-false-d339781e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.5.38']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[@codeSystem = '1.2.40.0.34.5.38'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:code[@codeSystem = '1.2.40.0.34.5.38']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:code[@codeSystem = '1.2.40.0.34.5.38'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:code[@codeSystem = '1.2.40.0.34.5.38']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:code[@codeSystem = '1.2.40.0.34.5.38']"
         id="d20e41491-false-d339811e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.34.5.38' and @codeSystemName='APPC')">(BefundBildgebendeDiagnostik): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.34.5.38' codeSystemName='APPC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e41498-false-d339827e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:high) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e41500-false-d339852e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="not(*)">(BefundBildgebendeDiagnostik): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high"
         id="d20e41502-false-d339865e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="not(*)">(BefundBildgebendeDiagnostik): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]"
         id="d20e41508-false-d339879e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &gt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &lt;= 1">(BefundBildgebendeDiagnostik): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']
Item: (BefundBildgebendeDiagnostik)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']"
         id="d20e41525-false-d339897e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.7')">(BefundBildgebendeDiagnostik): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
