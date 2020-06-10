<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.1.5
Name: IHE Laboratory Isolate Organizer
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000">
   <title>IHE Laboratory Isolate Organizer</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.5
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]
Item: (LaboratoryIsolateOrganizer)
-->

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.5
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]
Item: (LaboratoryIsolateOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]"
         id="d20e50615-false-d380263e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="string(@classCode) = ('CLUSTER')">(LaboratoryIsolateOrganizer): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="string(@moodCode) = ('EVN')">(LaboratoryIsolateOrganizer): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:statusCode[@code=&#34;completed&#34;] or hl7:statusCode[@code=&#34;active&#34;] or hl7:statusCode[@code=&#34;aborted&#34;]">(LaboratoryIsolateOrganizer):  Error: The organizer/statusCode/@code shall be "completed", "active" or "aborted" for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen">(LaboratoryIsolateOrganizer): Error: The organizer/specimen element shall be present for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen[@typeCode=&#34;SPC&#34;]">(LaboratoryIsolateOrganizer): Error: The specimen/@typeCode shall be "SPC" for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen/hl7:specimenRole[@classCode=&#34;SPEC&#34;]">(LaboratoryIsolateOrganizer): Error: The specimen/specimenRole/@classCode shall be "SPEC" for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen/hl7:specimenRole/hl7:specimenPlayingEntity">(LaboratoryIsolateOrganizer): Error: The specimen/specimenRole/specimenPlayingEntity shall be present Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen/hl7:specimenRole/hl7:specimenPlayingEntity[@classCode=&#34;MIC&#34;]">(LaboratoryIsolateOrganizer): Error: The specimen/specimenRole/specimenPlayingEntity/@classCode shall be "MIC" Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="hl7:specimen/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:code">(LaboratoryIsolateOrganizer): Error: The specimen/specimenRole/specimenPlayingEntity shall be present Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="not(hl7:performer) or hl7:performer[@typeCode=&#34;PRF&#34;]">(LaboratoryIsolateOrganizer): Error: The performer/@typeCode shall be "PRF" Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="not(hl7:author) or hl7:author[@typeCode=&#34;AUT&#34;]">(LaboratoryIsolateOrganizer): Error: The author/@typeCode shall be "AUT" for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="not(hl7:participant) or hl7:participant[@typeCode=&#34;AUTHEN&#34;] or hl7:participant[@typeCode=&#34;RESP&#34;] or hl7:participant[@typeCode=&#34;DEV&#34;]">(LaboratoryIsolateOrganizer):  Error: The participant/@typeCode for shall be "AUTHEN", "RESP" or "DEV" Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="not(hl7:component) or hl7:component[@typeCode=&#34;COMP&#34;]">(LaboratoryIsolateOrganizer): Error: The component/@typeCode for shall be "COMP" for Laboratory Isolate Organizer.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &gt;= 1">(LaboratoryIsolateOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &lt;= 1">(LaboratoryIsolateOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.5
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']
Item: (LaboratoryIsolateOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']"
         id="d20e50623-false-d380289e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryIsolateOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.1.5-2008-08-08T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.5')">(LaboratoryIsolateOrganizer): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
