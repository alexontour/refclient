<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.777.4.10.2
Name: Antikörper-Bestimmung Data Processing Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.777.4.10.2-2019-08-05T140437">
    <title>Antikörper-Bestimmung Data Processing Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]" id="d245561e8284-false-d474486e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.2.40.0.34.777.4.10.2']) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.2.40.0.34.777.4.10.2']) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.777.4.10.2']
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.777.4.10.2']" id="d245561e8309-false-d474740e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@root) = ('1.2.40.0.34.777.4.10.2')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von root MUSS '1.2.40.0.34.777.4.10.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']" id="d245561e8311-false-d474754e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@root) = ('1.2.40.0.34.6.0.11.3.15')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.15' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']" id="d245561e8315-false-d474768e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]" id="d245561e8319-false-d474999e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@classCode) = ('ACT')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@moodCode) = ('EVN')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]] | hl7:entryRelationship[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]] | hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="$elmcount &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Auswahl (hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]  oder  hl7:entryRelationship[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]  oder  hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]) &gt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="count(hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]) &lt;= 1">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Element hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d245561e8322-false-d475505e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@code) = ('26436-6')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von code MUSS '26436-6' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@codeSystem) = ('2.16.840.1.113883.6.1')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']" id="d245561e8330-false-d475527e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="@nullFlavor or (@code='completed')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@typeCode) = ('COMP')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@typeCode) = ('COMP')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@typeCode) = ('COMP')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.777.4.10.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]
Item: (atcdabbr_entry_AntikoerperBestimmungDataProcessing)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.777.4.10.2'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.777.4.10.2" test="string(@typeCode) = ('REFR')">(atcdabbr_entry_AntikoerperBestimmungDataProcessing): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>
</pattern>