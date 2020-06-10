<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2
Name: Entlassungsbrief (Ärztlich)
Description: Template Spezieller Implementierungsleitfaden ELGA Entlassungsbrief (Ärztlich)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2-2014-11-20T000000">
   <title>Entlassungsbrief (Ärztlich)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]"
         id="d20e8873-false-d156287e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.2.0.2'] | hl7:templateId[@root = '1.2.40.0.34.11.2.0.3'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.2.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.2.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.2.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.2.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.2']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:authorization) = 0">(EntlassungsbriefAerztlich): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2']"
         id="d20e8884-false-d156959e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1']"
         id="d20e8898-false-d156974e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.0.1')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2.0.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.2']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.2']"
         id="d20e8906-false-d156989e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.0.2')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2.0.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']"
         id="d20e8914-false-d157004e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.0.3')">(EntlassungsbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:id[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:id[not(@nullFlavor)]"
         id="d20e8923-false-d157018e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e8925-false-d157029e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="@nullFlavor or (@code='11490-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Physician Discharge summary')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code '11490-0' codeSystem '2.16.840.1.113883.6.1' displayName='Physician Discharge summary'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:title[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e8935-false-d157045e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90008
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDeffectiveTime)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d157046e37-false-d157056e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (CDconfidentialityCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]"
         id="d157057e38-false-d157071e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:languageCode[@code = 'de-AT']
Item: (CDlanguageCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:languageCode[@code = 'de-AT']"
         id="d157072e33-false-d157089e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:setId[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:setId[not(@nullFlavor)]"
         id="d157090e60-false-d157106e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d157090e88-false-d157116e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]"
         id="d157117e294-false-d157133e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole"
         id="d157117e317-false-d157162e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id"
         id="d157117e346-false-d157201e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr"
         id="d157117e410-false-d157211e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetAddressLine
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetName
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:houseNumber
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:state
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:additionalLocator
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom"
         id="d157117e442-false-d157340e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d157117e454-false-d157356e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]"
         id="d157117e460-false-d157449e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d157117e487-false-d157514e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d157117e504-false-d157536e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d157117e527-false-d157552e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d157117e537-false-d157577e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:raceCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian"
         id="d157117e577-false-d157615e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr"
         id="d157117e582-false-d157657e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom"
         id="d157117e594-false-d157667e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson"
         id="d157117e610-false-d157677e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]"
         id="d157117e617-false-d157693e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization"
         id="d157117e626-false-d157703e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]"
         id="d157117e633-false-d157719e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]"
         id="d157117e642-false-d157729e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]"
         id="d157117e649-false-d157745e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
         id="d157117e651-false-d157761e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication"
         id="d157762e47-false-d157772e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d157762e55-false-d157816e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d157762e65-false-d157839e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d157762e83-false-d157862e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd"
         id="d157762e104-false-d157882e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]"
         id="d157883e217-false-d157896e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode"
         id="d157883e228-false-d157937e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:time"
         id="d157883e248-false-d157947e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]"
         id="d157883e292-false-d157963e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id"
         id="d157883e314-false-d158030e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d157883e404-false-d158043e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom"
         id="d157883e434-false-d158063e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson"
         id="d157883e448-false-d158076e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d158073e53-false-d158106e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d157883e462-false-d158116e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d157883e468-false-d158148e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d157883e479-false-d158158e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d157883e492-false-d158168e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d157883e515-false-d158200e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d157883e567-false-d158210e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d157883e569-false-d158220e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d157883e572-false-d158230e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]"
         id="d158231e61-false-d158248e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time"
         id="d158231e71-false-d158277e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]"
         id="d158231e83-false-d158297e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id"
         id="d158334e22-false-d158342e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr"
         id="d158334e37-false-d158352e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom"
         id="d158334e53-false-d158362e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d158334e68-false-d158375e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d158372e53-false-d158405e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization"
         id="d158334e78-false-d158418e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d158415e38-false-d158459e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d158415e40-false-d158469e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d158415e43-false-d158479e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d158415e45-false-d158489e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]"
         id="d158490e113-false-d158500e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]"
         id="d158490e125-false-d158520e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]"
         id="d158490e129-false-d158540e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id"
         id="d158490e135-false-d158586e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:name[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom"
         id="d158490e190-false-d158604e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]"
         id="d158490e199-false-d158614e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]"
         id="d158615e144-false-d158630e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]"
         id="d158615e177-false-d158668e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id"
         id="d158615e179-false-d158700e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]"
         id="d158615e246-false-d158713e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d158710e53-false-d158743e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization"
         id="d158615e270-false-d158756e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id"
         id="d158753e38-false-d158797e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]"
         id="d158753e40-false-d158807e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom"
         id="d158753e43-false-d158817e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr"
         id="d158753e45-false-d158827e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]"
         id="d158828e127-false-d158846e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d158828e136-false-d158890e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d158828e159-false-d158904e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d158828e169-false-d158927e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d158964e22-false-d158972e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d158964e37-false-d158982e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d158964e53-false-d158992e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d158964e68-false-d159005e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d159002e53-false-d159035e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d158964e78-false-d159048e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d159045e38-false-d159089e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d159045e40-false-d159099e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d159045e43-false-d159109e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d159045e45-false-d159119e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]"
         id="d159120e167-false-d159138e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d159120e174-false-d159182e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d159120e197-false-d159196e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d159120e202-false-d159219e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d159256e22-false-d159264e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d159256e37-false-d159274e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d159256e53-false-d159284e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d159256e68-false-d159297e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d159294e53-false-d159327e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d159256e78-false-d159340e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d159337e38-false-d159381e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d159337e40-false-d159391e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d159337e43-false-d159401e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d159337e45-false-d159411e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]"
         id="d159412e118-false-d159420e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']"
         id="d159412e130-false-d159461e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:time
Item: (HeaderParticipantAnsprechpartner)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d159412e137-false-d159488e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d159412e141-false-d159530e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d159412e155-false-d159540e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d159412e185-false-d159553e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d159550e53-false-d159583e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d159412e199-false-d159596e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d159593e38-false-d159637e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d159593e40-false-d159647e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d159593e43-false-d159657e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d159593e45-false-d159667e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]"
         id="d159668e94-false-d159676e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']"
         id="d159668e113-false-d159711e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d159668e130-false-d159730e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d159668e148-false-d159774e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d159668e202-false-d159784e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d159668e214-false-d159794e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson"
         id="d159668e223-false-d159807e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d159804e53-false-d159837e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d159668e237-false-d159850e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d159847e38-false-d159891e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d159847e40-false-d159901e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d159847e43-false-d159911e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d159847e45-false-d159921e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]"
         id="d159922e98-false-d159930e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']"
         id="d159922e116-false-d159972e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]"
         id="d159922e126-false-d159987e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d159922e134-false-d160008e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d159922e150-false-d160052e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d159922e204-false-d160062e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d159922e221-false-d160072e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d159922e233-false-d160085e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d160082e53-false-d160115e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d159922e252-false-d160128e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d160125e38-false-d160169e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d160125e40-false-d160179e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d160125e43-false-d160189e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d160125e45-false-d160199e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]"
         id="d160200e66-false-d160208e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']"
         id="d160200e78-false-d160249e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time"
         id="d160200e83-false-d160263e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]"
         id="d160200e117-false-d160278e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d160200e129-false-d160330e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr"
         id="d160200e150-false-d160350e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom"
         id="d160200e167-false-d160360e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d160200e199-false-d160373e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d160370e53-false-d160403e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d160200e218-false-d160416e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d160413e38-false-d160457e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d160413e40-false-d160467e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d160413e43-false-d160477e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d160413e45-false-d160487e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]"
         id="d160488e50-false-d160496e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']"
         id="d160488e62-false-d160534e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d160488e67-false-d160556e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d160488e79-false-d160610e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr"
         id="d160488e98-false-d160630e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom"
         id="d160488e120-false-d160640e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d160488e138-false-d160653e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d160650e53-false-d160683e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization"
         id="d160488e150-false-d160696e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id"
         id="d160693e38-false-d160737e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d160693e40-false-d160747e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom"
         id="d160693e43-false-d160757e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr"
         id="d160693e45-false-d160767e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]"
         id="d160768e181-false-d160776e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']"
         id="d160768e193-false-d160817e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time"
         id="d160768e198-false-d160831e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d160768e215-false-d160846e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id"
         id="d160768e227-false-d160899e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d160768e272-false-d160912e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr"
         id="d160768e314-false-d160932e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom"
         id="d160768e332-false-d160942e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson"
         id="d160768e349-false-d160955e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d160952e53-false-d160985e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d160768e366-false-d160998e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id"
         id="d160995e38-false-d161039e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d160995e40-false-d161049e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom"
         id="d160995e43-false-d161059e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr"
         id="d160995e45-false-d161069e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]"
         id="d161070e81-false-d161078e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']"
         id="d161070e93-false-d161111e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]"
         id="d161070e98-false-d161128e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]"
         id="d161070e110-false-d161153e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id"
         id="d161150e38-false-d161194e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d161150e40-false-d161204e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d161150e43-false-d161214e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr"
         id="d161150e45-false-d161224e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]"
         id="d161225e35-false-d161235e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']"
         id="d161225e44-false-d161255e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]"
         id="d161225e58-false-d161279e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInFulfillmentOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]"
         id="d20e9010-false-d161290e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]"
         id="d20e9012-false-d161308e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:performer) = 0">(EntlassungsbriefAerztlich): Element hl7:performer DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]"
         id="d20e9014-false-d161340e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="@nullFlavor or (@code='GDLSTATAUF' and @codeSystem='1.2.40.0.34.5.21')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code 'GDLSTATAUF' codeSystem '1.2.40.0.34.5.21'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e9021-false-d161356e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e9023-false-d161383e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e9025-false-d161396e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:performer
Item: (EntlassungsbriefAerztlich)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]"
         id="d161411e24-false-d161418e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]"
         id="d161411e39-false-d161438e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d161411e50-false-d161462e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRelatedDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20012
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:authorization
Item: (HeaderAuthorization)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]"
         id="d20e9037-false-d161491e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]"
         id="d20e9039-false-d161527e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:responsibleParty[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:responsibleParty[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id"
         id="d20e9041-false-d161587e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]"
         id="d20e9043-false-d161598e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="@nullFlavor or (@code='IMP' and @codeSystem='2.16.840.1.113883.5.4')">(EntlassungsbriefAerztlich): Der Elementinhalt MUSS einer von 'code 'IMP' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:originalText) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText"
         id="d20e9047-false-d161620e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e9052-false-d161630e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e9054-false-d161657e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e9056-false-d161670e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="not(*)">(EntlassungsbriefAerztlich): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]"
         id="d20e9059-false-d161690e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e9061-false-d161720e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d161757e22-false-d161765e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d161757e37-false-d161775e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d161757e53-false-d161785e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d161757e68-false-d161798e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d161795e53-false-d161828e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d161757e78-false-d161841e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d161838e38-false-d161882e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d161838e40-false-d161892e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d161838e43-false-d161902e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d161838e45-false-d161912e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]"
         id="d161913e18-false-d161923e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]"
         id="d161913e35-false-d161943e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]"
         id="d161913e57-false-d161963e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id"
         id="d161913e78-false-d162003e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d161913e83-false-d162013e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d161913e87-false-d162023e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr"
         id="d161913e91-false-d162033e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component"
         id="d20e9072-false-d162300e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="//hl7:templateId[3]/@root='1.2.40.0.34.11.2.0.1' or not(hl7:nonXMLBody)">(EntlassungsbriefAerztlich): Element nonXMLBody nur bei EIS "Basic" zulässig.</assert>
      <let name="elmcount"
           value="count(hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']] | hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']] | hl7:nonXMLBody)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]  oder  hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]  oder  hl7:nonXMLBody) enthält zu viele Elemente [max 1x]</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]
Item: (EntlassungsbriefAerztlich)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]"
         id="d20e9085-false-d162357e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:section[not(@nullFlavor)][hl7:text]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:section[not(@nullFlavor)][hl7:text] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:section[not(@nullFlavor)][hl7:text]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:section[not(@nullFlavor)][hl7:text] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]"
         id="d20e9091-false-d162403e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:code) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:title) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:templateId
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:templateId"
         id="d162445e61-false-d162456e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:id
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:id"
         id="d162445e70-false-d162466e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:code
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:code"
         id="d162445e78-false-d162476e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:title
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:title"
         id="d162445e86-false-d162486e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:text
Item: (BodySection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]
Item: (AuthorElements)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]"
         id="d162498e212-false-d162505e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:functionCode
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:functionCode"
         id="d162498e221-false-d162548e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:time
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:time"
         id="d162498e241-false-d162558e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]"
         id="d162498e285-false-d162576e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id"
         id="d162498e307-false-d162645e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d162498e344-false-d162658e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom"
         id="d162498e374-false-d162678e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson"
         id="d162498e388-false-d162691e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d162688e53-false-d162721e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d162498e402-false-d162731e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d162498e408-false-d162759e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d162498e419-false-d162769e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d162498e432-false-d162782e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id"
         id="d162779e38-false-d162823e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d162779e40-false-d162833e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d162779e43-false-d162843e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d162779e45-false-d162853e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]"
         id="d162498e439-false-d162861e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']"
         id="d162498e459-false-d162889e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]"
         id="d162498e464-false-d162900e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']"
         id="d162498e468-false-d162920e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:entry
Item: (BodySection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]"
         id="d20e9098-false-d162937e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefAerztlich): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.3']) or ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.2.3']">(EntlassungsbriefAerztlich): EIS "Full" verlangt eine Section 1.2.40.0.34.11.2.2.3 EntlassungsdiagnoseFull.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefAerztlich): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.20']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]
Item: (EntlassungsbriefAerztlich)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.2.0.2' or @root='1.2.40.0.34.11.2.0.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefAerztlich): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefAerztlich): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:nonXMLBody
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:nonXMLBody"
         id="d20e9287-false-d164015e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefAerztlich): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsbriefAerztlich): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsbriefAerztlich): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:nonXMLBody/hl7:text
Item: (EntlassungsbriefAerztlich)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:component/hl7:nonXMLBody/hl7:text"
         id="d20e9296-false-d164039e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2-2014-11-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
