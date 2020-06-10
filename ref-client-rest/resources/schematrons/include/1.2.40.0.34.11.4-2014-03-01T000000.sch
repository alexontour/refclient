<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4
Name: Laborbefund
Description: Template Spezieller Implementierungsleitfaden ELGA Laborbefund
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4-2014-03-01T000000">
   <title>Laborbefund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]"
         id="d20e35884-false-d284311e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Laborbefund): Element hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(Laborbefund): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(Laborbefund): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(Laborbefund): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(Laborbefund): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(Laborbefund): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(Laborbefund): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(Laborbefund): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(Laborbefund): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(Laborbefund): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(Laborbefund): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(Laborbefund): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(Laborbefund): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']) &gt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']) &lt;= 1">(Laborbefund): Element hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.2.40.0.34.11.1.1.2']) = 0">(Laborbefund): Element hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.2.40.0.34.11.1.1.2'] DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(Laborbefund): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]) &lt;= 1">(Laborbefund): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(Laborbefund): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Laborbefund): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:componentOf) = 0">(Laborbefund): Element hl7:componentOf DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4']"
         id="d20e35895-false-d284690e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4')">(Laborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']"
         id="d20e35904-false-d284705e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.0.1','1.2.40.0.34.11.4.0.2','1.2.40.0.34.11.4.0.3')">(Laborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4.0.1','1.2.40.0.34.11.4.0.2','1.2.40.0.34.11.4.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:id[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:id[not(@nullFlavor)]"
         id="d20e35912-false-d284719e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:code[(@code = '11502-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e35914-false-d284730e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="@nullFlavor or (@code='11502-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='LABORATORY REPORT.TOTAL')">(Laborbefund): Der Elementinhalt MUSS einer von 'code '11502-2' codeSystem '2.16.840.1.113883.6.1' displayName='LABORATORY REPORT.TOTAL'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:title[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e35924-false-d284746e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90008
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDeffectiveTime)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d284747e37-false-d284757e0">
      <extends rule="TS.AT.TZ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90008-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90008-2016-07-21T000000.html"
              test="not(*)">(CDeffectiveTime): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (CDconfidentialityCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]"
         id="d284758e38-false-d284772e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90009-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90009-2013-11-07T000000.html"
              test="@nullFlavor or (@code='N' and @codeSystem='2.16.840.1.113883.5.25' and @displayName='normal')">(CDconfidentialityCode): Der Elementinhalt MUSS einer von 'code 'N' codeSystem '2.16.840.1.113883.5.25' displayName='normal'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90010
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:languageCode[@code = 'de-AT']
Item: (CDlanguageCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:languageCode[@code = 'de-AT']"
         id="d284773e33-false-d284790e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90010-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90010-2013-11-07T000000.html"
              test="@nullFlavor or (@code='de-AT')">(CDlanguageCode): Der Elementinhalt MUSS einer von 'code 'de-AT'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:setId[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:setId[not(@nullFlavor)]"
         id="d284791e60-false-d284807e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d284791e88-false-d284817e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]"
         id="d284818e294-false-d284834e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@typeCode) = ('RCT') or not(@typeCode)">(HeaderRecordTarget): Der Wert von typeCode MUSS 'RCT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(HeaderRecordTarget): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patientRole) &gt;= 1">(HeaderRecordTarget): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patientRole) &lt;= 1">(HeaderRecordTarget): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole"
         id="d284818e317-false-d284863e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@classCode) = ('PAT') or not(@classCode)">(HeaderRecordTarget): Der Wert von classCode MUSS 'PAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string-length(hl7:id[1]/@root)&gt;0">(HeaderRecordTarget):  patientRole id[1] MUSS als lokale Patienten ID vom System vorhanden sein</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="hl7:id[2]/@root = '1.2.40.0.10.1.4.3.1' or hl7:id[2]/@nullFlavor='NI' or hl7:id[2]/@nullFlavor='UNK'">(HeaderRecordTarget):  patientRole id[2] MUSS Sozialversicherungsnummer des Patienten sein (1.2.40.0.10.1.4.3.1) oder @nullFlavor 'NI' oder 'UNK' ist angegeben</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:id) &gt;= 2">(HeaderRecordTarget): Element hl7:id ist required [min 2x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderRecordTarget): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(HeaderRecordTarget): Element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id"
         id="d284818e346-false-d284902e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr"
         id="d284818e410-false-d284912e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)">(HeaderRecordTarget): Granularitätsstufen Adresse beachten: streetAddressLine oder streetName+houseNumber</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:streetAddressLine) &lt;= 1">(HeaderRecordTarget): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:streetName) &lt;= 1">(HeaderRecordTarget): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(HeaderRecordTarget): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:postalCode[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:postalCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:postalCode[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:postalCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:city[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:city[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:state) &lt;= 1">(HeaderRecordTarget): Element hl7:state kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:country[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:country[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:country[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:country[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(HeaderRecordTarget): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetAddressLine
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetName
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:houseNumber
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:state
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:additionalLocator
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom"
         id="d284818e442-false-d285041e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d284818e454-false-d285057e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderRecordTarget): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderRecordTarget): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(HeaderRecordTarget): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthTime) &gt;= 1">(HeaderRecordTarget): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(HeaderRecordTarget): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:raceCode) = 0">(HeaderRecordTarget): Element hl7:raceCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:ethnicGroupCode) = 0">(HeaderRecordTarget): Element hl7:ethnicGroupCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthplace[hl7:place]) &lt;= 1">(HeaderRecordTarget): Element hl7:birthplace[hl7:place] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]"
         id="d284818e460-false-d285150e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d284818e487-false-d285215e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d284818e504-false-d285237e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(*)">(HeaderRecordTarget): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d284818e527-false-d285253e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d284818e537-false-d285278e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:raceCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian"
         id="d284818e577-false-d285316e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderRecordTarget): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:guardianPerson | hl7:guardianOrganization)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="$elmcount &gt;= 1">(HeaderRecordTarget): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="$elmcount &lt;= 1">(HeaderRecordTarget): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:guardianPerson) &lt;= 1">(HeaderRecordTarget): Element hl7:guardianPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:guardianOrganization) &lt;= 1">(HeaderRecordTarget): Element hl7:guardianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr"
         id="d284818e582-false-d285358e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom"
         id="d284818e594-false-d285368e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson"
         id="d284818e610-false-d285378e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]"
         id="d284818e617-false-d285394e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization"
         id="d284818e626-false-d285404e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]"
         id="d284818e633-false-d285420e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]"
         id="d284818e642-false-d285430e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]"
         id="d284818e649-false-d285446e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
         id="d284818e651-false-d285462e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication"
         id="d285463e47-false-d285473e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:preferenceInd) &lt;= 1">(LanguageCommunication): Element hl7:preferenceInd kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d285463e55-false-d285517e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.173 ELGA_HumanLanguage (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d285463e65-false-d285540e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.175 ELGA_LanguageAbilityMode (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d285463e83-false-d285563e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.174 ELGA_ProficiencyLevelCode (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd"
         id="d285463e104-false-d285583e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]"
         id="d285584e217-false-d285597e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(HeaderAuthor): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(HeaderAuthor): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:functionCode) &lt;= 1">(HeaderAuthor): Element hl7:functionCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:time) &gt;= 1">(HeaderAuthor): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderAuthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthor[hl7:representedOrganization]) &gt;= 1">(HeaderAuthor): Element hl7:assignedAuthor[hl7:representedOrganization] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthor[hl7:representedOrganization]) &lt;= 1">(HeaderAuthor): Element hl7:assignedAuthor[hl7:representedOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode"
         id="d285584e228-false-d285638e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time"
         id="d285584e248-false-d285648e0">
      <extends rule="TS.AT.TZ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(*)">(HeaderAuthor): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]"
         id="d285584e292-false-d285664e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderAuthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(HeaderAuthor): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="$elmcount &gt;= 1">(HeaderAuthor): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="$elmcount &lt;= 1">(HeaderAuthor): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(HeaderAuthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthoringDevice) &lt;= 1">(HeaderAuthor): Element hl7:assignedAuthoringDevice kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:representedOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:representedOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id"
         id="d285584e314-false-d285731e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d285584e404-false-d285744e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderAuthor): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom"
         id="d285584e434-false-d285764e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson"
         id="d285584e448-false-d285777e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderAuthor): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d285774e53-false-d285807e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d285584e462-false-d285817e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('DEV') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderAuthor): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:manufacturerModelName) &gt;= 1">(HeaderAuthor): Element hl7:manufacturerModelName ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:manufacturerModelName) &lt;= 1">(HeaderAuthor): Element hl7:manufacturerModelName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:softwareName) &gt;= 1">(HeaderAuthor): Element hl7:softwareName ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:softwareName) &lt;= 1">(HeaderAuthor): Element hl7:softwareName kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d285584e468-false-d285849e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d285584e479-false-d285859e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d285584e492-false-d285869e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderAuthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d285584e515-false-d285901e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d285584e567-false-d285911e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d285584e569-false-d285921e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d285584e572-false-d285931e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]"
         id="d285932e61-false-d285949e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderDataEnterer): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:assignedEntity[hl7:assignedPerson]) &gt;= 1">(HeaderDataEnterer): Element hl7:assignedEntity[hl7:assignedPerson] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:assignedEntity[hl7:assignedPerson]) &lt;= 1">(HeaderDataEnterer): Element hl7:assignedEntity[hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time"
         id="d285932e71-false-d285978e0">
      <extends rule="TS.AT.TZ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderDataEnterer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(*)">(HeaderDataEnterer): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]"
         id="d285932e83-false-d285998e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderDataEnterer): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderDataEnterer): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderDataEnterer): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderDataEnterer): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(HeaderDataEnterer): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id"
         id="d286035e22-false-d286043e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr"
         id="d286035e37-false-d286053e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom"
         id="d286035e53-false-d286063e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d286035e68-false-d286076e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d286073e53-false-d286106e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization"
         id="d286035e78-false-d286119e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d286116e38-false-d286160e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d286116e40-false-d286170e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d286116e43-false-d286180e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d286116e45-false-d286190e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]"
         id="d286191e113-false-d286201e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@typeCode) = ('CST') or not(@typeCode)">(HeaderCustodian): Der Wert von typeCode MUSS 'CST' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &gt;= 1">(HeaderCustodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &lt;= 1">(HeaderCustodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]"
         id="d286191e125-false-d286221e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(HeaderCustodian): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]) &gt;= 1">(HeaderCustodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]) &lt;= 1">(HeaderCustodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]"
         id="d286191e129-false-d286241e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderCustodian): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderCustodian): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderCustodian): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:id) &lt;= 1">(HeaderCustodian): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderCustodian): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderCustodian): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:telecom) &lt;= 1">(HeaderCustodian): Element hl7:telecom kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderCustodian): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderCustodian): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id"
         id="d286191e135-false-d286287e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:name[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom"
         id="d286191e190-false-d286305e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]"
         id="d286191e199-false-d286315e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]"
         id="d286316e144-false-d286331e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.29-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(HeaderInformationRecipient): Der Wert von typeCode MUSS gewählt werden aus Value Set '1.2.40.0.34.10.29' ELGA_InformationRecipientType (DYNAMIC).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]) &gt;= 1">(HeaderInformationRecipient): Element hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]) &lt;= 1">(HeaderInformationRecipient): Element hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]"
         id="d286316e177-false-d286369e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:informationRecipient[not(@nullFlavor)]) &gt;= 1">(HeaderInformationRecipient): Element hl7:informationRecipient[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:informationRecipient[not(@nullFlavor)]) &lt;= 1">(HeaderInformationRecipient): Element hl7:informationRecipient[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:receivedOrganization) &lt;= 1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id"
         id="d286316e179-false-d286401e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]"
         id="d286316e246-false-d286414e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderInformationRecipient): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderInformationRecipient): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d286411e53-false-d286444e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization"
         id="d286316e270-false-d286457e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderInformationRecipient): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderInformationRecipient): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id"
         id="d286454e38-false-d286498e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]"
         id="d286454e40-false-d286508e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom"
         id="d286454e43-false-d286518e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr"
         id="d286454e45-false-d286528e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]"
         id="d286529e127-false-d286547e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="string(@typeCode) = ('LA') or not(@typeCode)">(HeaderLegalAuthenticator): Der Wert von typeCode MUSS 'LA' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:time) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:signatureCode[@code = 'S'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:signatureCode[@code = 'S'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d286529e136-false-d286591e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderLegalAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(*)">(HeaderLegalAuthenticator): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d286529e159-false-d286605e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderLegalAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="@nullFlavor or (@code='S')">(HeaderLegalAuthenticator): Der Elementinhalt MUSS einer von 'code 'S'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d286529e169-false-d286628e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d286665e22-false-d286673e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d286665e37-false-d286683e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d286665e53-false-d286693e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d286665e68-false-d286706e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d286703e53-false-d286736e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d286665e78-false-d286749e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d286746e38-false-d286790e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d286746e40-false-d286800e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d286746e43-false-d286810e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d286746e45-false-d286820e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]"
         id="d20e35952-false-d286836e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time) &gt;= 1">(Laborbefund): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time) &lt;= 1">(Laborbefund): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &gt;= 1">(Laborbefund): Element hl7:signatureCode[@code = 'S'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &lt;= 1">(Laborbefund): Element hl7:signatureCode[@code = 'S'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(Laborbefund): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(Laborbefund): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']"
         id="d20e35967-false-d286882e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.5')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d20e35972-false-d286893e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d20e35978-false-d286904e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="@nullFlavor or (@code='S')">(Laborbefund): Der Elementinhalt MUSS einer von 'code 'S'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e35987-false-d286925e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id) &gt;= 1">(Laborbefund): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &gt;= 1">(Laborbefund): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:telecom) &gt;= 1">(Laborbefund): Element hl7:telecom ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(Laborbefund): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d20e35992-false-d286971e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d20e35996-false-d286981e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d20e36001-false-d286991e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d20e36003-false-d287004e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d287001e53-false-d287034e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d20e36012-false-d287047e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d287044e38-false-d287088e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d287044e40-false-d287098e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d287044e43-false-d287108e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d287044e45-false-d287118e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']"
         id="d20e36021-false-d287126e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@typeCode) = ('REF')">(Laborbefund): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time) &gt;= 1">(Laborbefund): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time) &lt;= 1">(Laborbefund): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(Laborbefund): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']"
         id="d20e36030-false-d287167e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.6')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:time
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:time"
         id="d20e36038-false-d287181e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d20e36042-false-d287196e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('PROV')">(Laborbefund): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &gt;= 1">(Laborbefund): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(Laborbefund): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id[not(@nullFlavor)]"
         id="d20e36048-false-d287248e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d20e36052-false-d287258e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e36057-false-d287268e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d20e36061-false-d287281e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d287278e53-false-d287311e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d20e36068-false-d287324e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d287321e38-false-d287365e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d287321e40-false-d287375e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d287321e43-false-d287385e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.3.6.1.4.1.19376.1.3.3.1.6']/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d287321e45-false-d287395e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[@typeCode='REF'][hl7:templateId/@root='1.2.40.0.34.11.1.1.2']
Item: (Laborbefund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]"
         id="d287405e111-false-d287410e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@typeCode) = ('CALLBCK')">(HeaderParticipantAnsprechpartner): Der Wert von typeCode MUSS 'CALLBCK' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:time) = 0">(HeaderParticipantAnsprechpartner): Element hl7:time DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']"
         id="d287405e123-false-d287451e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.1')">(HeaderParticipantAnsprechpartner): Der Wert von root MUSS '1.2.40.0.34.11.1.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:time
Item: (HeaderParticipantAnsprechpartner)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d287405e130-false-d287478e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@classCode) = ('PROV')">(HeaderParticipantAnsprechpartner): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d287405e134-false-d287520e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d287405e148-false-d287530e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d287405e178-false-d287543e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantAnsprechpartner): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantAnsprechpartner): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d287540e53-false-d287573e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d287405e192-false-d287586e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantAnsprechpartner): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantAnsprechpartner): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantAnsprechpartner): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d287583e38-false-d287627e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d287583e40-false-d287637e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d287583e43-false-d287647e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d287583e45-false-d287657e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]"
         id="d287658e98-false-d287666e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@typeCode) = ('IND')">(HeaderParticipantHausarzt): Der Wert von typeCode MUSS 'IND' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']"
         id="d287658e116-false-d287708e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.3')">(HeaderParticipantHausarzt): Der Wert von root MUSS '1.2.40.0.34.11.1.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]"
         id="d287658e126-false-d287723e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="@nullFlavor or (@code='PCP' and @codeSystem='2.16.840.1.113883.5.88')">(HeaderParticipantHausarzt): Der Elementinhalt MUSS einer von 'code 'PCP' codeSystem '2.16.840.1.113883.5.88'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d287658e134-false-d287744e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@classCode) = ('PROV')">(HeaderParticipantHausarzt): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d287658e150-false-d287788e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d287658e204-false-d287798e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d287658e221-false-d287808e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d287658e233-false-d287821e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantHausarzt): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantHausarzt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d287818e53-false-d287851e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d287658e252-false-d287864e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantHausarzt): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantHausarzt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantHausarzt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantHausarzt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d287861e38-false-d287905e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d287861e40-false-d287915e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d287861e43-false-d287925e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d287861e45-false-d287935e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]"
         id="d287936e66-false-d287944e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@typeCode) = ('IND')">(HeaderParticipantNotfallkontakt): Der Wert von typeCode MUSS 'IND' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']) &gt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]) &gt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']"
         id="d287936e78-false-d287985e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.4')">(HeaderParticipantNotfallkontakt): Der Wert von root MUSS '1.2.40.0.34.11.1.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time"
         id="d287936e83-false-d287999e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]"
         id="d287936e117-false-d288014e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@classCode) = ('ECON')">(HeaderParticipantNotfallkontakt): Der Wert von classCode MUSS 'ECON' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d287936e129-false-d288066e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderParticipantNotfallkontakt): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.17 ELGA_PersonalRelationship (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr"
         id="d287936e150-false-d288086e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom"
         id="d287936e167-false-d288096e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d287936e199-false-d288109e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantNotfallkontakt): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantNotfallkontakt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d288106e53-false-d288139e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d287936e218-false-d288152e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantNotfallkontakt): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantNotfallkontakt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantNotfallkontakt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d288149e38-false-d288193e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d288149e40-false-d288203e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d288149e43-false-d288213e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d288149e45-false-d288223e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]"
         id="d288224e50-false-d288232e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@typeCode) = ('IND')">(HeaderParticipantAngehoerige): Der Wert von typeCode MUSS 'IND' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']"
         id="d288224e62-false-d288270e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.5')">(HeaderParticipantAngehoerige): Der Wert von root MUSS '1.2.40.0.34.11.1.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d288224e67-false-d288292e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@classCode) = ('PRS')">(HeaderParticipantAngehoerige): Der Wert von classCode MUSS 'PRS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d288224e79-false-d288346e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderParticipantAngehoerige): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.17 ELGA_PersonalRelationship (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr"
         id="d288224e98-false-d288366e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom"
         id="d288224e120-false-d288376e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d288224e138-false-d288389e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantAngehoerige): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantAngehoerige): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d288386e53-false-d288419e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization"
         id="d288224e150-false-d288432e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantAngehoerige): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantAngehoerige): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantAngehoerige): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantAngehoerige): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id"
         id="d288429e38-false-d288473e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d288429e40-false-d288483e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom"
         id="d288429e43-false-d288493e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr"
         id="d288429e45-false-d288503e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]"
         id="d288504e181-false-d288512e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@typeCode) = ('HLD')">(HeaderParticipantVersicherung): Der Wert von typeCode MUSS 'HLD' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']) &gt;= 1">(HeaderParticipantVersicherung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &gt;= 1">(HeaderParticipantVersicherung): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']"
         id="d288504e193-false-d288553e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.6')">(HeaderParticipantVersicherung): Der Wert von root MUSS '1.2.40.0.34.11.1.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time"
         id="d288504e198-false-d288567e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d288504e215-false-d288582e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@classCode) = ('POLHOLD')">(HeaderParticipantVersicherung): Der Wert von classCode MUSS 'POLHOLD' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="hl7:code/@code!='FAMDEP' or count(hl7:associatedPerson)=1">(HeaderParticipantVersicherung): Wenn das Versicherungsverhältnis "familienversichert" ist, dann muss eine associatedPerson angegeben sein</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:associatedPerson) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:scopingOrganization) &gt;= 1">(HeaderParticipantVersicherung): Element hl7:scopingOrganization ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id"
         id="d288504e227-false-d288635e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d288504e272-false-d288648e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderParticipantVersicherung): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.9 ELGA_InsuredAssocEntity (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr"
         id="d288504e314-false-d288668e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom"
         id="d288504e332-false-d288678e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson"
         id="d288504e349-false-d288691e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantVersicherung): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantVersicherung): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantVersicherung): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d288688e53-false-d288721e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d288504e366-false-d288734e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantVersicherung): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantVersicherung): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantVersicherung): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantVersicherung): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id"
         id="d288731e38-false-d288775e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d288731e40-false-d288785e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom"
         id="d288731e43-false-d288795e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr"
         id="d288731e45-false-d288805e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]"
         id="d288806e81-false-d288814e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="string(@typeCode) = ('IND')">(HeaderParticipantBetreuorg): Der Wert von typeCode MUSS 'IND' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']) &gt;= 1">(HeaderParticipantBetreuorg): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']) &lt;= 1">(HeaderParticipantBetreuorg): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]) &gt;= 1">(HeaderParticipantBetreuorg): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]) &lt;= 1">(HeaderParticipantBetreuorg): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']"
         id="d288806e93-false-d288847e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantBetreuorg): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.7')">(HeaderParticipantBetreuorg): Der Wert von root MUSS '1.2.40.0.34.11.1.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]"
         id="d288806e98-false-d288864e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="string(@classCode) = ('CAREGIVER')">(HeaderParticipantBetreuorg): Der Wert von classCode MUSS 'CAREGIVER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:scopingOrganization[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantBetreuorg): Element hl7:scopingOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:scopingOrganization[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantBetreuorg): Element hl7:scopingOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]"
         id="d288806e110-false-d288889e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantBetreuorg): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantBetreuorg): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantBetreuorg): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantBetreuorg): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantBetreuorg): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id"
         id="d288886e38-false-d288930e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d288886e40-false-d288940e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d288886e43-false-d288950e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr"
         id="d288886e45-false-d288960e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]"
         id="d288961e35-false-d288971e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="string(@typeCode) = ('FLFS')">(HeaderInFulfillmentOf): Der Wert von typeCode MUSS 'FLFS' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="count(hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']) &gt;= 1">(HeaderInFulfillmentOf): Element hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="count(hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']) &lt;= 1">(HeaderInFulfillmentOf): Element hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']"
         id="d288961e44-false-d288991e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="string(@classCode) = ('ACT')">(HeaderInFulfillmentOf): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="string(@moodCode) = ('RQO')">(HeaderInFulfillmentOf): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(HeaderInFulfillmentOf): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(HeaderInFulfillmentOf): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]"
         id="d288961e58-false-d289015e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInFulfillmentOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d20e36121-false-d289033e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(Laborbefund): Element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d20e36141-false-d289065e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Laborbefund): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d20e36145-false-d289104e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Laborbefund): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.22 ELGA_ServiceEventsLabor (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e36152-false-d289124e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e36154-false-d289151e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e36156-false-d289164e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="not(*)">(Laborbefund): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]"
         id="d20e36162-false-d289183e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &gt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']) &lt;= 1">(Laborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:time[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:time[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:time[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(Laborbefund): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(Laborbefund): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']"
         id="d20e36238-false-d289221e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.7')">(Laborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:time[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:time[not(@nullFlavor)]"
         id="d20e36243-false-d289232e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e36245-false-d289247e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &gt;= 1">(Laborbefund): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(Laborbefund): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id[not(@nullFlavor)]"
         id="d20e36249-false-d289295e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d20e36253-false-d289305e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d20e36258-false-d289315e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d20e36262-false-d289328e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d289325e53-false-d289358e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d20e36269-false-d289371e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(Laborbefund): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Laborbefund): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(Laborbefund): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d289368e38-false-d289412e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d289368e40-false-d289422e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d289368e43-false-d289432e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.22-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:performer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d289368e45-false-d289442e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:componentOf
Item: (Laborbefund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component"
         id="d20e36280-false-d289494e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Laborbefund): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Laborbefund): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <let name="elmcount" value="count(hl7:nonXMLBody | hl7:structuredBody)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="$elmcount &lt;= 1">(Laborbefund): Auswahl (hl7:nonXMLBody  oder  hl7:structuredBody) enthält zu viele Elemente [max 1x]</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:nonXMLBody
Item: (Laborbefund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:nonXMLBody/hl7:text
Item: (Laborbefund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody
Item: (Laborbefund)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody"
         id="d20e36296-false-d289607e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(Laborbefund): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(Laborbefund): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]) &lt;= 1">(Laborbefund): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]
Item: (Laborbefund)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Laborbefund): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Laborbefund): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]
Item: (Laborbefund)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Laborbefund): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Laborbefund): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]
Item: (Laborbefund)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4'] and hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Laborbefund): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4-2014-03-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Laborbefund): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
