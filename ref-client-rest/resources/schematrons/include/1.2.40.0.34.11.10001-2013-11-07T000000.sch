<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10001
Name: ELGA CDA Dokument Entlassung Ärztlich
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10001-2013-11-07T000000">
   <title>ELGA CDA Dokument Entlassung Ärztlich</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10001
Context: /
Item: (CDAEntlassbriefAerztlich)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.10001
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]
Item: (CDAEntlassbriefAerztlich)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]"
         id="d20e7177-false-d42027e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(CDAEntlassbriefAerztlich): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAEntlassbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="matches(//processing-instruction('xml-stylesheet'), '[^\w]ELGA_Stylesheet_v1.0.xsl[^\w]')">(CDAEntlassbriefAerztlich): (xml-processing-instr): Es muss ein xml-stylesheet-Prologattribut anwesend sein mit dem Wert für @href=ELGA_Stylesheet_v1.0.xsl .</assert>
      <let name="tmp1" value="'1.2.40.0.34.11.2.0.1'"/>
      <let name="tmp2" value="'1.2.40.0.34.11.2.0.2'"/>
      <let name="tmp3" value="'1.2.40.0.34.11.2.0.3'"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root='1.2.40.0.34.11.2.0.1'] | hl7:templateId[@root='1.2.40.0.34.11.2.0.2'] | hl7:templateId[@root='1.2.40.0.34.11.2.0.3'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="$elmcount &gt;= 1">(CDAEntlassbriefAerztlich): Auswahl (hl7:templateId[@root='1.2.40.0.34.11.2.0.1']  oder  hl7:templateId[@root='1.2.40.0.34.11.2.0.2']  oder  hl7:templateId[@root='1.2.40.0.34.11.2.0.3']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="$elmcount &lt;= 1">(CDAEntlassbriefAerztlich): Auswahl (hl7:templateId[@root='1.2.40.0.34.11.2.0.1']  oder  hl7:templateId[@root='1.2.40.0.34.11.2.0.2']  oder  hl7:templateId[@root='1.2.40.0.34.11.2.0.3']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root='1.2.40.0.34.11.2.0.1']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root='1.2.40.0.34.11.2.0.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root='1.2.40.0.34.11.2.0.2']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root='1.2.40.0.34.11.2.0.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:templateId[@root='1.2.40.0.34.11.2.0.3']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root='1.2.40.0.34.11.2.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:code[(@code = '11490-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:authorization) = 0">(CDAEntlassbriefAerztlich): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] kommt zu häufig vor [max 1x].</assert>
      <let name="ciaddrs1"
           value="//hl7:addr[not(@nullFlavor or ancestor::hl7:birthplace or (hl7:streetAddressLine[not(@nullFlavor)] or (hl7:streetName and hl7:houseNumber)) and hl7:postalCode[not(@nullFlavor)] and hl7:city[not(@nullFlavor)] and hl7:country[not(@nullFlavor)])]"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or count($ciaddrs1)=0)">(CDAEntlassbriefAerztlich): (addr particle): Bei EIS Enhanced und EIS Full Support MUSS die Granularitätsstufe 2 oder 3 angegeben werden (<value-of select="count($ciaddrs1)"/>x addr ohne postalCode, country, country entdeckt)</report>
      <let name="cinames1"
           value="hl7:participant[hl7:templateId/@root='1.2.40.0.34.11.1.1.1']/hl7:associatedEntity/hl7:associatedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames1) or $cinames1/hl7:name[@nullFlavor] or $cinames1/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Template 1.2.40.0.34.11.1.1.1 bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames2"
           value="hl7:participant[hl7:templateId/@root='1.2.40.0.34.11.1.1.3']/hl7:associatedEntity/hl7:associatedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames2) or $cinames2/hl7:name[@nullFlavor] or $cinames2/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Template 1.2.40.0.34.11.1.1.3 bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames3"
           value="hl7:participant[hl7:templateId/@root='1.2.40.0.34.11.1.1.4']/hl7:associatedEntity/hl7:associatedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames3) or $cinames3/hl7:name[@nullFlavor] or $cinames3/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Template 1.2.40.0.34.11.1.1.4 bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames4"
           value="hl7:participant[hl7:templateId/@root='1.2.40.0.34.11.1.1.5']/hl7:associatedEntity/hl7:associatedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames4) or $cinames4/hl7:name[@nullFlavor] or $cinames4/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Template 1.2.40.0.34.11.1.1.5 bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames5"
           value="hl7:participant[hl7:templateId/@root='1.2.40.0.34.11.1.1.7']/hl7:associatedEntity/hl7:associatedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames5) or $cinames5/hl7:name[@nullFlavor] or $cinames5/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Template 1.2.40.0.34.11.1.1.7 bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames6"
           value="hl7:legalAuthenticator/hl7:assignedEntity/hl7:assignedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames6) or $cinames6/hl7:name[@nullFlavor] or $cinames6/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Header legalAuthenticator bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
      <let name="cinames7"
           value="hl7:authenticator/hl7:assignedEntity/hl7:assignedPerson"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2013-11-07T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or empty($cinames7) or $cinames7/hl7:name[@nullFlavor] or $cinames7/hl7:name[hl7:given[not(@nullFlavor)] and hl7:family[not(@nullFlavor)]])">(CDAEntlassbriefAerztlich): (name particle): Header authenticator bei Granularitätsstufe 2 sind in associatedEntity/associatedPerson name family und given verpflichtend anzugeben</report>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:realmCode[not(@nullFlavor)]
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:realmCode[not(@nullFlavor)]"
         id="d42038e178-false-d42623e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="@code">(FirstCDAHeaderElements): Attribut @code MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d42038e196-false-d42638e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.1.3')">(FirstCDAHeaderElements): Der Wert von root MUSS '2.16.840.1.113883.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@extension) = ('POCD_HD000040')">(FirstCDAHeaderElements): Der Wert von extension MUSS 'POCD_HD000040' sein. Gefunden: "<value-of select="@extension"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(FirstCDAHeaderElements): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1']
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1']"
         id="d42038e213-false-d42660e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1')">(FirstCDAHeaderElements): Der Wert von root MUSS '1.2.40.0.34.11.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
