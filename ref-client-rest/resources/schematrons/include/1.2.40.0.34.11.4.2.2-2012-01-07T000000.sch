<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.2.2
Name: Bereichsübergreifende Befundbewertung (Laboratory Report Comment Section)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4.2.2-2012-01-07T000000">
   <title>Bereichsübergreifende Befundbewertung (Laboratory Report Comment Section)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]
Item: (LaboratoryReportCommentSection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]
Item: (LaboratoryReportCommentSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]"
         id="d20e38001-false-d298934e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="string(@classCode) = ('DOCSECT')">(LaboratoryReportCommentSection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']) &gt;= 1">(LaboratoryReportCommentSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']) &lt;= 1">(LaboratoryReportCommentSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')]) &gt;= 1">(LaboratoryReportCommentSection): Element hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')]) &lt;= 1">(LaboratoryReportCommentSection): Element hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(LaboratoryReportCommentSection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(LaboratoryReportCommentSection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(LaboratoryReportCommentSection): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(LaboratoryReportCommentSection): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]) &gt;= 1">(LaboratoryReportCommentSection): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]) &lt;= 1">(LaboratoryReportCommentSection): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']
Item: (LaboratoryReportCommentSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']"
         id="d20e38007-false-d298993e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryReportCommentSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.2.2')">(LaboratoryReportCommentSection): Der Wert von root MUSS '1.2.40.0.34.11.4.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')]
Item: (LaboratoryReportCommentSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:code[(@code = '20' and @codeSystem = '1.2.40.0.34.5.47')]"
         id="d20e38014-false-d299008e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryReportCommentSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="@nullFlavor or (@code='20' and @codeSystem='1.2.40.0.34.5.47' and @displayName='Befundbewertung' and @codeSystemName='ELGA_Laborstruktur')">(LaboratoryReportCommentSection): Der Elementinhalt MUSS einer von 'code '20' codeSystem '1.2.40.0.34.5.47' displayName='Befundbewertung' codeSystemName='ELGA_Laborstruktur'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:title[not(@nullFlavor)]
Item: (LaboratoryReportCommentSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e38022-false-d299024e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryReportCommentSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="text()='Befundbewertung'">(LaboratoryReportCommentSection): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Befundbewertung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:text[not(@nullFlavor)]
Item: (LaboratoryReportCommentSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e38030-false-d299038e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.2-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryReportCommentSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (LaboratoryReportCommentSection)
--></pattern>
