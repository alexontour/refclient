<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10009
Name: ELGA CDA Dokument Pflegesituationsberichts
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10009-2015-09-26T000000">
   <title>ELGA CDA Dokument Pflegesituationsberichts</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10009
Context: /
Item: (Pflegesituationsberichtdocument)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.10009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]
Item: (Pflegesituationsberichtdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]"
         id="d20e7642-false-d127314e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(Pflegesituationsberichtdocument): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(Pflegesituationsberichtdocument): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="matches(//processing-instruction('xml-stylesheet'), '[^\w]ELGA_Stylesheet_v1.0.xsl[^\w]')">(Pflegesituationsberichtdocument): (xml-processing-instr): Es muss ein xml-stylesheet-Prologattribut anwesend sein mit dem Wert für @href=ELGA_Stylesheet_v1.0.xsl .</assert>
      <let name="tmp1" value="'1.2.40.0.34.11.12.0.1'"/>
      <let name="tmp3" value="'1.2.40.0.34.11.12.0.3'"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12']) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.12'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.12'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:templateId[@root = '1.2.40.0.34.11.12.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.12.0.2'] | hl7:templateId[@root = '1.2.40.0.34.11.12.0.3'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="$elmcount &gt;= 1">(Pflegesituationsberichtdocument): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.12.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.12.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.12.0.3']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="$elmcount &lt;= 1">(Pflegesituationsberichtdocument): Auswahl (hl7:templateId[@root = '1.2.40.0.34.11.12.0.1']  oder  hl7:templateId[@root = '1.2.40.0.34.11.12.0.2']  oder  hl7:templateId[@root = '1.2.40.0.34.11.12.0.3']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12.0.1']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.12.0.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12.0.2']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.12.0.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12.0.3']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:templateId[@root = '1.2.40.0.34.11.12.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:dataEnterer[hl7:assignedEntity]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:dataEnterer[hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:authorization) = 0">(Pflegesituationsberichtdocument): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Pflegesituationsberichtdocument): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(Pflegesituationsberichtdocument): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <let name="ciaddrs1"
           value="//hl7:addr[not(@nullFlavor or ancestor::hl7:birthplace or (hl7:streetAddressLine[not(@nullFlavor)] or (hl7:streetName and hl7:houseNumber)) and hl7:postalCode[not(@nullFlavor)] and hl7:city[not(@nullFlavor)] and hl7:country[not(@nullFlavor)])]"/>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="not(//hl7:templateId[@root=$tmp1] or count($ciaddrs1)=0)">(Pflegesituationsberichtdocument): (addr particle): Bei EIS Enhanced und EIS Full Support MUSS die Granularitätsstufe 2 oder 3 angegeben werden (<value-of select="count($ciaddrs1)"/>x addr ohne postalCode, country, country entdeckt)</report>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:realmCode[not(@nullFlavor)]
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:realmCode[not(@nullFlavor)]"
         id="d127325e155-false-d127814e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d127325e173-false-d127829e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:templateId[@root = '1.2.40.0.34.11.1']
Item: (FirstCDAHeaderElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:templateId[@root = '1.2.40.0.34.11.1']"
         id="d127325e190-false-d127851e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1')">(FirstCDAHeaderElements): Der Wert von root MUSS '1.2.40.0.34.11.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
