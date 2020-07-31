<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.1.1
Name: Notification Organizer
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.3.6.1.4.1.19376.1.3.1.1-2013-09-09T000000">
    <title>Notification Organizer</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]
Item: (NotificationOrganizer)
-->

<!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]
Item: (NotificationOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]" id="d245561e8395-false-d489443e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="string(@classCode) = ('CLUSTER')">(NotificationOrganizer): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="string(@moodCode) = ('EVN')">(NotificationOrganizer): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']) &gt;= 1">(NotificationOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']) &lt;= 1">(NotificationOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(NotificationOrganizer): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(NotificationOrganizer): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]) &lt;= 1">(NotificationOrganizer): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']
Item: (NotificationOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']" id="d245561e8398-false-d489485e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotificationOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.1')">(NotificationOrganizer): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:statusCode[@code = 'completed']
Item: (NotificationOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:statusCode[@code = 'completed']" id="d245561e8400-false-d489499e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotificationOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="@nullFlavor or (@code='completed')">(NotificationOrganizer): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]
Item: (NotificationOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1" test="string(@typeCode) = ('COMP')">(NotificationOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>
</pattern>