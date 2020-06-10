/*
 * XML Type:  RegistryResponseType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis;


/**
 * An XML RegistryResponseType(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
 *
 * This is a complex type.
 */
public interface RegistryResponseType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryResponseType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryresponsetypec329type");
    
    /**
     * Gets the "ResponseSlotList" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType getResponseSlotList();
    
    /**
     * True if has "ResponseSlotList" element
     */
    boolean isSetResponseSlotList();
    
    /**
     * Sets the "ResponseSlotList" element
     */
    void setResponseSlotList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType responseSlotList);
    
    /**
     * Appends and returns a new empty "ResponseSlotList" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType addNewResponseSlotList();
    
    /**
     * Unsets the "ResponseSlotList" element
     */
    void unsetResponseSlotList();
    
    /**
     * Gets the "RegistryErrorList" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList getRegistryErrorList();
    
    /**
     * True if has "RegistryErrorList" element
     */
    boolean isSetRegistryErrorList();
    
    /**
     * Sets the "RegistryErrorList" element
     */
    void setRegistryErrorList(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList registryErrorList);
    
    /**
     * Appends and returns a new empty "RegistryErrorList" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList addNewRegistryErrorList();
    
    /**
     * Unsets the "RegistryErrorList" element
     */
    void unsetRegistryErrorList();
    
    /**
     * Gets the "status" attribute
     */
    java.lang.String getStatus();
    
    /**
     * Gets (as xml) the "status" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetStatus();
    
    /**
     * Sets the "status" attribute
     */
    void setStatus(java.lang.String status);
    
    /**
     * Sets (as xml) the "status" attribute
     */
    void xsetStatus(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI status);
    
    /**
     * Gets the "requestId" attribute
     */
    java.lang.String getRequestId();
    
    /**
     * Gets (as xml) the "requestId" attribute
     */
    org.apache.xmlbeans.XmlAnyURI xgetRequestId();
    
    /**
     * True if has "requestId" attribute
     */
    boolean isSetRequestId();
    
    /**
     * Sets the "requestId" attribute
     */
    void setRequestId(java.lang.String requestId);
    
    /**
     * Sets (as xml) the "requestId" attribute
     */
    void xsetRequestId(org.apache.xmlbeans.XmlAnyURI requestId);
    
    /**
     * Unsets the "requestId" attribute
     */
    void unsetRequestId();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
