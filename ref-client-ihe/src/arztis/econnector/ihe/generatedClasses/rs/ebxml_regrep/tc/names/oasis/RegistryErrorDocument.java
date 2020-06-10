/*
 * An XML document type.
 * Localname: RegistryError
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis;


/**
 * A document containing one RegistryError(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0) element.
 *
 * This is a complex type.
 */
public interface RegistryErrorDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryErrorDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryerror36b8doctype");
    
    /**
     * Gets the "RegistryError" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError getRegistryError();
    
    /**
     * Sets the "RegistryError" element
     */
    void setRegistryError(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError registryError);
    
    /**
     * Appends and returns a new empty "RegistryError" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError addNewRegistryError();
    
    /**
     * An XML RegistryError(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument$RegistryError.
     */
    public interface RegistryError extends org.apache.xmlbeans.XmlString
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryError.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryerror8e41elemtype");
        
        /**
         * Gets the "codeContext" attribute
         */
        java.lang.String getCodeContext();
        
        /**
         * Gets (as xml) the "codeContext" attribute
         */
        org.apache.xmlbeans.XmlString xgetCodeContext();
        
        /**
         * Sets the "codeContext" attribute
         */
        void setCodeContext(java.lang.String codeContext);
        
        /**
         * Sets (as xml) the "codeContext" attribute
         */
        void xsetCodeContext(org.apache.xmlbeans.XmlString codeContext);
        
        /**
         * Gets the "errorCode" attribute
         */
        java.lang.String getErrorCode();
        
        /**
         * Gets (as xml) the "errorCode" attribute
         */
        org.apache.xmlbeans.XmlString xgetErrorCode();
        
        /**
         * Sets the "errorCode" attribute
         */
        void setErrorCode(java.lang.String errorCode);
        
        /**
         * Sets (as xml) the "errorCode" attribute
         */
        void xsetErrorCode(org.apache.xmlbeans.XmlString errorCode);
        
        /**
         * Gets the "severity" attribute
         */
        java.lang.String getSeverity();
        
        /**
         * Gets (as xml) the "severity" attribute
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSeverity();
        
        /**
         * True if has "severity" attribute
         */
        boolean isSetSeverity();
        
        /**
         * Sets the "severity" attribute
         */
        void setSeverity(java.lang.String severity);
        
        /**
         * Sets (as xml) the "severity" attribute
         */
        void xsetSeverity(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI severity);
        
        /**
         * Unsets the "severity" attribute
         */
        void unsetSeverity();
        
        /**
         * Gets the "location" attribute
         */
        java.lang.String getLocation();
        
        /**
         * Gets (as xml) the "location" attribute
         */
        org.apache.xmlbeans.XmlString xgetLocation();
        
        /**
         * True if has "location" attribute
         */
        boolean isSetLocation();
        
        /**
         * Sets the "location" attribute
         */
        void setLocation(java.lang.String location);
        
        /**
         * Sets (as xml) the "location" attribute
         */
        void xsetLocation(org.apache.xmlbeans.XmlString location);
        
        /**
         * Unsets the "location" attribute
         */
        void unsetLocation();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError newInstance() {
              return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
