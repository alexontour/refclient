<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.3.2
Name: Kodierung des Befundtextes
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.3.2-2014-03-24T000000">
   <title>Kodierung des Befundtextes</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]
Item: (BefundtextKodierung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]"
         id="d20e43084-false-d342920e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="string(@classCode) = ('OBS')">(BefundtextKodierung): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="string(@moodCode) = ('EVN')">(BefundtextKodierung): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.2']) &gt;= 1">(BefundtextKodierung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.2']) &lt;= 1">(BefundtextKodierung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']) &gt;= 1">(BefundtextKodierung): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']) &lt;= 1">(BefundtextKodierung): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(BefundtextKodierung): Element hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(BefundtextKodierung): Element hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:value[@xsi:type='PQ'] | hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='INT'] | hl7:value[@xsi:type='IVL_INT'] | hl7:value[@xsi:type='BL'] | hl7:value[@xsi:type='ST'] | hl7:value[@xsi:type='CV'] | hl7:value[@xsi:type='TS'] | hl7:value[@xsi:type='RTO'] | hl7:value[@xsi:type='RTO_QTY_QTY'] | hl7:value[@xsi:type='RTO_PQ_PQ'] | hl7:value[@nullFlavor] | hl7:value[@xsi:type='CD'] | hl7:value[@xsi:type='ED'][not(@nullFlavor)])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="$elmcount &gt;= 1">(BefundtextKodierung): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']  oder  hl7:value[@nullFlavor]  oder  hl7:value[@xsi:type='CD']  oder  hl7:value[@xsi:type='ED'][not(@nullFlavor)]) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="$elmcount &lt;= 1">(BefundtextKodierung): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']  oder  hl7:value[@nullFlavor]  oder  hl7:value[@xsi:type='CD']  oder  hl7:value[@xsi:type='ED'][not(@nullFlavor)]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:value[@xsi:type='ED'][not(@nullFlavor)]) &gt;= 1">(BefundtextKodierung): Element hl7:value[@xsi:type='ED'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:value[@xsi:type='ED'][not(@nullFlavor)]) &lt;= 1">(BefundtextKodierung): Element hl7:value[@xsi:type='ED'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.2']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.2']"
         id="d20e43090-false-d342979e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.3.2')">(BefundtextKodierung): Der Wert von root MUSS '1.2.40.0.34.11.5.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']"
         id="d20e43095-false-d342994e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.2.12')">(BefundtextKodierung): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.2.12' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]"
         id="d20e43100-false-d343009e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="@nullFlavor or (@code='121071' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='Finding' and @codeSystemName='DCM')">(BefundtextKodierung): Der Elementinhalt MUSS einer von 'code '121071' codeSystem '1.2.840.10008.2.16.4' displayName='Finding' codeSystemName='DCM'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='PQ']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='PQ']"
         id="d20e43111-false-d343023e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BefundtextKodierung): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BefundtextKodierung): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='IVL_PQ']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='IVL_PQ']"
         id="d20e43113-false-d343036e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BefundtextKodierung): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BefundtextKodierung): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BefundtextKodierung): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='INT']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='INT']"
         id="d20e43115-false-d343051e0">
      <extends rule="INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(BefundtextKodierung): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='IVL_INT']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='IVL_INT']"
         id="d20e43117-false-d343062e0">
      <extends rule="IVL_INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='BL']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='BL']"
         id="d20e43120-false-d343070e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ST']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ST']"
         id="d20e43122-false-d343078e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='CV']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='CV']"
         id="d20e43124-false-d343086e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='TS']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='TS']"
         id="d20e43126-false-d343094e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="not(*)">(BefundtextKodierung): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO']"
         id="d20e43128-false-d343105e0">
      <extends rule="RTO"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO_QTY_QTY']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO_QTY_QTY']"
         id="d20e43130-false-d343113e0">
      <extends rule="RTO_QTY_QTY"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_QTY_QTY' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_QTY_QTY" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO_PQ_PQ']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='RTO_PQ_PQ']"
         id="d20e43133-false-d343121e0">
      <extends rule="RTO_PQ_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_PQ_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_PQ_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@nullFlavor]
Item: (BefundtextKodierung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='CD']
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='CD']"
         id="d20e43137-false-d343135e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ED'][not(@nullFlavor)]
Item: (BefundtextKodierung)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ED'][not(@nullFlavor)]"
         id="d20e43139-false-d343143e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(BefundtextKodierung): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.2-2014-03-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(BefundtextKodierung): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.2
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ED'][not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (BefundtextKodierung)
-->
</pattern>
