<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4
Name: Laborbefund
Description: Template Spezieller Implementierungsleitfaden ELGA Laborbefund
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4-2013-07-19T000000">
   <title>Laborbefund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]"
         id="d20e37007-false-d296242e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:legalAuthenticator) &gt;= 1">(Laborbefund): Element hl7:legalAuthenticator ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:legalAuthenticator) &lt;= 1">(Laborbefund): Element hl7:legalAuthenticator kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:participant[@typeCode='REF'][not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:participant[@typeCode='REF'][not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Laborbefund): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:componentOf) = 0">(Laborbefund): Element hl7:componentOf DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4']"
         id="d20e37018-false-d296314e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4')">(Laborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e37027-false-d296329e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="@nullFlavor or (@code='11502-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='LABORATORY REPORT.TOTAL')">(Laborbefund): Der Elementinhalt MUSS einer von 'code '11502-2' codeSystem '2.16.840.1.113883.6.1' displayName='LABORATORY REPORT.TOTAL'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:title[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:title[not(@nullFlavor)]"
         id="d20e37037-false-d296345e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]"
         id="d20e37043-false-d296356e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:informationRecipient[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.4']"
         id="d20e37058-false-d296374e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.4')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]"
         id="d20e37064-false-d296386e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:authenticator[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']"
         id="d20e37076-false-d296404e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.5')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:legalAuthenticator
Item: (Laborbefund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]"
         id="d20e37093-false-d296421e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@typeCode) = ('REF')">(Laborbefund): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:time) &gt;= 1">(Laborbefund): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:time) &lt;= 1">(Laborbefund): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:time
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:time"
         id="d20e37102-false-d296454e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e37107-false-d296469e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@classCode) = ('PROV')">(Laborbefund): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:addr) &gt;= 1">(Laborbefund): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(Laborbefund): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']"
         id="d20e37113-false-d296529e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.6')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]"
         id="d20e37120-false-d296543e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e37125-false-d296553e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e37129-false-d296563e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e37133-false-d296576e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d296573e53-false-d296606e0">
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
         id="d20e37141-false-d296619e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:participant[@typeCode='REF'][not(@nullFlavor)]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d296616e38-false-d296660e0">
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
         id="d296616e40-false-d296670e0">
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
         id="d296616e43-false-d296680e0">
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
         id="d296616e45-false-d296690e0">
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
         id="d20e37149-false-d296703e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d20e37169-false-d296725e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e37173-false-d296759e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Laborbefund): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.22 ELGA_ServiceEventsLabor (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e37180-false-d296779e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e37182-false-d296806e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e37184-false-d296819e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]"
         id="d20e37190-false-d296833e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']"
         id="d20e37207-false-d296851e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2013-07-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.7')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4']]/hl7:componentOf
Item: (Laborbefund)
-->
</pattern>
