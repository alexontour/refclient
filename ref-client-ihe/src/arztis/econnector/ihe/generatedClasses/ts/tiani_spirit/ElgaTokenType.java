/*
 * XML Type:  ElgaTokenType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit;


/**
 * An XML ElgaTokenType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public interface ElgaTokenType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(ElgaTokenType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.s7BF52E4086C44A1A966935CB5C33C75C").resolveHandle("elgatokentype7b02type");
    
    /**
     * Gets the "StateID" element
     */
    java.lang.String getStateID();
    
    /**
     * Gets (as xml) the "StateID" element
     */
    org.apache.xmlbeans.XmlString xgetStateID();
    
    /**
     * Tests for nil "StateID" element
     */
    boolean isNilStateID();
    
    /**
     * Sets the "StateID" element
     */
    void setStateID(java.lang.String stateID);
    
    /**
     * Sets (as xml) the "StateID" element
     */
    void xsetStateID(org.apache.xmlbeans.XmlString stateID);
    
    /**
     * Nils the "StateID" element
     */
    void setNilStateID();
    
    /**
     * Gets the "IsOptOut" element
     */
    boolean getIsOptOut();
    
    /**
     * Gets (as xml) the "IsOptOut" element
     */
    org.apache.xmlbeans.XmlBoolean xgetIsOptOut();
    
    /**
     * Tests for nil "IsOptOut" element
     */
    boolean isNilIsOptOut();
    
    /**
     * Sets the "IsOptOut" element
     */
    void setIsOptOut(boolean isOptOut);
    
    /**
     * Sets (as xml) the "IsOptOut" element
     */
    void xsetIsOptOut(org.apache.xmlbeans.XmlBoolean isOptOut);
    
    /**
     * Nils the "IsOptOut" element
     */
    void setNilIsOptOut();
    
    /**
     * Gets the "ServiceRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType getServiceRestrictionList();
    
    /**
     * Tests for nil "ServiceRestrictionList" element
     */
    boolean isNilServiceRestrictionList();
    
    /**
     * Sets the "ServiceRestrictionList" element
     */
    void setServiceRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType serviceRestrictionList);
    
    /**
     * Appends and returns a new empty "ServiceRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType addNewServiceRestrictionList();
    
    /**
     * Nils the "ServiceRestrictionList" element
     */
    void setNilServiceRestrictionList();
    
    /**
     * Gets the "ServiceOptOutList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType getServiceOptOutList();
    
    /**
     * Tests for nil "ServiceOptOutList" element
     */
    boolean isNilServiceOptOutList();
    
    /**
     * Sets the "ServiceOptOutList" element
     */
    void setServiceOptOutList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType serviceOptOutList);
    
    /**
     * Appends and returns a new empty "ServiceOptOutList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType addNewServiceOptOutList();
    
    /**
     * Nils the "ServiceOptOutList" element
     */
    void setNilServiceOptOutList();
    
    /**
     * Gets the "ServiceDeletionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType getServiceDeletionList();
    
    /**
     * Tests for nil "ServiceDeletionList" element
     */
    boolean isNilServiceDeletionList();
    
    /**
     * Sets the "ServiceDeletionList" element
     */
    void setServiceDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType serviceDeletionList);
    
    /**
     * Appends and returns a new empty "ServiceDeletionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType addNewServiceDeletionList();
    
    /**
     * Nils the "ServiceDeletionList" element
     */
    void setNilServiceDeletionList();
    
    /**
     * Gets the "ProviderRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType getProviderRestrictionList();
    
    /**
     * Tests for nil "ProviderRestrictionList" element
     */
    boolean isNilProviderRestrictionList();
    
    /**
     * Sets the "ProviderRestrictionList" element
     */
    void setProviderRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType providerRestrictionList);
    
    /**
     * Appends and returns a new empty "ProviderRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType addNewProviderRestrictionList();
    
    /**
     * Nils the "ProviderRestrictionList" element
     */
    void setNilProviderRestrictionList();
    
    /**
     * Gets the "DocumentRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType getDocumentRestrictionList();
    
    /**
     * Tests for nil "DocumentRestrictionList" element
     */
    boolean isNilDocumentRestrictionList();
    
    /**
     * Sets the "DocumentRestrictionList" element
     */
    void setDocumentRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType documentRestrictionList);
    
    /**
     * Appends and returns a new empty "DocumentRestrictionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType addNewDocumentRestrictionList();
    
    /**
     * Nils the "DocumentRestrictionList" element
     */
    void setNilDocumentRestrictionList();
    
    /**
     * Gets the "DocumentDeletionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType getDocumentDeletionList();
    
    /**
     * Tests for nil "DocumentDeletionList" element
     */
    boolean isNilDocumentDeletionList();
    
    /**
     * Sets the "DocumentDeletionList" element
     */
    void setDocumentDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType documentDeletionList);
    
    /**
     * Appends and returns a new empty "DocumentDeletionList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType addNewDocumentDeletionList();
    
    /**
     * Nils the "DocumentDeletionList" element
     */
    void setNilDocumentDeletionList();
    
    /**
     * Gets the "SignedDocumentList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType getSignedDocumentList();
    
    /**
     * Tests for nil "SignedDocumentList" element
     */
    boolean isNilSignedDocumentList();
    
    /**
     * Sets the "SignedDocumentList" element
     */
    void setSignedDocumentList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType signedDocumentList);
    
    /**
     * Appends and returns a new empty "SignedDocumentList" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType addNewSignedDocumentList();
    
    /**
     * Nils the "SignedDocumentList" element
     */
    void setNilSignedDocumentList();
    
    /**
     * Gets the "SignedDocData" element
     */
    byte[] getSignedDocData();
    
    /**
     * Gets (as xml) the "SignedDocData" element
     */
    org.apache.xmlbeans.XmlBase64Binary xgetSignedDocData();
    
    /**
     * Tests for nil "SignedDocData" element
     */
    boolean isNilSignedDocData();
    
    /**
     * Sets the "SignedDocData" element
     */
    void setSignedDocData(byte[] signedDocData);
    
    /**
     * Sets (as xml) the "SignedDocData" element
     */
    void xsetSignedDocData(org.apache.xmlbeans.XmlBase64Binary signedDocData);
    
    /**
     * Nils the "SignedDocData" element
     */
    void setNilSignedDocData();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
