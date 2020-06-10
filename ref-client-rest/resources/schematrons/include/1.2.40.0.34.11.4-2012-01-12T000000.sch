<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4
Name: Laborbefund
Description: Template Spezieller Implementierungsleitfaden ELGA Laborbefund
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4-2012-01-12T000000">
   <title>Laborbefund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]"
         id="d20e37432-false-d297555e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]) &gt;= 1">(Laborbefund): Element hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]) &lt;= 1">(Laborbefund): Element hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:participant[@typeCode='REF'][not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:participant[@typeCode='REF'][not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Laborbefund): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:componentOf) = 0">(Laborbefund): Element hl7:componentOf DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4']"
         id="d20e37443-false-d297628e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4')">(Laborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e37452-false-d297643e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="@nullFlavor or (@code='11502-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='LABORATORY REPORT.TOTAL')">(Laborbefund): Der Elementinhalt MUSS einer von 'code '11502-2' codeSystem '2.16.840.1.113883.6.1' displayName='LABORATORY REPORT.TOTAL'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:title[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:title[not(@nullFlavor)]"
         id="d20e37462-false-d297659e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]"
         id="d20e37468-false-d297670e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']"
         id="d20e37483-false-d297688e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.4')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]"
         id="d20e37489-false-d297700e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']"
         id="d20e37501-false-d297718e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.5')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]"
         id="d20e37507-false-d297730e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:legalAuthenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']"
         id="d20e37519-false-d297748e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.5')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]"
         id="d20e37525-false-d297757e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@typeCode) = ('REF')">(Laborbefund): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:time) &gt;= 1">(Laborbefund): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:time) &lt;= 1">(Laborbefund): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:time
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:time"
         id="d20e37531-false-d297790e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e37535-false-d297805e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@classCode) = ('PROV')">(Laborbefund): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:addr) &gt;= 1">(Laborbefund): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(Laborbefund): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']"
         id="d20e37541-false-d297865e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.6')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]"
         id="d20e37548-false-d297879e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e37553-false-d297889e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e37557-false-d297899e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e37561-false-d297912e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d297909e53-false-d297942e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d20e37569-false-d297955e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d297952e38-false-d297996e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d297952e40-false-d298006e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d297952e43-false-d298016e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d297952e45-false-d298026e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d20e37577-false-d298039e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d20e37597-false-d298061e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e37601-false-d298095e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Laborbefund): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.22 ELGA_ServiceEventsLabor (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e37608-false-d298115e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e37610-false-d298142e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e37612-false-d298155e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]"
         id="d20e37618-false-d298169e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']"
         id="d20e37635-false-d298187e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2012-01-12T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.7')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:componentOf
Item: (Laborbefund)
-->
</pattern>
