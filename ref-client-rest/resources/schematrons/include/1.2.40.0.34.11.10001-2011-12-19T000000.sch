<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10001
Name: ELGA CDA Dokument Entlassung Ärztlich
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10001-2011-12-19T000000">
   <title>ELGA CDA Dokument Entlassung Ärztlich</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10001
Context: hl7:ClinicalDocument
Item: (CDAEntlassbriefAerztlich)
-->

   <rule context="hl7:ClinicalDocument" id="d20e7210-false-d62333e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(CDAEntlassbriefAerztlich): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAEntlassbriefAerztlich): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']) &gt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']) &lt;= 1">(CDAEntlassbriefAerztlich): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]"
         id="d62344e65-false-d62398e0">
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
         id="d62344e83-false-d62413e0">
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
         id="d62344e100-false-d62435e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1')">(FirstCDAHeaderElements): Der Wert von root MUSS '1.2.40.0.34.11.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10001
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.2']
Item: (CDAEntlassbriefAerztlich)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.2']"
         id="d20e7220-false-d62450e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEntlassbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2')">(CDAEntlassbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10001
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']
Item: (CDAEntlassbriefAerztlich)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.2.0.1|1.2.40.0.34.11.2.0.2|1.2.40.0.34.11.2.0.3']"
         id="d20e7229-false-d62465e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEntlassbriefAerztlich): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10001-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.2.0.2','1.2.40.0.34.11.2.0.3')">(CDAEntlassbriefAerztlich): Der Wert von root MUSS '1.2.40.0.34.11.2.0.1','1.2.40.0.34.11.2.0.2','1.2.40.0.34.11.2.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
