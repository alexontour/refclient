<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10003
Name: ELGA CDA Dokument Laborbefund
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10003-2012-01-07T000000">
   <title>ELGA CDA Dokument Laborbefund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10003
Context: hl7:ClinicalDocument
Item: (CDALaborbefund)
-->

   <rule context="hl7:ClinicalDocument" id="d20e7338-false-d89941e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(CDALaborbefund): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDALaborbefund): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(CDALaborbefund): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(CDALaborbefund): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(CDALaborbefund): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(CDALaborbefund): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &gt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &lt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4']) &gt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3']) &gt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']) &gt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']) &lt;= 1">(CDALaborbefund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]"
         id="d89952e65-false-d90011e0">
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
Context: hl7:ClinicalDocument/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d89952e83-false-d90026e0">
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
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.1']
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.1']"
         id="d89952e100-false-d90048e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1')">(FirstCDAHeaderElements): Der Wert von root MUSS '1.2.40.0.34.11.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10003
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.4']
Item: (CDALaborbefund)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.4']"
         id="d20e7348-false-d90063e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDALaborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4')">(CDALaborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10003
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3']
Item: (CDALaborbefund)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3']"
         id="d20e7357-false-d90078e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDALaborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3')">(CDALaborbefund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10003
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']
Item: (CDALaborbefund)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.4.0.1|1.2.40.0.34.11.4.0.2|1.2.40.0.34.11.4.0.3']"
         id="d20e7365-false-d90093e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDALaborbefund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10003-2012-01-07T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.0.1','1.2.40.0.34.11.4.0.2','1.2.40.0.34.11.4.0.3')">(CDALaborbefund): Der Wert von root MUSS '1.2.40.0.34.11.4.0.1','1.2.40.0.34.11.4.0.2','1.2.40.0.34.11.4.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
