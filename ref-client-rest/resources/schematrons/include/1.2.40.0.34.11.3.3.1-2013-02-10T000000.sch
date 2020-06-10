<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.3.1
Name: Pflege- und Betreuungsdiagnose Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.3.1-2013-02-10T000000">
   <title>Pflege- und Betreuungsdiagnose Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]"
         id="d20e28109-false-d259382e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@classCode) = ('ACT')">(PflegeBetreuungsdiagnoseEntry): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@moodCode) = ('EVN')">(PflegeBetreuungsdiagnoseEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:statusCode[@code = 'active'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:statusCode[@code = 'active'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']"
         id="d20e28115-false-d259435e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.3.1')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.3.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']"
         id="d20e28120-false-d259450e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.5')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:statusCode[@code = 'active']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:statusCode[@code = 'active']"
         id="d20e28128-false-d259465e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="@nullFlavor or (@code='active')">(PflegeBetreuungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'code 'active'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]"
         id="d20e28135-false-d259482e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@typeCode) = ('SUBJ')">(PflegeBetreuungsdiagnoseEntry): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@inversionInd) = ('false')">(PflegeBetreuungsdiagnoseEntry): Der Wert von inversionInd MUSS 'false' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]"
         id="d20e28141-false-d259508e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:code[@code = '282291009']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:code[@code = '282291009'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:code[@code = '282291009']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:code[@code = '282291009'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']"
         id="d20e28143-false-d259543e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.6')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:code[@code = '282291009']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:code[@code = '282291009']"
         id="d20e28150-false-d259558e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="@nullFlavor or (@code='282291009' and @displayName='Diagnosis')">(PflegeBetreuungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'code '282291009' displayName='Diagnosis'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:value[not(@nullFlavor)]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']]/hl7:value[not(@nullFlavor)]"
         id="d20e28157-false-d259574e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
