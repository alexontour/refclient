<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.4
Name: Patientenverfügung
Description: 
                 Diese Sektion enthält Hinweise auf Willenserklärungen des Patienten wie Patientenverfügung, Transplantationswiderspruch, Vorsorgevollmacht, sowie diejenigen juridischen Dokumente, welche als relevant erachtet werden. 
                 Die Aufstellung SOLL narrativ in tabellarischer Form erfolgen und die „Art des vorliegenden Dokuments“, sowie einen Hinweis enthalten, wo dieses aufliegt. 
                 Beispiel: „Patientenverfügung – wird von der Tochter aufbewahrt (Name, Adresse)“ 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.4-2011-12-19T000000">
   <title>Patientenverfügung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]
Item: (Patientenverfuegung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]"
         id="d20e4914-false-d37401e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.4']) &gt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.4']) &lt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34']) &gt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34']) &lt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']) &gt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']) &lt;= 1">(Patientenverfuegung): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] kommt zu häufig vor [max 1x].</assert>
      <report role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '42348-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt; 1">(Patientenverfuegung): Element hl7:code ist codiert mit Bindungsstärke 'extensible' und enthält ein Code außerhalb des angegebene Wertraums.</report>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '42348-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Patientenverfuegung): Element hl7:code[(@code = '42348-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Patientenverfuegung): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Patientenverfuegung): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Patientenverfuegung): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Patientenverfuegung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.4']
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.4']"
         id="d20e4921-false-d37462e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientenverfuegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.4')">(Patientenverfuegung): Der Wert von root MUSS '1.2.40.0.34.11.1.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34']
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34']"
         id="d20e4926-false-d37477e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientenverfuegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.34')">(Patientenverfuegung): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.34' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']"
         id="d20e4931-false-d37492e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientenverfuegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.1')">(Patientenverfuegung): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:code[(@code = '42348-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:code[(@code = '42348-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e4936-false-d37507e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientenverfuegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="@nullFlavor or (@code='42348-3' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Advance directives')">(Patientenverfuegung): Der Elementinhalt MUSS einer von 'code '42348-3' codeSystem '2.16.840.1.113883.6.1' displayName='Advance directives'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:title
Item: (Patientenverfuegung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:title"
         id="d20e4942-false-d37523e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientenverfuegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.4-2011-12-19T000000.html"
              test="text()='Patientenverfügungen und andere juridische Dokumente'">(Patientenverfuegung): Der Elementinhalt von 'hl7:title' MUSS ''Patientenverfügungen und andere juridische Dokumente'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/hl7:text
Item: (Patientenverfuegung)
-->
</pattern>
