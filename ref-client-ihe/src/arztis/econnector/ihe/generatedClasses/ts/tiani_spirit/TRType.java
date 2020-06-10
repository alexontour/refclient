/*
 * XML Type:  TRType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit;


/**
 * An XML TRType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public interface TRType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(TRType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.s7BF52E4086C44A1A966935CB5C33C75C").resolveHandle("trtypee75atype");
    
    /**
     * Gets the "IdentMethod" element
     */
    java.lang.String getIdentMethod();
    
    /**
     * Gets (as xml) the "IdentMethod" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType xgetIdentMethod();
    
    /**
     * Sets the "IdentMethod" element
     */
    void setIdentMethod(java.lang.String identMethod);
    
    /**
     * Sets (as xml) the "IdentMethod" element
     */
    void xsetIdentMethod(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType identMethod);
    
    /**
     * Gets the "ProviderOID" element
     */
    java.lang.String getProviderOID();
    
    /**
     * Gets (as xml) the "ProviderOID" element
     */
    org.apache.xmlbeans.XmlString xgetProviderOID();
    
    /**
     * Sets the "ProviderOID" element
     */
    void setProviderOID(java.lang.String providerOID);
    
    /**
     * Sets (as xml) the "ProviderOID" element
     */
    void xsetProviderOID(org.apache.xmlbeans.XmlString providerOID);
    
    /**
     * Gets the "PatientID" element
     */
    java.lang.String getPatientID();
    
    /**
     * Gets (as xml) the "PatientID" element
     */
    org.apache.xmlbeans.XmlString xgetPatientID();
    
    /**
     * Sets the "PatientID" element
     */
    void setPatientID(java.lang.String patientID);
    
    /**
     * Sets (as xml) the "PatientID" element
     */
    void xsetPatientID(org.apache.xmlbeans.XmlString patientID);
    
    /**
     * Gets the "TRDate" element
     */
    java.util.Calendar getTRDate();
    
    /**
     * Gets (as xml) the "TRDate" element
     */
    org.apache.xmlbeans.XmlDateTime xgetTRDate();
    
    /**
     * Sets the "TRDate" element
     */
    void setTRDate(java.util.Calendar trDate);
    
    /**
     * Sets (as xml) the "TRDate" element
     */
    void xsetTRDate(org.apache.xmlbeans.XmlDateTime trDate);
    
    /**
     * Gets the "TRType" element
     */
    java.lang.String getTRType();
    
    /**
     * Gets (as xml) the "TRType" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType xgetTRType();
    
    /**
     * Sets the "TRType" element
     */
    void setTRType(java.lang.String trType);
    
    /**
     * Sets (as xml) the "TRType" element
     */
    void xsetTRType(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType trType);
    
    /**
     * Gets the "TRStatus" element
     */
    java.lang.String getTRStatus();
    
    /**
     * Gets (as xml) the "TRStatus" element
     */
    org.apache.xmlbeans.XmlString xgetTRStatus();
    
    /**
     * Sets the "TRStatus" element
     */
    void setTRStatus(java.lang.String trStatus);
    
    /**
     * Sets (as xml) the "TRStatus" element
     */
    void xsetTRStatus(org.apache.xmlbeans.XmlString trStatus);
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
