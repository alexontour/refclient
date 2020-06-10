/*
 * An XML document type.
 * Localname: RegistryErrorList
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis;


/**
 * A document containing one RegistryErrorList(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0) element.
 *
 * This is a complex type.
 */
public interface RegistryErrorListDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryErrorListDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryerrorlista03adoctype");
    
    /**
     * Gets the "RegistryErrorList" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList getRegistryErrorList();
    
    /**
     * Sets the "RegistryErrorList" element
     */
    void setRegistryErrorList(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList registryErrorList);
    
    /**
     * Appends and returns a new empty "RegistryErrorList" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList addNewRegistryErrorList();
    
    /**
     * An XML RegistryErrorList(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
     *
     * This is a complex type.
     */
    public interface RegistryErrorList extends org.apache.xmlbeans.XmlObject
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryErrorList.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryerrorlistb845elemtype");
        
        /**
         * Gets array of all "RegistryError" elements
         */
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[] getRegistryErrorArray();
        
        /**
         * Gets ith "RegistryError" element
         */
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError getRegistryErrorArray(int i);
        
        /**
         * Returns number of "RegistryError" element
         */
        int sizeOfRegistryErrorArray();
        
        /**
         * Sets array of all "RegistryError" element
         */
        void setRegistryErrorArray(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[] registryErrorArray);
        
        /**
         * Sets ith "RegistryError" element
         */
        void setRegistryErrorArray(int i, arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError registryError);
        
        /**
         * Inserts and returns a new empty value (as xml) as the ith "RegistryError" element
         */
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError insertNewRegistryError(int i);
        
        /**
         * Appends and returns a new empty value (as xml) as the last "RegistryError" element
         */
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError addNewRegistryError();
        
        /**
         * Removes the ith "RegistryError" element
         */
        void removeRegistryError(int i);
        
        /**
         * Gets the "highestSeverity" attribute
         */
        java.lang.String getHighestSeverity();
        
        /**
         * Gets (as xml) the "highestSeverity" attribute
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetHighestSeverity();
        
        /**
         * True if has "highestSeverity" attribute
         */
        boolean isSetHighestSeverity();
        
        /**
         * Sets the "highestSeverity" attribute
         */
        void setHighestSeverity(java.lang.String highestSeverity);
        
        /**
         * Sets (as xml) the "highestSeverity" attribute
         */
        void xsetHighestSeverity(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI highestSeverity);
        
        /**
         * Unsets the "highestSeverity" attribute
         */
        void unsetHighestSeverity();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList newInstance() {
              return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
