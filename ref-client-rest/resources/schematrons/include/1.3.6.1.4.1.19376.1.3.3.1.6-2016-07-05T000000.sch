<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Name: Ordering Provider
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000">
   <title>Ordering Provider</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]
Item: (IHEOrderingProvider)
-->

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]"
         id="d20e52115-false-d383298e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@typeCode) = ('REF')">(IHEOrderingProvider): Der Wert von typeCode MUSS 'REF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']) &gt;= 1">(IHEOrderingProvider): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']) &lt;= 1">(IHEOrderingProvider): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:associatedEntity) &gt;= 1">(IHEOrderingProvider): Element hl7:associatedEntity ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:associatedEntity) &lt;= 1">(IHEOrderingProvider): Element hl7:associatedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']"
         id="d20e52154-false-d383331e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IHEOrderingProvider): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.6')">(IHEOrderingProvider): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity"
         id="d20e52165-false-d383350e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:addr) &gt;= 1">(IHEOrderingProvider): Element hl7:addr ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:telecom) &gt;= 1">(IHEOrderingProvider): Element hl7:telecom ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:associatedPerson) &lt;= 1">(IHEOrderingProvider): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(IHEOrderingProvider): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:addr
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:addr"
         id="d20e52167-false-d383385e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IHEOrderingProvider): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:telecom
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:telecom"
         id="d20e52176-false-d383395e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IHEOrderingProvider): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:associatedPerson
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:associatedPerson"
         id="d20e52185-false-d383408e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(IHEOrderingProvider): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(IHEOrderingProvider): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(IHEOrderingProvider): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(IHEOrderingProvider): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d383405e53-false-d383438e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.1.6
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization
Item: (IHEOrderingProvider)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization"
         id="d20e52196-false-d383451e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(IHEOrderingProvider): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(IHEOrderingProvider): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(IHEOrderingProvider): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(IHEOrderingProvider): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.1.6-2016-07-05T000000.html"
              test="count(hl7:addr) &lt;= 1">(IHEOrderingProvider): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id"
         id="d383448e38-false-d383492e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d383448e40-false-d383502e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom"
         id="d383448e43-false-d383512e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.6']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr"
         id="d383448e45-false-d383522e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
