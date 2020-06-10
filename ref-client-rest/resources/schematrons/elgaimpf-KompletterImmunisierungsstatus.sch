<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:local="http://art-decor.org/functions" xmlns:hl7="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <title>Scenario: KompletterImmunisierungsstatus - elgaimpf Kompletter Immunisierungsstatus (1.2.40.0.34.777.4.4.16)</title>
    <ns uri="urn:hl7-org:v3" prefix="hl7"/>
    <ns uri="urn:hl7-org:v3" prefix="cda"/>
    <ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
    <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
   <!-- Add extra namespaces -->
    <ns uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
    <ns uri="urn:ihe:pharm:medication" prefix="pharm"/>
   <!-- Include realm specific schematron --><!-- Include datatype abstract schematrons -->
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

   <!-- Include the project schematrons related to scenario KompletterImmunisierungsstatus -->

<!-- eimpf_document_KompletterImmunisierungsstatus -->
    <pattern>
        <title>eimpf_document_KompletterImmunisierungsstatus</title>
        <rule context="/">
            <assert role="warning" test="descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4">descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]: Instance is expected to have the following element: %%2</assert>
        </rule>
    </pattern>
    <include href="include/1.2.40.0.34.6.0.11.0.4-2019-04-04T101028.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.0.4-2019-04-04T101028-closed.sch"/>


   <!-- Create phases for more targeted validation on large instances -->
    <phase id="AllExceptClosed">
        <active pattern="template-1.2.40.0.34.6.0.11.0.4-2019-04-04T101028"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.1-2017-03-11T183841"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.2-2019-01-17T161817"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.4-2019-04-24T141817"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.5-2019-05-20T082055"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.7-2019-04-12T160634"/>
        <active pattern="template-1.2.40.0.34.6.0.11.2.8-2019-05-14T152450"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.1-2019-01-16T161257"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.10-2019-04-17T105355"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.11-2019-02-07T131044"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.14-2019-05-06T140033"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.15-2019-08-05T140453"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.16-2019-08-05T141712"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.18-2019-08-05T141239"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.2-2019-04-03T104141"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.20-2019-05-29T150252"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.21-2019-05-29T151739"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.22-2019-07-18T153053"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.28-2019-08-13T125909"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.3-2019-04-25T103018"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.5-2019-04-03T143052"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.8-2019-05-20T072416"/>
        <active pattern="template-1.2.40.0.34.6.0.11.3.9-2019-05-20T081225"/>
        <active pattern="template-1.2.40.0.34.6.0.11.9.14-2019-04-03T161946"/>
        <active pattern="template-1.2.40.0.34.6.0.11.9.21-2019-05-08T132112"/>
        <active pattern="template-1.2.40.0.34.6.0.11.9.28-2019-05-15T163536"/>
        <active pattern="template-1.2.40.0.34.6.0.11.9.31-2019-06-05T073324"/>
        <active pattern="template-1.2.40.0.34.6.0.11.9.32-2019-04-24T085724"/>
    </phase>
    <phase id="eimpf_document_KompletterImmunisierungsstatus">
        <active pattern="template-1.2.40.0.34.6.0.11.0.4-2019-04-04T101028"/>
    </phase>
    <phase id="eimpf_document_KompletterImmunisierungsstatus-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.0.4-2019-04-04T101028-closed"/>
    </phase>
    <phase id="atcdabrr_section_ImpfungenKodiert">
        <active pattern="template-1.2.40.0.34.6.0.11.2.1-2017-03-11T183841"/>
    </phase>
    <phase id="atcdabrr_section_ImpfungenKodiert-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.1-2017-03-11T183841-closed"/>
    </phase>
    <phase id="atcdabrr_section_ImpfempfehlungenKodiert">
        <active pattern="template-1.2.40.0.34.6.0.11.2.2-2019-01-17T161817"/>
    </phase>
    <phase id="atcdabrr_section_ImpfempfehlungenKodiert-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.2-2019-01-17T161817-closed"/>
    </phase>
    <phase id="atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert">
        <active pattern="template-1.2.40.0.34.6.0.11.2.4-2019-04-24T141817"/>
    </phase>
    <phase id="atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.4-2019-04-24T141817-closed"/>
    </phase>
    <phase id="eimpf_section_ImpfrelevanteErkrankungen">
        <active pattern="template-1.2.40.0.34.6.0.11.2.5-2019-05-20T082055"/>
    </phase>
    <phase id="eimpf_section_ImpfrelevanteErkrankungen-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.5-2019-05-20T082055-closed"/>
    </phase>
    <phase id="eimpf_section_AntikoerperBestimmungKodiert">
        <active pattern="template-1.2.40.0.34.6.0.11.2.7-2019-04-12T160634"/>
    </phase>
    <phase id="eimpf_section_AntikoerperBestimmungKodiert-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.7-2019-04-12T160634-closed"/>
    </phase>
    <phase id="atcdabbr_section_Uebersetzung">
        <active pattern="template-1.2.40.0.34.6.0.11.2.8-2019-05-14T152450"/>
    </phase>
    <phase id="atcdabbr_section_Uebersetzung-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.2.8-2019-05-14T152450-closed"/>
    </phase>
    <phase id="atcdabbr_entry_Immunization">
        <active pattern="template-1.2.40.0.34.6.0.11.3.1-2019-01-16T161257"/>
    </phase>
    <phase id="atcdabbr_entry_Immunization-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.1-2019-01-16T161257-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationSchedule">
        <active pattern="template-1.2.40.0.34.6.0.11.3.10-2019-04-17T105355"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationSchedule-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.10-2019-04-17T105355-closed"/>
    </phase>
    <phase id="atcdabrr_entry_Comment">
        <active pattern="template-1.2.40.0.34.6.0.11.3.11-2019-02-07T131044"/>
    </phase>
    <phase id="atcdabrr_entry_Comment-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.11-2019-02-07T131044-closed"/>
    </phase>
    <phase id="atcdabbr_entry_externalDocument">
        <active pattern="template-1.2.40.0.34.6.0.11.3.14-2019-05-06T140033"/>
    </phase>
    <phase id="atcdabbr_entry_externalDocument-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.14-2019-05-06T140033-closed"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungDataProcessing">
        <active pattern="template-1.2.40.0.34.6.0.11.3.15-2019-08-05T140453"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungDataProcessing-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.15-2019-08-05T140453-closed"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungLaboratoryObservation">
        <active pattern="template-1.2.40.0.34.6.0.11.3.16-2019-08-05T141712"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungLaboratoryObservation-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.16-2019-08-05T141712-closed"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungBatteryOrganizer">
        <active pattern="template-1.2.40.0.34.6.0.11.3.18-2019-08-05T141239"/>
    </phase>
    <phase id="eimpf_entry_AntikoerperBestimmungBatteryOrganizer-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.18-2019-08-05T141239-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationTarget">
        <active pattern="template-1.2.40.0.34.6.0.11.3.2-2019-04-03T104141"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationTarget-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.2-2019-04-03T104141-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ExpositionsrisikoProblemConcern">
        <active pattern="template-1.2.40.0.34.6.0.11.3.20-2019-05-29T150252"/>
    </phase>
    <phase id="atcdabbr_entry_ExpositionsrisikoProblemConcern-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.20-2019-05-29T150252-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ExpositionsrisikoProblem">
        <active pattern="template-1.2.40.0.34.6.0.11.3.21-2019-05-29T151739"/>
    </phase>
    <phase id="atcdabbr_entry_ExpositionsrisikoProblem-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.21-2019-05-29T151739-closed"/>
    </phase>
    <phase id="atcdabbr_entry_impfPlan">
        <active pattern="template-1.2.40.0.34.6.0.11.3.22-2019-07-18T153053"/>
    </phase>
    <phase id="atcdabbr_entry_impfPlan-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.22-2019-07-18T153053-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationImpfungNichtAngegeben">
        <active pattern="template-1.2.40.0.34.6.0.11.3.28-2019-08-13T125909"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationImpfungNichtAngegeben-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.28-2019-08-13T125909-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationRecommendation">
        <active pattern="template-1.2.40.0.34.6.0.11.3.3-2019-04-25T103018"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationRecommendation-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.3-2019-04-25T103018-closed"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationBillability">
        <active pattern="template-1.2.40.0.34.6.0.11.3.5-2019-04-03T143052"/>
    </phase>
    <phase id="atcdabbr_entry_ImmunizationBillability-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.5-2019-04-03T143052-closed"/>
    </phase>
    <phase id="eimpf_entry_ImpfrelevanteErkrankungenProblemConcern">
        <active pattern="template-1.2.40.0.34.6.0.11.3.8-2019-05-20T072416"/>
    </phase>
    <phase id="eimpf_entry_ImpfrelevanteErkrankungenProblemConcern-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.8-2019-05-20T072416-closed"/>
    </phase>
    <phase id="eimpf_entry_ImpfrelevanteErkrankungProblemEntry">
        <active pattern="template-1.2.40.0.34.6.0.11.3.9-2019-05-20T081225"/>
    </phase>
    <phase id="eimpf_entry_ImpfrelevanteErkrankungProblemEntry-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.3.9-2019-05-20T081225-closed"/>
    </phase>
    <phase id="atcdabbr_other_ParticipantBodyTranscriber">
        <active pattern="template-1.2.40.0.34.6.0.11.9.14-2019-04-03T161946"/>
    </phase>
    <phase id="atcdabbr_other_ParticipantBodyTranscriber-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.9.14-2019-04-03T161946-closed"/>
    </phase>
    <phase id="atcdabbr_other_PerformerBodyImpfendePerson">
        <active pattern="template-1.2.40.0.34.6.0.11.9.21-2019-05-08T132112"/>
    </phase>
    <phase id="atcdabbr_other_PerformerBodyImpfendePerson-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.9.21-2019-05-08T132112-closed"/>
    </phase>
    <phase id="atcdabbr_other_PerformerBodyLaboratory">
        <active pattern="template-1.2.40.0.34.6.0.11.9.28-2019-05-15T163536"/>
    </phase>
    <phase id="atcdabbr_other_PerformerBodyLaboratory-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.9.28-2019-05-15T163536-closed"/>
    </phase>
    <phase id="atcdabbr_other_vaccineProductNichtAngegeben">
        <active pattern="template-1.2.40.0.34.6.0.11.9.31-2019-06-05T073324"/>
    </phase>
    <phase id="atcdabbr_other_vaccineProductNichtAngegeben-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.9.31-2019-06-05T073324-closed"/>
    </phase>
    <phase id="atcdabbr_other_vaccineProduct">
        <active pattern="template-1.2.40.0.34.6.0.11.9.32-2019-04-24T085724"/>
    </phase>
    <phase id="atcdabbr_other_vaccineProduct-closed">
        <active pattern="template-1.2.40.0.34.6.0.11.9.32-2019-04-24T085724-closed"/>
    </phase>

   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->

<!-- atcdabrr_section_ImpfungenKodiert -->
    <include href="include/1.2.40.0.34.6.0.11.2.1-2017-03-11T183841.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.1-2017-03-11T183841-closed.sch"/>
   <!-- atcdabrr_section_ImpfempfehlungenKodiert -->
    <include href="include/1.2.40.0.34.6.0.11.2.2-2019-01-17T161817.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.2-2019-01-17T161817-closed.sch"/>
   <!-- atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert -->
    <include href="include/1.2.40.0.34.6.0.11.2.4-2019-04-24T141817.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.4-2019-04-24T141817-closed.sch"/>
   <!-- eimpf_section_ImpfrelevanteErkrankungen -->
    <include href="include/1.2.40.0.34.6.0.11.2.5-2019-05-20T082055.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.5-2019-05-20T082055-closed.sch"/>
   <!-- eimpf_section_AntikoerperBestimmungKodiert -->
    <include href="include/1.2.40.0.34.6.0.11.2.7-2019-04-12T160634.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.7-2019-04-12T160634-closed.sch"/>
   <!-- atcdabbr_section_Uebersetzung -->
    <include href="include/1.2.40.0.34.6.0.11.2.8-2019-05-14T152450.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.2.8-2019-05-14T152450-closed.sch"/>
   <!-- atcdabbr_entry_Immunization -->
    <include href="include/1.2.40.0.34.6.0.11.3.1-2019-01-16T161257.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.1-2019-01-16T161257-closed.sch"/>
   <!-- atcdabbr_entry_ImmunizationSchedule -->
    <include href="include/1.2.40.0.34.6.0.11.3.10-2019-04-17T105355.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.10-2019-04-17T105355-closed.sch"/>
   <!-- atcdabrr_entry_Comment -->
    <include href="include/1.2.40.0.34.6.0.11.3.11-2019-02-07T131044.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.11-2019-02-07T131044-closed.sch"/>
   <!-- atcdabbr_entry_externalDocument -->
    <include href="include/1.2.40.0.34.6.0.11.3.14-2019-05-06T140033.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.14-2019-05-06T140033-closed.sch"/>
   <!-- eimpf_entry_AntikoerperBestimmungDataProcessing -->
    <include href="include/1.2.40.0.34.6.0.11.3.15-2019-08-05T140453.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.15-2019-08-05T140453-closed.sch"/>
   <!-- eimpf_entry_AntikoerperBestimmungLaboratoryObservation -->
    <include href="include/1.2.40.0.34.6.0.11.3.16-2019-08-05T141712.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.16-2019-08-05T141712-closed.sch"/>
   <!-- eimpf_entry_AntikoerperBestimmungBatteryOrganizer -->
    <include href="include/1.2.40.0.34.6.0.11.3.18-2019-08-05T141239.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.18-2019-08-05T141239-closed.sch"/>
   <!-- atcdabbr_entry_ImmunizationTarget -->
    <include href="include/1.2.40.0.34.6.0.11.3.2-2019-04-03T104141.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.2-2019-04-03T104141-closed.sch"/>
   <!-- atcdabbr_entry_ExpositionsrisikoProblemConcern -->
    <include href="include/1.2.40.0.34.6.0.11.3.20-2019-05-29T150252.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.20-2019-05-29T150252-closed.sch"/>
   <!-- atcdabbr_entry_ExpositionsrisikoProblem -->
    <include href="include/1.2.40.0.34.6.0.11.3.21-2019-05-29T151739.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.21-2019-05-29T151739-closed.sch"/>
   <!-- atcdabbr_entry_impfPlan -->
    <include href="include/1.2.40.0.34.6.0.11.3.22-2019-07-18T153053.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.22-2019-07-18T153053-closed.sch"/>
   <!-- atcdabbr_entry_ImmunizationImpfungNichtAngegeben -->
    <include href="include/1.2.40.0.34.6.0.11.3.28-2019-08-13T125909.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.28-2019-08-13T125909-closed.sch"/>
   <!-- atcdabbr_entry_ImmunizationRecommendation -->
    <include href="include/1.2.40.0.34.6.0.11.3.3-2019-04-25T103018.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.3-2019-04-25T103018-closed.sch"/>
   <!-- atcdabbr_entry_ImmunizationBillability -->
    <include href="include/1.2.40.0.34.6.0.11.3.5-2019-04-03T143052.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.5-2019-04-03T143052-closed.sch"/>
   <!-- eimpf_entry_ImpfrelevanteErkrankungenProblemConcern -->
    <include href="include/1.2.40.0.34.6.0.11.3.8-2019-05-20T072416.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.8-2019-05-20T072416-closed.sch"/>
   <!-- eimpf_entry_ImpfrelevanteErkrankungProblemEntry -->
    <include href="include/1.2.40.0.34.6.0.11.3.9-2019-05-20T081225.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.3.9-2019-05-20T081225-closed.sch"/>
   <!-- atcdabbr_other_ParticipantBodyTranscriber -->
    <include href="include/1.2.40.0.34.6.0.11.9.14-2019-04-03T161946.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.9.14-2019-04-03T161946-closed.sch"/>
   <!-- atcdabbr_other_PerformerBodyImpfendePerson -->
    <include href="include/1.2.40.0.34.6.0.11.9.21-2019-05-08T132112.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.9.21-2019-05-08T132112-closed.sch"/>
   <!-- atcdabbr_other_PerformerBodyLaboratory -->
    <include href="include/1.2.40.0.34.6.0.11.9.28-2019-05-15T163536.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.9.28-2019-05-15T163536-closed.sch"/>
   <!-- atcdabbr_other_vaccineProductNichtAngegeben -->
    <include href="include/1.2.40.0.34.6.0.11.9.31-2019-06-05T073324.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.9.31-2019-06-05T073324-closed.sch"/>
   <!-- atcdabbr_other_vaccineProduct -->
    <include href="include/1.2.40.0.34.6.0.11.9.32-2019-04-24T085724.sch"/>
    <include href="include/1.2.40.0.34.6.0.11.9.32-2019-04-24T085724-closed.sch"/>
</schema>