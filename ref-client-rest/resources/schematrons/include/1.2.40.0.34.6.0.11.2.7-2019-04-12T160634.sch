<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.7
Name: Antikörper-Bestimmung - kodiert
Description: Ergebnisse von Antikörper-Untersuchungen, Antikörper Bestimmungen für Virushepatitis A und B, Röteln und Varizellen etc. ("Impftiter"). Ein Impftiter soll vor allem dann eingetragen werden, wenn er eine Auswirkung auf die zukünftigen Impftermine hat. Es wird empfohlen, zusätzlich eine ärztliche individuelle Impfempfehlung abzugeben. 
        
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.7-2019-04-12T160634">
    <title>Antikörper-Bestimmung - kodiert</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]" id="d133e4098-false-d102586e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@classCode) = ('DOCSECT') or not(@classCode)">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@moodCode) = ('EVN') or not(@moodCode)">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7']) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7']) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:text) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:text ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:text) &lt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="count(hl7:entry[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']]) &gt;= 1">(eimpf_section_AntikoerperBestimmungKodiert): Element hl7:entry[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']] ist mandatory [min 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7']
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7']" id="d133e4104-false-d102738e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@root) = ('1.2.40.0.34.6.0.11.2.7')">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von root MUSS '1.2.40.0.34.6.0.11.2.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']" id="d133e4112-false-d102752e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.2.1')">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:id[not(@nullFlavor)]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:id[not(@nullFlavor)]" id="d133e4120-false-d102763e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:code[(@code = '26436-6' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d133e4127-false-d102773e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@code) = ('26436-6')">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von code MUSS '26436-6' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@codeSystem) = ('2.16.840.1.113883.6.1')">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(eimpf_section_AntikoerperBestimmungKodiert): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:title[not(@nullFlavor)]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:title[not(@nullFlavor)]" id="d133e4141-false-d102794e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="text()='Laboruntersuchungen'">(eimpf_section_AntikoerperBestimmungKodiert): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Laboruntersuchungen'' sein. Gefunden: "<value-of select="."/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:text
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:text" id="d133e4150-false-d102807e0">
        <extends rule="SD.TEXT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_AntikoerperBestimmungKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.15']]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@typeCode) = ('DRIV')">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]
Item: (eimpf_section_AntikoerperBestimmungKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.7" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_section_AntikoerperBestimmungKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>