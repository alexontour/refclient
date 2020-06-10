<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <title>Schematron file for transaction ELGA CDA Dokument Befund Bildgebende Diagnostik (1.2.40.0.34.77.4.40 2011-08-31T00:00:00)</title>
   <ns uri="urn:hl7-org:v3" prefix="hl7"/>
   <ns uri="urn:hl7-org:v3" prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
   <!-- Add extra namespaces -->
   <ns uri="urn:ihe:pharm:medication" prefix="pharm"/>
   <ns uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
   <!-- Include realm specific schematron -->
   <include href="include/check-CDA-tables.AT.sch"/>
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.CA.sch"/>
      <include href="include/DTr1_AD.CA.BASIC.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_AD.IPS.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_BXIT_IVL_PQ.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CD.IPS.sch"/>
      <include href="include/DTr1_CD.SDTC.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CE.IPS.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_CV.IPS.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_hl7nl-INT.sch"/>
      <include href="include/DTr1_hl7nl-IVL_QTY.sch"/>
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
      <include href="include/DTr1_hl7nl-QSET_QTY.sch"/>
      <include href="include/DTr1_hl7nl-RTO.sch"/>
      <include href="include/DTr1_hl7nl-TS.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.NL.BIG.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.CH.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_IVL_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_PN.CA.sch"/>
      <include href="include/DTr1_PN.NL.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.CA.EMAIL.sch"/>
      <include href="include/DTr1_TEL.CA.PHONE.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.IPS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_TS.AT.TZ.sch"/>
      <include href="include/DTr1_TS.CH.TZ.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIMETZ.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>

   <!-- Include the project schematrons related to scenario cdabgd -->

   <!-- CDABildiag -->
   <pattern>
      <title>ELGA CDA Dokument Befund Bildgebende Diagnostik</title>
      <rule context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]"
                 see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10004-2013-10-16T000000.html">(CDABildiag): Instance is expected to have the following element: descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]</assert>
      </rule>
   </pattern>
   <include href="include/1.2.40.0.34.11.10004-2013-10-16T000000.sch"/>
   <include href="include/1.2.40.0.34.11.10004-2013-10-16T000000-closed.sch"/>


   <!-- Create phases for more targeted validation on large instances -->
   <phase id="AllExceptClosed">
      <active pattern="template-1.2.40.0.34.11.10004-2013-10-16T000000"/>
      <active pattern="template-1.2.40.0.34.11.1.2.1-2011-12-19T000000"/>
      <active pattern="template-1.2.40.0.34.11.1.2.2-2012-07-14T000000"/>
      <active pattern="template-1.2.40.0.34.11.1.3.1-2017-05-05T000000"/>
      <active pattern="template-1.2.40.0.34.11.1.3.2-2011-12-19T000000"/>
      <active pattern="template-1.2.40.0.34.11.5-2015-09-24T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.1-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.10-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.11-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.12-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.13-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.14-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.2-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.3-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.4-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.5-2019-07-30T142246"/>
      <active pattern="template-1.2.40.0.34.11.5.2.6-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.7-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.8-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.2.9-2012-01-12T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.3.1-2014-03-24T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.3.2-2014-03-24T000000"/>
      <active pattern="template-1.2.40.0.34.11.5.3.3-2015-09-24T000000"/>
      <active pattern="template-2.16.840.1.113883.10.20.6.1.1-2014-03-24T000000"/>
      <active pattern="template-2.16.840.1.113883.10.20.6.2.6-2014-03-24T000000"/>
      <active pattern="template-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000"/>
   </phase>
   <phase id="CDABildiag">
      <active pattern="template-1.2.40.0.34.11.10004-2013-10-16T000000"/>
   </phase>
   <phase id="CDABildiag-closed">
      <active pattern="template-1.2.40.0.34.11.10004-2013-10-16T000000-closed"/>
   </phase>
   <phase id="Brieftext">
      <active pattern="template-1.2.40.0.34.11.1.2.1-2011-12-19T000000"/>
   </phase>
   <phase id="AbschliessendeBemerkung">
      <active pattern="template-1.2.40.0.34.11.1.2.2-2012-07-14T000000"/>
   </phase>
   <phase id="EingebettetesObjektEntry-20170505T000000">
      <active pattern="template-1.2.40.0.34.11.1.3.1-2017-05-05T000000"/>
   </phase>
   <phase id="LogoEntry">
      <active pattern="template-1.2.40.0.34.11.1.3.2-2011-12-19T000000"/>
   </phase>
   <phase id="BefundBildgebendeDiagnostik-20150924T000000">
      <active pattern="template-1.2.40.0.34.11.5-2015-09-24T000000"/>
   </phase>
   <phase id="Anforderung">
      <active pattern="template-1.2.40.0.34.11.5.2.1-2012-01-12T000000"/>
   </phase>
   <phase id="ZusammenfassungErgebnis">
      <active pattern="template-1.2.40.0.34.11.5.2.10-2012-01-12T000000"/>
   </phase>
   <phase id="Verdachtsdiagnose">
      <active pattern="template-1.2.40.0.34.11.5.2.11-2012-01-12T000000"/>
   </phase>
   <phase id="Schlussfolgerung">
      <active pattern="template-1.2.40.0.34.11.5.2.12-2012-01-12T000000"/>
   </phase>
   <phase id="Empfehlung">
      <active pattern="template-1.2.40.0.34.11.5.2.13-2012-01-12T000000"/>
   </phase>
   <phase id="Addendum">
      <active pattern="template-1.2.40.0.34.11.5.2.14-2012-01-12T000000"/>
   </phase>
   <phase id="AnamneseBildgebendeDiagnostik">
      <active pattern="template-1.2.40.0.34.11.5.2.2-2012-01-12T000000"/>
   </phase>
   <phase id="Indikation">
      <active pattern="template-1.2.40.0.34.11.5.2.3-2012-01-12T000000"/>
   </phase>
   <phase id="PatientenStatusAngaben">
      <active pattern="template-1.2.40.0.34.11.5.2.4-2012-01-12T000000"/>
   </phase>
   <phase id="AktuelleUntersuchung-20190730T142246">
      <active pattern="template-1.2.40.0.34.11.5.2.5-2019-07-30T142246"/>
   </phase>
   <phase id="FruehereUntersuchungen">
      <active pattern="template-1.2.40.0.34.11.5.2.6-2012-01-12T000000"/>
   </phase>
   <phase id="FruehereBefunde">
      <active pattern="template-1.2.40.0.34.11.5.2.7-2012-01-12T000000"/>
   </phase>
   <phase id="Komplikationen">
      <active pattern="template-1.2.40.0.34.11.5.2.8-2012-01-12T000000"/>
   </phase>
   <phase id="Befund">
      <active pattern="template-1.2.40.0.34.11.5.2.9-2012-01-12T000000"/>
   </phase>
   <phase id="KlassifikationBIRADS-20140324T000000">
      <active pattern="template-1.2.40.0.34.11.5.3.1-2014-03-24T000000"/>
   </phase>
   <phase id="BefundtextKodierung">
      <active pattern="template-1.2.40.0.34.11.5.3.2-2014-03-24T000000"/>
   </phase>
   <phase id="Strahlenexpositionentry">
      <active pattern="template-1.2.40.0.34.11.5.3.3-2015-09-24T000000"/>
   </phase>
   <phase id="DOCS-20140324T000000">
      <active pattern="template-2.16.840.1.113883.10.20.6.1.1-2014-03-24T000000"/>
   </phase>
   <phase id="StudyAct-20140324T000000">
      <active pattern="template-2.16.840.1.113883.10.20.6.2.6-2014-03-24T000000"/>
   </phase>
   <phase id="SopInstance">
      <active pattern="template-2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000"/>
   </phase>

   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->

   <!-- Brieftext -->
   <include href="include/1.2.40.0.34.11.1.2.1-2011-12-19T000000.sch"/>
   <!-- AbschliessendeBemerkung -->
   <include href="include/1.2.40.0.34.11.1.2.2-2012-07-14T000000.sch"/>
   <!-- EingebettetesObjektEntry -->
   <include href="include/1.2.40.0.34.11.1.3.1-2017-05-05T000000.sch"/>
   <!-- LogoEntry -->
   <include href="include/1.2.40.0.34.11.1.3.2-2011-12-19T000000.sch"/>
   <!-- BefundBildgebendeDiagnostik -->
   <include href="include/1.2.40.0.34.11.5-2015-09-24T000000.sch"/>
   <!-- Anforderung -->
   <include href="include/1.2.40.0.34.11.5.2.1-2012-01-12T000000.sch"/>
   <!-- ZusammenfassungErgebnis -->
   <include href="include/1.2.40.0.34.11.5.2.10-2012-01-12T000000.sch"/>
   <!-- Verdachtsdiagnose -->
   <include href="include/1.2.40.0.34.11.5.2.11-2012-01-12T000000.sch"/>
   <!-- Schlussfolgerung -->
   <include href="include/1.2.40.0.34.11.5.2.12-2012-01-12T000000.sch"/>
   <!-- Empfehlung -->
   <include href="include/1.2.40.0.34.11.5.2.13-2012-01-12T000000.sch"/>
   <!-- Addendum -->
   <include href="include/1.2.40.0.34.11.5.2.14-2012-01-12T000000.sch"/>
   <!-- AnamneseBildgebendeDiagnostik -->
   <include href="include/1.2.40.0.34.11.5.2.2-2012-01-12T000000.sch"/>
   <!-- Indikation -->
   <include href="include/1.2.40.0.34.11.5.2.3-2012-01-12T000000.sch"/>
   <!-- PatientenStatusAngaben -->
   <include href="include/1.2.40.0.34.11.5.2.4-2012-01-12T000000.sch"/>
   <!-- AktuelleUntersuchung -->
   <include href="include/1.2.40.0.34.11.5.2.5-2019-07-30T142246.sch"/>
   <!-- FruehereUntersuchungen -->
   <include href="include/1.2.40.0.34.11.5.2.6-2012-01-12T000000.sch"/>
   <!-- FruehereBefunde -->
   <include href="include/1.2.40.0.34.11.5.2.7-2012-01-12T000000.sch"/>
   <!-- Komplikationen -->
   <include href="include/1.2.40.0.34.11.5.2.8-2012-01-12T000000.sch"/>
   <!-- Befund -->
   <include href="include/1.2.40.0.34.11.5.2.9-2012-01-12T000000.sch"/>
   <!-- KlassifikationBIRADS -->
   <include href="include/1.2.40.0.34.11.5.3.1-2014-03-24T000000.sch"/>
   <!-- BefundtextKodierung -->
   <include href="include/1.2.40.0.34.11.5.3.2-2014-03-24T000000.sch"/>
   <!-- Strahlenexpositionentry -->
   <include href="include/1.2.40.0.34.11.5.3.3-2015-09-24T000000.sch"/>
   <!-- DOCS -->
   <include href="include/2.16.840.1.113883.10.20.6.1.1-2014-03-24T000000.sch"/>
   <!-- StudyAct -->
   <include href="include/2.16.840.1.113883.10.20.6.2.6-2014-03-24T000000.sch"/>
   <!-- SopInstance -->
   <include href="include/2.16.840.1.113883.10.20.6.2.8-2012-01-12T000000.sch"/>

</schema>
