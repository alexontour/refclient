<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.3.1
Name: BI-RADS® Klassifikation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.3.1-2014-03-24T000000">
   <title>BI-RADS® Klassifikation</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]
Item: (KlassifikationBIRADS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]"
         id="d20e42938-false-d342411e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="string(@classCode) = ('OBS')">(KlassifikationBIRADS): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="string(@moodCode) = ('EVN')">(KlassifikationBIRADS): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']) &gt;= 1">(KlassifikationBIRADS): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']) &lt;= 1">(KlassifikationBIRADS): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(KlassifikationBIRADS): Element hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(KlassifikationBIRADS): Element hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &gt;= 1">(KlassifikationBIRADS): Element hl7:text[not(@nullFlavor)][hl7:reference] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &lt;= 1">(KlassifikationBIRADS): Element hl7:text[not(@nullFlavor)][hl7:reference] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(KlassifikationBIRADS): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(KlassifikationBIRADS): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:value[@xsi:type='PQ'] | hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='INT'] | hl7:value[@xsi:type='IVL_INT'] | hl7:value[@xsi:type='BL'] | hl7:value[@xsi:type='ST'] | hl7:value[@xsi:type='CV'] | hl7:value[@xsi:type='TS'] | hl7:value[@xsi:type='RTO'] | hl7:value[@xsi:type='RTO_QTY_QTY'] | hl7:value[@xsi:type='RTO_PQ_PQ'] | hl7:value[@nullFlavor] | hl7:value[@xsi:type='CD'][not(@nullFlavor)])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="$elmcount &gt;= 1">(KlassifikationBIRADS): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']  oder  hl7:value[@nullFlavor]  oder  hl7:value[@xsi:type='CD'][not(@nullFlavor)]) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="$elmcount &lt;= 1">(KlassifikationBIRADS): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']  oder  hl7:value[@nullFlavor]  oder  hl7:value[@xsi:type='CD'][not(@nullFlavor)]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:value[@xsi:type='CD'][not(@nullFlavor)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:value[@xsi:type='CD'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:value[@xsi:type='CD'][not(@nullFlavor)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:value[@xsi:type='CD'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']"
         id="d20e42944-false-d342486e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.3.1')">(KlassifikationBIRADS): Der Wert von root MUSS '1.2.40.0.34.11.5.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e42949-false-d342501e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="@nullFlavor or (@code='36625-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Breast Mammogram' and @codeSystemName='LOINC')">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von 'code '36625-2' codeSystem '2.16.840.1.113883.6.1' displayName='Breast Mammogram' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]"
         id="d20e42954-false-d342517e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (KlassifikationBIRADS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:statusCode[@code = 'completed']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:statusCode[@code = 'completed']"
         id="d20e42966-false-d342545e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="@nullFlavor or (@code='completed')">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e42971-false-d342561e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(*)">(KlassifikationBIRADS): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='PQ']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='PQ']"
         id="d20e42984-false-d342572e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(KlassifikationBIRADS): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(KlassifikationBIRADS): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='IVL_PQ']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='IVL_PQ']"
         id="d20e42986-false-d342585e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(KlassifikationBIRADS): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(KlassifikationBIRADS): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(KlassifikationBIRADS): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='INT']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='INT']"
         id="d20e42988-false-d342600e0">
      <extends rule="INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(KlassifikationBIRADS): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='IVL_INT']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='IVL_INT']"
         id="d20e42990-false-d342611e0">
      <extends rule="IVL_INT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='BL']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='BL']"
         id="d20e42993-false-d342619e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='ST']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='ST']"
         id="d20e42995-false-d342627e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='CV']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='CV']"
         id="d20e42997-false-d342635e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='TS']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='TS']"
         id="d20e42999-false-d342643e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="not(*)">(KlassifikationBIRADS): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO']"
         id="d20e43001-false-d342654e0">
      <extends rule="RTO"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO_QTY_QTY']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO_QTY_QTY']"
         id="d20e43003-false-d342662e0">
      <extends rule="RTO_QTY_QTY"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_QTY_QTY' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_QTY_QTY" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO_PQ_PQ']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='RTO_PQ_PQ']"
         id="d20e43006-false-d342670e0">
      <extends rule="RTO_PQ_PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_PQ_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_PQ_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@nullFlavor]
Item: (KlassifikationBIRADS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='CD'][not(@nullFlavor)]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[@xsi:type='CD'][not(@nullFlavor)]"
         id="d20e43010-false-d342684e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2014-03-24T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.55 ELGA_MammogramAssessment (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
