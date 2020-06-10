<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3
Name: Entlassungsbrief (Pflege)
Description: Template Spezieller Implementierungsleitfaden ELGA Entlassungsbrief (Pflege)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3-2015-12-11T000000">
   <title>Entlassungsbrief (Pflege)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]"
         id="d20e23822-false-d208953e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3']) &gt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.3.0.2'] | hl7:templateId[@root = '1.2.40.0.34.11.3.0.3'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.3.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.3.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.3.0.3']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.3.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.3.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.3.0.3']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.1']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3.0.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.2']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3.0.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.3']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(EntlassungsbriefPflege): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3']"
         id="d20e23833-false-d209536e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.1']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.1']"
         id="d20e23844-false-d209551e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.0.1')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3.0.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.2']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.2']"
         id="d20e23852-false-d209566e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.0.2')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3.0.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.3']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.3']"
         id="d20e23860-false-d209581e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.0.3')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:id[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:id[not(@nullFlavor)]"
         id="d20e23869-false-d209595e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e23871-false-d209606e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="@nullFlavor or (@code='34745-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Nurse Discharge summary')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code '34745-0' codeSystem '2.16.840.1.113883.6.1' displayName='Nurse Discharge summary'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:title[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e23881-false-d209622e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90008
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDeffectiveTime)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d209623e37-false-d209633e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (CDconfidentialityCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]"
         id="d209634e38-false-d209648e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:languageCode[@code = 'de-AT']
Item: (CDlanguageCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:languageCode[@code = 'de-AT']"
         id="d209649e33-false-d209666e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:setId[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:setId[not(@nullFlavor)]"
         id="d209667e60-false-d209683e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d209667e88-false-d209693e0">
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
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]"
         id="d209694e18-false-d209710e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string(@typeCode) = ('RCT') or not(@typeCode)">(HeaderRecordTargetPflege): Der Wert von typeCode MUSS 'RCT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(HeaderRecordTargetPflege): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:patientRole) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:patientRole) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole"
         id="d209694e37-false-d209739e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string(@classCode) = ('PAT') or not(@classCode)">(HeaderRecordTargetPflege): Der Wert von classCode MUSS 'PAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string-length(hl7:id[1]/@root)&gt;0">(HeaderRecordTargetPflege):  patientRole id[1] MUSS als lokale Patienten ID vom System vorhanden sein</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="hl7:id[2][@root='1.2.40.0.10.1.4.3.1'][string-length(@extension)&gt;0] or hl7:id[2]/@nullFlavor='NI' or hl7:id[2]/@nullFlavor='UNK'">(HeaderRecordTargetPflege): patientRole id[2] MUSS Sozialversicherungsnummer des Patienten sein (@root 1.2.40.0.10.1.4.3.1, Sozialversicherungsnummer in @extension) oder @nullFlavor 'NI' oder 'UNK' ist angegeben</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:id) &gt;= 2">(HeaderRecordTargetPflege): Element hl7:id ist required [min 2x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:addr) &lt;= 2">(HeaderRecordTargetPflege): Element hl7:addr kommt zu häufig vor [max 2x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id"
         id="d209694e67-false-d209778e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr"
         id="d209694e84-false-d209788e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="//hl7:templateId[@root=('1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.3.0.1','1.2.40.0.34.11.12.0.1')] or (hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber))">(HeaderRecordTargetPflege): Granularitätsstufen Adresse beachten: streetAddressLine oder streetName+houseNumber</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="//hl7:templateId[@root=('1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.3.0.1','1.2.40.0.34.11.12.0.1')] or (hl7:postalCode and hl7:city and hl7:country)">(HeaderRecordTargetPflege): Bei Granularitätsstufen anders als EIS "Basic" sind die Elemente postalCode, city und country anzugeben.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(hl7:postalCode or hl7:city or hl7:country) or (hl7:postalCode and hl7:city and hl7:country)">(HeaderRecordTargetPflege): Bei Granularitätsstufen höher als 1 sind die Elemente postalCode, city und country anzugeben.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:streetAddressLine) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:streetName) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:postalCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:city) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:city kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:state) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:state kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:country) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:country kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetAddressLine
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetName
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:houseNumber
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:postalCode
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:city
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:state
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:country
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:additionalLocator
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom"
         id="d209694e142-false-d209912e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d209694e164-false-d209928e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderRecordTargetPflege): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderRecordTargetPflege): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:birthTime) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:raceCode) = 0">(HeaderRecordTargetPflege): Element hl7:raceCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:ethnicGroupCode) = 0">(HeaderRecordTargetPflege): Element hl7:ethnicGroupCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:birthplace[hl7:place]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:birthplace[hl7:place] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]"
         id="d209694e187-false-d210021e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d209694e213-false-d210086e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTargetPflege): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTargetPflege): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d209694e227-false-d210108e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(*)">(HeaderRecordTargetPflege): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d209694e239-false-d210124e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTargetPflege): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTargetPflege): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d209694e254-false-d210149e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTargetPflege): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTargetPflege): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:raceCode
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode
Item: (HeaderRecordTargetPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian"
         id="d209694e277-false-d210187e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:guardianPerson | hl7:guardianOrganization)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="$elmcount &gt;= 1">(HeaderRecordTargetPflege): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="$elmcount &lt;= 1">(HeaderRecordTargetPflege): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:guardianPerson) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:guardianPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:guardianOrganization) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:guardianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr"
         id="d209694e322-false-d210229e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom"
         id="d209694e324-false-d210239e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson"
         id="d209694e330-false-d210249e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]"
         id="d209694e332-false-d210265e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization"
         id="d209694e335-false-d210275e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]"
         id="d209694e337-false-d210291e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]"
         id="d209694e344-false-d210301e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:place[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:place[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]"
         id="d209694e360-false-d210317e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTargetPflege): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTargetPflege): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20014
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (HeaderRecordTargetPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
         id="d209694e362-false-d210333e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTargetPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication"
         id="d210334e47-false-d210344e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d210334e55-false-d210388e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d210334e65-false-d210411e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d210334e83-false-d210434e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd"
         id="d210334e104-false-d210454e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]"
         id="d210455e217-false-d210468e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode"
         id="d210455e228-false-d210509e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:time"
         id="d210455e248-false-d210519e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]"
         id="d210455e292-false-d210535e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id"
         id="d210455e314-false-d210602e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d210455e404-false-d210615e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom"
         id="d210455e434-false-d210635e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson"
         id="d210455e448-false-d210648e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d210645e53-false-d210678e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d210455e462-false-d210688e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d210455e468-false-d210720e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d210455e479-false-d210730e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d210455e492-false-d210740e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d210455e515-false-d210772e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d210455e567-false-d210782e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d210455e569-false-d210792e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d210455e572-false-d210802e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]"
         id="d210803e61-false-d210820e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:time"
         id="d210803e71-false-d210849e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]
Item: (HeaderDataEnterer)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]"
         id="d210803e83-false-d210869e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:id"
         id="d210906e22-false-d210914e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:addr"
         id="d210906e37-false-d210924e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:telecom"
         id="d210906e53-false-d210934e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d210906e68-false-d210947e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d210944e53-false-d210977e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization"
         id="d210906e78-false-d210990e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d210987e38-false-d211031e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d210987e40-false-d211041e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d210987e43-false-d211051e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d210987e45-false-d211061e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]"
         id="d211062e113-false-d211072e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]"
         id="d211062e125-false-d211092e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]"
         id="d211062e129-false-d211112e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id"
         id="d211062e135-false-d211158e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:name[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom"
         id="d211062e190-false-d211176e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]"
         id="d211062e199-false-d211186e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]"
         id="d211187e144-false-d211202e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]"
         id="d211187e177-false-d211240e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:id"
         id="d211187e179-false-d211272e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]"
         id="d211187e246-false-d211285e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d211282e53-false-d211315e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20005
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization"
         id="d211187e270-false-d211328e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:id"
         id="d211325e38-false-d211369e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]"
         id="d211325e40-false-d211379e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:telecom"
         id="d211325e43-false-d211389e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/hl7:addr"
         id="d211325e45-false-d211399e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]"
         id="d211400e127-false-d211418e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d211400e136-false-d211462e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d211400e159-false-d211476e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d211400e169-false-d211499e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d211536e22-false-d211544e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d211536e37-false-d211554e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d211536e53-false-d211564e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d211536e68-false-d211577e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d211574e53-false-d211607e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d211536e78-false-d211620e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d211617e38-false-d211661e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d211617e40-false-d211671e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d211617e43-false-d211681e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d211617e45-false-d211691e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]"
         id="d211692e167-false-d211710e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d211692e174-false-d211754e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d211692e197-false-d211768e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d211692e202-false-d211791e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d211828e22-false-d211836e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d211828e37-false-d211846e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d211828e53-false-d211856e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d211828e68-false-d211869e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d211866e53-false-d211899e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d211828e78-false-d211912e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d211909e38-false-d211953e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d211909e40-false-d211963e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d211909e43-false-d211973e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d211909e45-false-d211983e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]"
         id="d211984e118-false-d211992e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.1']"
         id="d211984e130-false-d212033e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:time
Item: (HeaderParticipantAnsprechpartner)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d211984e137-false-d212060e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d211984e141-false-d212102e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom[not(@nullFlavor)]"
         id="d211984e155-false-d212112e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAnsprechpartner): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d211984e185-false-d212125e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d212122e53-false-d212155e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.1
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantAnsprechpartner)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d211984e199-false-d212168e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d212165e38-false-d212209e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d212165e40-false-d212219e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d212165e43-false-d212229e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d212165e45-false-d212239e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]"
         id="d212240e94-false-d212248e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.2']"
         id="d212240e113-false-d212283e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d212240e130-false-d212302e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d212240e148-false-d212346e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d212240e202-false-d212356e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d212240e214-false-d212366e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantRefArzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson"
         id="d212240e223-false-d212379e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d212376e53-false-d212409e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantRefArzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d212240e237-false-d212422e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d212419e38-false-d212463e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d212419e40-false-d212473e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d212419e43-false-d212483e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d212419e45-false-d212493e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]"
         id="d212494e98-false-d212502e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.3']"
         id="d212494e116-false-d212544e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')]"
         id="d212494e126-false-d212559e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d212494e134-false-d212580e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:id"
         id="d212494e150-false-d212624e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d212494e204-false-d212634e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d212494e221-false-d212644e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantHausarzt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d212494e233-false-d212657e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d212654e53-false-d212687e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantHausarzt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d212494e252-false-d212700e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d212697e38-false-d212741e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d212697e40-false-d212751e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d212697e43-false-d212761e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d212697e45-false-d212771e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]"
         id="d212772e66-false-d212780e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.4']"
         id="d212772e78-false-d212821e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:time"
         id="d212772e83-false-d212835e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]"
         id="d212772e117-false-d212850e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d212772e129-false-d212902e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:addr"
         id="d212772e150-false-d212922e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:telecom"
         id="d212772e167-false-d212932e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantNotfallkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d212772e199-false-d212945e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d212942e53-false-d212975e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.4
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantNotfallkontakt)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d212772e218-false-d212988e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d212985e38-false-d213029e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d212985e40-false-d213039e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d212985e43-false-d213049e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d212985e45-false-d213059e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]"
         id="d213060e50-false-d213068e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.5']"
         id="d213060e62-false-d213106e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d213060e67-false-d213128e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d213060e79-false-d213182e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr"
         id="d213060e98-false-d213202e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:telecom"
         id="d213060e120-false-d213212e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantAngehoerige): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d213060e138-false-d213225e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d213222e53-false-d213255e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.5
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization
Item: (HeaderParticipantAngehoerige)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization"
         id="d213060e150-false-d213268e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:id"
         id="d213265e38-false-d213309e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d213265e40-false-d213319e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:telecom"
         id="d213265e43-false-d213329e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/hl7:addr"
         id="d213265e45-false-d213339e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]"
         id="d213340e181-false-d213348e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.6']"
         id="d213340e193-false-d213389e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:time"
         id="d213340e198-false-d213403e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d213340e215-false-d213418e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id"
         id="d213340e227-false-d213471e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d213340e272-false-d213484e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr"
         id="d213340e314-false-d213504e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom"
         id="d213340e332-false-d213514e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantVersicherung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson"
         id="d213340e349-false-d213527e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d213524e53-false-d213557e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.6
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (HeaderParticipantVersicherung)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d213340e366-false-d213570e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id"
         id="d213567e38-false-d213611e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d213567e40-false-d213621e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom"
         id="d213567e43-false-d213631e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr"
         id="d213567e45-false-d213641e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.7
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]"
         id="d213642e81-false-d213650e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.7']"
         id="d213642e93-false-d213683e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]"
         id="d213642e98-false-d213700e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]
Item: (HeaderParticipantBetreuorg)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]"
         id="d213642e110-false-d213725e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:id"
         id="d213722e38-false-d213766e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d213722e40-false-d213776e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d213722e43-false-d213786e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/hl7:addr"
         id="d213722e45-false-d213796e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]"
         id="d213797e68-false-d213805e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@typeCode) = ('CON')">(HeaderParticipantConsultant): Der Wert von typeCode MUSS 'CON' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.8']) &gt;= 1">(HeaderParticipantConsultant): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.1.8']) &lt;= 1">(HeaderParticipantConsultant): Element hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(HeaderParticipantConsultant): Element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &gt;= 1">(HeaderParticipantConsultant): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]) &lt;= 1">(HeaderParticipantConsultant): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.8']
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:templateId[@root = '1.2.40.0.34.11.1.1.8']"
         id="d213797e86-false-d213849e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantConsultant): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.1.8')">(HeaderParticipantConsultant): Der Wert von root MUSS '1.2.40.0.34.11.1.1.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d213797e91-false-d213866e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantConsultant): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderParticipantConsultant): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]"
         id="d213797e114-false-d213891e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@classCode) = ('PROV')">(HeaderParticipantConsultant): Der Wert von classCode MUSS 'PROV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantConsultant): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantConsultant): Element hl7:associatedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:associatedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantConsultant): Element hl7:associatedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(HeaderParticipantConsultant): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:addr"
         id="d213797e124-false-d213931e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantConsultant): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:telecom"
         id="d213797e136-false-d213941e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantConsultant): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]"
         id="d213797e158-false-d213954e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderParticipantConsultant): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantConsultant): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantConsultant): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantConsultant): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d213951e53-false-d213984e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.1.8
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization
Item: (HeaderParticipantConsultant)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization"
         id="d213797e177-false-d213997e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderParticipantConsultant): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderParticipantConsultant): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderParticipantConsultant): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderParticipantConsultant): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderParticipantConsultant): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:id"
         id="d213994e38-false-d214038e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d213994e40-false-d214048e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:telecom"
         id="d213994e43-false-d214058e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/hl7:addr"
         id="d213994e45-false-d214068e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]"
         id="d214069e35-false-d214079e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']"
         id="d214069e44-false-d214099e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]
Item: (HeaderInFulfillmentOf)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/hl7:id[not(@nullFlavor)]"
         id="d214069e58-false-d214123e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInFulfillmentOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]"
         id="d20e23966-false-d214134e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]"
         id="d20e23968-false-d214152e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:performer) = 0">(EntlassungsbriefPflege): Element hl7:performer DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]"
         id="d20e23970-false-d214184e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="@nullFlavor or (@code='GDLSTATAUF' and @codeSystem='1.2.40.0.34.5.21')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code 'GDLSTATAUF' codeSystem '1.2.40.0.34.5.21'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e23977-false-d214200e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e23979-false-d214227e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(*)">(EntlassungsbriefPflege): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e23981-false-d214240e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(*)">(EntlassungsbriefPflege): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:performer
Item: (EntlassungsbriefPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]"
         id="d214255e24-false-d214262e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]"
         id="d214255e39-false-d214282e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d214255e50-false-d214306e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRelatedDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]"
         id="d20e23990-false-d214326e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]"
         id="d20e23992-false-d214362e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefPflege): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefPflege): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:responsibleParty[hl7:assignedEntity]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:responsibleParty[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:location[not(@nullFlavor)][hl7:healthCareFacility]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:location[not(@nullFlavor)][hl7:healthCareFacility] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:id
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:id"
         id="d20e23994-false-d214422e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]"
         id="d20e23996-false-d214433e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="@nullFlavor or (@code='IMP' and @codeSystem='2.16.840.1.113883.5.4')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code 'IMP' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:originalText) &lt;= 1">(EntlassungsbriefPflege): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:originalText
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:originalText"
         id="d20e24000-false-d214455e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e24005-false-d214465e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e24007-false-d214492e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(*)">(EntlassungsbriefPflege): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]"
         id="d20e24009-false-d214505e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(*)">(EntlassungsbriefPflege): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]"
         id="d20e24012-false-d214525e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d20e24014-false-d214555e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefPflege): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:addr) &lt;= 1">(EntlassungsbriefPflege): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(EntlassungsbriefPflege): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d214592e22-false-d214600e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d214592e37-false-d214610e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d214592e53-false-d214620e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d214592e68-false-d214633e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d214630e53-false-d214663e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d214592e78-false-d214676e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d214673e38-false-d214717e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d214673e40-false-d214727e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d214673e43-false-d214737e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d214673e45-false-d214747e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]"
         id="d214748e18-false-d214758e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]"
         id="d214748e35-false-d214778e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]"
         id="d214748e57-false-d214798e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:id"
         id="d214748e78-false-d214838e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d214748e83-false-d214848e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d214748e87-false-d214858e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr
Item: (EncounterLocation2)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/hl7:addr"
         id="d214748e91-false-d214868e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EncounterLocation2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component"
         id="d20e24025-false-d215050e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])&gt;0 or not(hl7:nonXMLBody)">(EntlassungsbriefPflege): Element nonXMLBody nur bei EIS "Basic" zulässig.</assert>
      <let name="elmcount"
           value="count(hl7:nonXMLBody | hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']] | hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:nonXMLBody  oder  hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]  oder  hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]) enthält zu viele Elemente [max 1x]</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:nonXMLBody
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:nonXMLBody"
         id="d20e24036-false-d215076e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefPflege): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefPflege): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsbriefPflege): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsbriefPflege): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:nonXMLBody/hl7:text
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:nonXMLBody/hl7:text"
         id="d20e24045-false-d215100e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]"
         id="d20e24048-false-d215108e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefPflege): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefPflege): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]"
         id="d20e24057-false-d215149e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:section[not(@nullFlavor)][hl7:text]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:section[not(@nullFlavor)][hl7:text] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:section[not(@nullFlavor)][hl7:text]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:section[not(@nullFlavor)][hl7:text] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]"
         id="d20e24063-false-d215195e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefPflege): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:code) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:title) &lt;= 1">(EntlassungsbriefPflege): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsbriefPflege): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsbriefPflege): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:templateId
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:templateId"
         id="d215237e61-false-d215248e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:id
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:id"
         id="d215237e70-false-d215258e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:code
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:code"
         id="d215237e78-false-d215268e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:title
Item: (BodySection)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:title"
         id="d215237e86-false-d215278e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:text
Item: (BodySection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]
Item: (AuthorElements)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]"
         id="d215290e212-false-d215297e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:functionCode
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:functionCode"
         id="d215290e221-false-d215340e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:time
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:time"
         id="d215290e241-false-d215350e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]"
         id="d215290e285-false-d215368e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id"
         id="d215290e307-false-d215437e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d215290e344-false-d215450e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom"
         id="d215290e374-false-d215470e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson"
         id="d215290e388-false-d215483e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d215480e53-false-d215513e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d215290e402-false-d215523e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d215290e408-false-d215551e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d215290e419-false-d215561e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuthorElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d215290e432-false-d215574e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id"
         id="d215571e38-false-d215615e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d215571e40-false-d215625e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d215571e43-false-d215635e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d215571e45-false-d215645e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]"
         id="d215290e439-false-d215653e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:time[@nullFlavor = 'NA']"
         id="d215290e459-false-d215681e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]"
         id="d215290e464-false-d215692e0">
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
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']
Item: (AuthorElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/hl7:id[@nullFlavor = 'NA']"
         id="d215290e468-false-d215712e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(AuthorElements): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:entry
Item: (BodySection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]"
         id="d20e24070-false-d215729e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(EntlassungsbriefPflege): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(EntlassungsbriefPflege): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']  oder  hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsbriefPflege): Auswahl (hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16']  oder  hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16']
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]
Item: (EntlassungsbriefPflege)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(EntlassungsbriefPflege): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(EntlassungsbriefPflege): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
