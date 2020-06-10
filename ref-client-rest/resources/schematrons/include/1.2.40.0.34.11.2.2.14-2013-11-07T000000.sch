<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.14
Name: Erhobene Befunde
Description: Ein  
                     Befund  
                 ist die Dokumentation einer diagnostischen Maßnahme oder einer Konsultation. Als „Befund“ gelten nicht nur typische diagnostische Befunde (Laborbefunde, Radiologiebefunde, …), sondern jegliche Dokumentationen von diagnostischen Maßnahmen oder Konsultationen (OP-Berichte, etc).  Diese Sektion enthält selbst keine Daten, sondern beinhaltet Untersektionen zur Aufnahme der eigentlichen Befund-Informationen.  Es MUSS mindestens eine Untersektion angegeben sein.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.14-2013-11-07T000000">
   <title>Erhobene Befunde</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]
Item: (Befunde)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]"
         id="d20e11137-false-d189356e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.14']) &gt;= 1">(Befunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.14']) &lt;= 1">(Befunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']) &gt;= 1">(Befunde): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']) &lt;= 1">(Befunde): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Befunde): Element hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Befunde): Element hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Befunde): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Befunde): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Befunde): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Befunde): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="$elmcount &gt;= 1">(Befunde): Auswahl (hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]]  oder  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]  oder  hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']  oder  hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]) &lt;= 1">(Befunde): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]) &lt;= 1">(Befunde): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]]) &lt;= 1">(Befunde): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]) &lt;= 1">(Befunde): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']) &lt;= 1">(Befunde): Element hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="count(hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']) &lt;= 1">(Befunde): Element hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.14']
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.14']"
         id="d20e11139-false-d189486e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.14')">(Befunde): Der Wert von root MUSS '1.2.40.0.34.11.2.2.14' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']"
         id="d20e11144-false-d189501e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.29')">(Befunde): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.29' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:code[(@code = '11493-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e11149-false-d189516e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="@nullFlavor or (@code='11493-4' and @codeSystem='2.16.840.1.113883.6.1')">(Befunde): Der Elementinhalt MUSS einer von 'code '11493-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:title[not(@nullFlavor)]
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:title[not(@nullFlavor)]"
         id="d20e11154-false-d189532e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="text()='Erhobene Befunde'">(Befunde): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Erhobene Befunde'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:text[not(@nullFlavor)]
Item: (Befunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:text[not(@nullFlavor)]"
         id="d20e11160-false-d189546e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]]
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.23']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.17']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.14
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']
Item: (Befunde)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.14'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.29']]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Befunde): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.14-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Befunde): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
