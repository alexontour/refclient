<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2
Name: Entlassungsbrief (Ärztlich)
Description: Template Spezieller Implementierungsleitfaden ELGA Entlassungsbrief (Ärztlich)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2-2014-01-05T000000">
   <title>Entlassungsbrief (Ärztlich)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]"
         id="d20e9712-false-d172524e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:authorization) = 0">(EntlassungsbriefAerztlich): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.2']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.2']"
         id="d20e9723-false-d173160e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']"
         id="d20e9732-false-d173175e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.2.0.2','1.2.40.0.34.11.2.0.3')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.2.0.2','1.2.40.0.34.11.2.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:id[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:id[not(@nullFlavor)]"
         id="d20e9740-false-d173189e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e9742-false-d173200e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="@nullFlavor or (@code='11490-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Discharge summarization note (physician)')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code '11490-0' codeSystem '2.16.840.1.113883.6.1' displayName='Discharge summarization note (physician)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:title[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e9752-false-d173216e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90008
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDeffectiveTime)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d173217e37-false-d173227e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (CDconfidentialityCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]"
         id="d173228e38-false-d173242e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:languageCode[@code = 'de-AT']
Item: (CDlanguageCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:languageCode[@code = 'de-AT']"
         id="d173243e33-false-d173260e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:setId[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:setId[not(@nullFlavor)]"
         id="d173261e60-false-d173277e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d173261e88-false-d173287e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]"
         id="d173288e294-false-d173304e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole"
         id="d173288e317-false-d173333e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id"
         id="d173288e346-false-d173372e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr"
         id="d173288e410-false-d173382e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetAddressLine
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetName
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:houseNumber
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:state
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:additionalLocator
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom"
         id="d173288e442-false-d173511e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d173288e454-false-d173527e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]"
         id="d173288e460-false-d173620e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d173288e487-false-d173685e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d173288e504-false-d173707e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d173288e527-false-d173723e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d173288e537-false-d173748e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:raceCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian"
         id="d173288e577-false-d173786e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr"
         id="d173288e582-false-d173828e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom"
         id="d173288e594-false-d173838e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson"
         id="d173288e610-false-d173848e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]"
         id="d173288e617-false-d173864e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization"
         id="d173288e626-false-d173874e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]"
         id="d173288e633-false-d173890e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]"
         id="d173288e642-false-d173900e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]"
         id="d173288e649-false-d173916e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
         id="d173288e651-false-d173932e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication"
         id="d173933e47-false-d173943e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d173933e55-false-d173987e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d173933e65-false-d174010e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d173933e83-false-d174033e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd"
         id="d173933e104-false-d174053e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]"
         id="d174054e217-false-d174067e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode"
         id="d174054e228-false-d174108e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time"
         id="d174054e248-false-d174118e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]"
         id="d174054e292-false-d174134e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id"
         id="d174054e314-false-d174201e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d174054e404-false-d174214e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom"
         id="d174054e434-false-d174234e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson"
         id="d174054e448-false-d174247e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d174244e53-false-d174277e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d174054e462-false-d174287e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d174054e468-false-d174319e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d174054e479-false-d174329e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d174054e492-false-d174339e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d174054e515-false-d174371e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d174054e567-false-d174381e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d174054e569-false-d174391e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d174054e572-false-d174401e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]"
         id="d174402e61-false-d174419e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time"
         id="d174402e71-false-d174448e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]"
         id="d174402e83-false-d174468e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id"
         id="d174505e22-false-d174513e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr"
         id="d174505e37-false-d174523e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom"
         id="d174505e53-false-d174533e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d174505e68-false-d174546e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d174543e53-false-d174576e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization"
         id="d174505e78-false-d174589e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d174586e38-false-d174630e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d174586e40-false-d174640e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d174586e43-false-d174650e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d174586e45-false-d174660e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]"
         id="d174661e113-false-d174671e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]"
         id="d174661e125-false-d174691e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]"
         id="d174661e129-false-d174711e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id"
         id="d174661e135-false-d174757e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:name[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom"
         id="d174661e190-false-d174775e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]"
         id="d174661e199-false-d174785e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]"
         id="d174786e144-false-d174801e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]"
         id="d174786e177-false-d174839e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id"
         id="d174786e179-false-d174871e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]"
         id="d174786e246-false-d174884e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d174881e53-false-d174914e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization"
         id="d174786e270-false-d174927e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id"
         id="d174924e38-false-d174968e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]"
         id="d174924e40-false-d174978e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom"
         id="d174924e43-false-d174988e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr"
         id="d174924e45-false-d174998e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]"
         id="d174999e127-false-d175017e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d174999e136-false-d175061e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d174999e159-false-d175075e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d174999e169-false-d175098e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d175135e22-false-d175143e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d175135e37-false-d175153e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d175135e53-false-d175163e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d175135e68-false-d175176e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d175173e53-false-d175206e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d175135e78-false-d175219e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d175216e38-false-d175260e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d175216e40-false-d175270e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d175216e43-false-d175280e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d175216e45-false-d175290e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]"
         id="d175291e167-false-d175309e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="string(@typeCode) = ('AUTHEN') or not(@typeCode)">(HeaderAuthenticator): Der Wert von typeCode MUSS 'AUTHEN' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:time) &gt;= 1">(HeaderAuthenticator): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderAuthenticator): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &gt;= 1">(HeaderAuthenticator): Element hl7:signatureCode[@code = 'S'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &lt;= 1">(HeaderAuthenticator): Element hl7:signatureCode[@code = 'S'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(HeaderAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(HeaderAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d175291e174-false-d175353e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(*)">(HeaderAuthenticator): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d175291e197-false-d175367e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="@nullFlavor or (@code='S')">(HeaderAuthenticator): Der Elementinhalt MUSS einer von 'code 'S'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d175291e202-false-d175390e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderAuthenticator): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderAuthenticator): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(HeaderAuthenticator): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d175427e22-false-d175435e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d175427e37-false-d175445e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d175427e53-false-d175455e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d175427e68-false-d175468e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d175465e53-false-d175498e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d175427e78-false-d175511e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d175508e38-false-d175552e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d175508e40-false-d175562e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d175508e43-false-d175572e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d175508e45-false-d175582e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]"
         id="d175583e118-false-d175591e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']"
         id="d175583e130-false-d175632e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:time
Item: (HeaderParticipantAnsprechpartner)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d175583e137-false-d175659e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d175583e141-false-d175701e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d175583e155-false-d175711e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d175583e185-false-d175724e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d175721e53-false-d175754e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d175583e199-false-d175767e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d175764e38-false-d175808e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d175764e40-false-d175818e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d175764e43-false-d175828e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d175764e45-false-d175838e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]"
         id="d175839e94-false-d175847e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@typeCode) = ('REF')">(HeaderParticipantRefArzt): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']) &gt;= 1">(HeaderParticipantRefArzt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(HeaderParticipantRefArzt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']"
         id="d175839e113-false-d175882e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.2')">(HeaderParticipantRefArzt): Der Wert von root MUSS '1.2.40.0.34.11.1.1.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d175839e130-false-d175901e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@classCode) = ('PROV')">(HeaderParticipantRefArzt): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:associatedPerson) &gt;= 1">(HeaderParticipantRefArzt): Element hl7:associatedPerson ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:associatedPerson) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d175839e148-false-d175945e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d175839e202-false-d175955e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d175839e214-false-d175965e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson"
         id="d175839e223-false-d175978e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantRefArzt): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantRefArzt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantRefArzt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d175975e53-false-d176008e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d175839e237-false-d176021e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantRefArzt): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantRefArzt): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantRefArzt): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantRefArzt): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d176018e38-false-d176062e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d176018e40-false-d176072e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d176018e43-false-d176082e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d176018e45-false-d176092e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]"
         id="d176093e98-false-d176101e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']"
         id="d176093e116-false-d176143e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]"
         id="d176093e126-false-d176158e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d176093e134-false-d176179e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d176093e150-false-d176223e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d176093e204-false-d176233e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d176093e221-false-d176243e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d176093e233-false-d176256e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d176253e53-false-d176286e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d176093e252-false-d176299e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d176296e38-false-d176340e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d176296e40-false-d176350e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d176296e43-false-d176360e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d176296e45-false-d176370e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]"
         id="d176371e66-false-d176379e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']"
         id="d176371e78-false-d176420e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time"
         id="d176371e83-false-d176434e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]"
         id="d176371e117-false-d176449e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d176371e129-false-d176501e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr"
         id="d176371e150-false-d176521e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom"
         id="d176371e167-false-d176531e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d176371e199-false-d176544e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d176541e53-false-d176574e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d176371e218-false-d176587e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d176584e38-false-d176628e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d176584e40-false-d176638e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d176584e43-false-d176648e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d176584e45-false-d176658e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]"
         id="d176659e50-false-d176667e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']"
         id="d176659e62-false-d176705e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d176659e67-false-d176727e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d176659e79-false-d176781e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr"
         id="d176659e98-false-d176801e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom"
         id="d176659e120-false-d176811e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d176659e138-false-d176824e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d176821e53-false-d176854e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization"
         id="d176659e150-false-d176867e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id"
         id="d176864e38-false-d176908e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d176864e40-false-d176918e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom"
         id="d176864e43-false-d176928e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr"
         id="d176864e45-false-d176938e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]"
         id="d176939e181-false-d176947e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']"
         id="d176939e193-false-d176988e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time"
         id="d176939e198-false-d177002e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d176939e215-false-d177017e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id"
         id="d176939e227-false-d177070e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d176939e272-false-d177083e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr"
         id="d176939e314-false-d177103e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom"
         id="d176939e332-false-d177113e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson"
         id="d176939e349-false-d177126e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d177123e53-false-d177156e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d176939e366-false-d177169e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id"
         id="d177166e38-false-d177210e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d177166e40-false-d177220e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom"
         id="d177166e43-false-d177230e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr"
         id="d177166e45-false-d177240e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]"
         id="d177241e81-false-d177249e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']"
         id="d177241e93-false-d177282e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]"
         id="d177241e98-false-d177299e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]"
         id="d177241e110-false-d177324e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id"
         id="d177321e38-false-d177365e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d177321e40-false-d177375e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d177321e43-false-d177385e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr"
         id="d177321e45-false-d177395e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]"
         id="d177396e35-false-d177406e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']"
         id="d177396e44-false-d177426e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]"
         id="d177396e58-false-d177450e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInFulfillmentOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]"
         id="d20e9827-false-d177461e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]"
         id="d20e9829-false-d177479e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:performer) = 0">(EntlassungsbriefAerztlich): Element hl7:performer DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]"
         id="d20e9831-false-d177511e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="@nullFlavor or (@code='GDLSTATAUF' and @codeSystem='1.2.40.0.34.5.21')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code 'GDLSTATAUF' codeSystem '1.2.40.0.34.5.21'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e9838-false-d177527e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e9840-false-d177554e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e9842-false-d177567e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:performer
Item: (EntlassungsbriefAerztlich)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]"
         id="d177582e24-false-d177589e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@typeCode) = ('RPLC')">(HeaderRelatedDocument): Der Wert von typeCode MUSS 'RPLC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:parentDocument[not(@nullFlavor)]) &gt;= 1">(HeaderRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:parentDocument[not(@nullFlavor)]) &lt;= 1">(HeaderRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]"
         id="d177582e39-false-d177609e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(HeaderRelatedDocument): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(HeaderRelatedDocument): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(HeaderRelatedDocument): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(HeaderRelatedDocument): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d177582e50-false-d177633e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRelatedDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20012
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:authorization
Item: (HeaderAuthorization)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]"
         id="d20e9854-false-d177662e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]"
         id="d20e9856-false-d177698e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:responsibleParty[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:responsibleParty[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id"
         id="d20e9858-false-d177758e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]"
         id="d20e9860-false-d177769e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="@nullFlavor or (@code='IMP' and @codeSystem='2.16.840.1.113883.5.4')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code 'IMP' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:originalText) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText"
         id="d20e9864-false-d177791e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e9869-false-d177801e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e9871-false-d177828e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e9873-false-d177841e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]"
         id="d20e9876-false-d177861e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e9878-false-d177891e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:addr) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d177928e22-false-d177936e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d177928e37-false-d177946e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d177928e53-false-d177956e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d177928e68-false-d177969e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d177966e53-false-d177999e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d177928e78-false-d178012e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d178009e38-false-d178053e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d178009e40-false-d178063e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d178009e43-false-d178073e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d178009e45-false-d178083e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]"
         id="d178084e18-false-d178094e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="string(@typeCode) = ('LOC') or not(@typeCode)">(EncounterLocation2): Der Wert von typeCode MUSS 'LOC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]) &gt;= 1">(EncounterLocation2): Element hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]) &lt;= 1">(EncounterLocation2): Element hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]"
         id="d178084e35-false-d178114e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="string(@classCode) = ('SDLOC') or not(@classCode)">(EncounterLocation2): Der Wert von classCode MUSS 'SDLOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:serviceProviderOrganization[not(@nullFlavor)]) &gt;= 1">(EncounterLocation2): Element hl7:serviceProviderOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:serviceProviderOrganization[not(@nullFlavor)]) &lt;= 1">(EncounterLocation2): Element hl7:serviceProviderOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]"
         id="d178084e57-false-d178134e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(EncounterLocation2): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(EncounterLocation2): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(hl7:telecom[@nullFlavor])">(EncounterLocation2): @nullFlavor nicht erlaubt, stattdessen Element weglassen</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(hl7:addr[@nullFlavor])">(EncounterLocation2): @nullFlavor nicht erlaubt, stattdessen Element weglassen</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:id) &gt;= 1">(EncounterLocation2): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(EncounterLocation2): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(EncounterLocation2): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="count(hl7:addr) &lt;= 1">(EncounterLocation2): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id"
         id="d178084e78-false-d178174e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d178084e83-false-d178184e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d178084e87-false-d178194e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr"
         id="d178084e91-false-d178204e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component"
         id="d20e9889-false-d178461e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="//hl7:templateId[3]/@root='1.2.40.0.34.11.2.0.1' or not(hl7:nonXMLBody)">(EntlassungsbriefAerztlich): Element nonXMLBody nur bei EIS "Basic" zulässig.</assert>
      <let name="elmcount" value="count(hl7:structuredBody | hl7:nonXMLBody)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:structuredBody  oder  hl7:nonXMLBody) enthält zu viele Elemente [max 1x]</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody"
         id="d20e9897-false-d178983e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefAerztlich): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:nonXMLBody
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:nonXMLBody"
         id="d20e10080-false-d180061e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefAerztlich): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:nonXMLBody/hl7:text
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2'] and hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']]/hl7:component/hl7:nonXMLBody/hl7:text"
         id="d20e10086-false-d180085e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-01-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
