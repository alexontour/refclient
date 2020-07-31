<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.14
Name: Participant Body - Transcriber
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.14-2019-04-03T161946">
    <title>Participant Body - Transcriber</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]" id="d245561e6078-false-d467779e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2']) or hl7:time">(atcdabbr_other_ParticipantBodyTranscriber): Das Element time MUSS strukturiert sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:time) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:time kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:participantRole[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:participantRole[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:participantRole[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:participantRole[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)]" id="d245561e6110-false-d467818e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@root) = ('1.2.40.0.34.6.0.11.9.14')">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von root MUSS '1.2.40.0.34.6.0.11.9.14' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:time
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:time" id="d245561e6114-false-d467831e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(*)">(atcdabbr_other_ParticipantBodyTranscriber): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]" id="d245561e6135-false-d467858e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@classCode) = ('ROL') or not(@classCode)">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von classCode MUSS 'ROL' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <let name="elmcount" value="count(hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="$elmcount &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Auswahl (hl7:id[not(@nullFlavor)]  oder  hl7:id[@nullFlavor='NI']  oder  hl7:id[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:id[@nullFlavor='NI']) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:id[@nullFlavor='NI'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:id[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:id[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:playingDevice | hl7:playingEntity)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="$elmcount &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Auswahl (hl7:playingDevice  oder  hl7:playingEntity) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="$elmcount &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Auswahl (hl7:playingDevice  oder  hl7:playingEntity) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:playingDevice) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:playingDevice kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:playingEntity) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:playingEntity kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d245561e6141-false-d467920e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @root MUSS vom Datentyp 'cs' sein  - '<value-of select="@root"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@extension) or string-length(@extension)&gt;0">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[@nullFlavor='NI']
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[@nullFlavor='NI']" id="d245561e6144-false-d467934e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@nullFlavor) = ('NI')">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von nullFlavor MUSS 'NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[@nullFlavor='UNK']
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:id[@nullFlavor='UNK']" id="d245561e6146-false-d467945e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_AddressCompilation): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="not(hl7:streetAddressLine and (hl7:streetName or hl7:houseNumber)) or ((hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)) and not((hl7:streetAddressLine and hl7:streetName and hl7:houseNumber) or (hl7:streetAddressLine and (hl7:streetName or hl7:houseNumber))))">(atcdabbr_other_AddressCompilation): Es muss entweder streetAddressLine oder streetName UND houseNumber angegeben werden.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetAddressLine) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetName) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:houseNumber) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:state) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:state kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:additionalLocator) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]" id="d245561e6152-false-d468100e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="@value">(atcdabbr_other_ParticipantBodyTranscriber): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@classCode) = ('DEV') or not(@classCode)">(atcdabbr_other_DeviceCompilation): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_DeviceCompilation): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice/hl7:manufacturerModelName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice/hl7:manufacturerModelName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice/hl7:softwareName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice/hl7:softwareName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity" id="d245561e6164-false-d468185e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@classCode) = ('ENT') or not(@classCode)">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von classCode MUSS 'ENT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_ParticipantBodyTranscriber): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]" id="d245561e6167-false-d468208e0">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_ParticipantBodyTranscriber): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:prefix" id="d245561e6182-false-d468240e0">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@qualifier) or (string-length(@qualifier) &gt; 0 and not(matches(@qualifier,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @qualifier MUSS vom Datentyp 'cs' sein  - '<value-of select="@qualifier"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]" id="d245561e6193-false-d468253e0">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@qualifier) or (string-length(@qualifier) &gt; 0 and not(matches(@qualifier,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @qualifier MUSS vom Datentyp 'cs' sein  - '<value-of select="@qualifier"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]" id="d245561e6202-false-d468266e0">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@qualifier) or (string-length(@qualifier) &gt; 0 and not(matches(@qualifier,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @qualifier MUSS vom Datentyp 'cs' sein  - '<value-of select="@qualifier"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.14
Context: *[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_ParticipantBodyTranscriber)
-->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/hl7:suffix" id="d245561e6211-false-d468279e0">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_ParticipantBodyTranscriber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(@qualifier) or (string-length(@qualifier) &gt; 0 and not(matches(@qualifier,'\s')))">(atcdabbr_other_ParticipantBodyTranscriber): Attribute @qualifier MUSS vom Datentyp 'cs' sein  - '<value-of select="@qualifier"/>'</assert>
    </rule>
</pattern>