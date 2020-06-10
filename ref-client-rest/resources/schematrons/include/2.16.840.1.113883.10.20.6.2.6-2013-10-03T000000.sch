<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.20.6.2.6
Name: Study Act
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000">
   <title>Study Act</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]
Item: (StudyAct)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]"
         id="d20e53322-false-d387539e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="string(@classCode) = ('ACT')">(StudyAct): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="string(@moodCode) = ('EVN')">(StudyAct): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']) &gt;= 1">(StudyAct): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']) &lt;= 1">(StudyAct): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:id[not(@extension)]) &gt;= 1">(StudyAct): Element hl7:id[not(@extension)] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:id[not(@extension)]) &lt;= 1">(StudyAct): Element hl7:id[not(@extension)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(StudyAct): Element hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(StudyAct): Element hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:text) &lt;= 1">(StudyAct): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(StudyAct): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="count(hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]) &gt;= 1">(StudyAct): Element hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']"
         id="d20e53330-false-d387597e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(StudyAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.2.6')">(StudyAct): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.2.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:id[not(@extension)]
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:id[not(@extension)]"
         id="d20e53338-false-d387611e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(StudyAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="@root">(StudyAct): Attribut @root MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="not(@extension)">(StudyAct): Attribut @extension DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')]"
         id="d20e53347-false-d387629e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(StudyAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="@nullFlavor or (@code='113014' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='DICOM Study' and @codeSystemName='DCM')">(StudyAct): Der Elementinhalt MUSS einer von 'code '113014' codeSystem '1.2.840.10008.2.16.4' displayName='DICOM Study' codeSystemName='DCM'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:text
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:text"
         id="d20e53354-false-d387645e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(StudyAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:effectiveTime
Item: (StudyAct)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:effectiveTime"
         id="d20e53359-false-d387655e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.6-2013-10-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(StudyAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.6
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]
Item: (StudyAct)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]
Item: (SeriesAct)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="string(@classCode) = ('ACT')">(SeriesAct): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="string(@moodCode) = ('EVN')">(SeriesAct): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:id[not(@extension)]) &gt;= 1">(SeriesAct): Element hl7:id[not(@extension)] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:id[not(@extension)]) &lt;= 1">(SeriesAct): Element hl7:id[not(@extension)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(SeriesAct): Element hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(SeriesAct): Element hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:text) &lt;= 1">(SeriesAct): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(SeriesAct): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]) &gt;= 1">(SeriesAct): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]] ist mandatory [min 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:id[not(@extension)]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:id[not(@extension)]">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="@root">(SeriesAct): Attribut @root MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(SeriesAct): Attribute @root MUSS vom Datentyp 'uid' sein  - '<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="not(@extension)">(SeriesAct): Attribut @extension DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(SeriesAct): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="@nullFlavor or (@code='113015' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='DICOM Series' and @codeSystemName='DCM')">(SeriesAct): Der Elementinhalt MUSS einer von 'code '113015' codeSystem '1.2.840.10008.2.16.4' displayName='DICOM Series' codeSystemName='DCM'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]) &gt;= 1">(SeriesAct): Element hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]) &lt;= 1">(SeriesAct): Element hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]">
      <extends rule="CR"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(SeriesAct): Element hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(SeriesAct): Element hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:value[@codeSystem = '1.2.840.10008.2.16.4']) &gt;= 1">(SeriesAct): Element hl7:value[@codeSystem = '1.2.840.10008.2.16.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="count(hl7:value[@codeSystem = '1.2.840.10008.2.16.4']) &lt;= 1">(SeriesAct): Element hl7:value[@codeSystem = '1.2.840.10008.2.16.4'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="@nullFlavor or (@code='121139' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='Modality' and @codeSystemName='DCM')">(SeriesAct): Der Elementinhalt MUSS einer von 'code '121139' codeSystem '1.2.840.10008.2.16.4' displayName='Modality' codeSystemName='DCM'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:value[@codeSystem = '1.2.840.10008.2.16.4']
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:value[@codeSystem = '1.2.840.10008.2.16.4']">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.840.10008.2.16.4')">(SeriesAct): Der Elementinhalt MUSS einer von 'codeSystem '1.2.840.10008.2.16.4'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:text
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:text">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:effectiveTime
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SeriesAct): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30031
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]
Item: (SeriesAct)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30031-2012-01-12T000000.html"
              test="string(@typeCode) = ('COMP')">(SeriesAct): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
