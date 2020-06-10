/*
 * An XML document type.
 * Localname: AdhocQueryRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis;


/**
 * A document containing one AdhocQueryRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public interface AdhocQueryRequestDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(AdhocQueryRequestDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("adhocqueryrequest483cdoctype");
    
    /**
     * Gets the "AdhocQueryRequest" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest getAdhocQueryRequest();
    
    /**
     * Sets the "AdhocQueryRequest" element
     */
    void setAdhocQueryRequest(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest adhocQueryRequest);
    
    /**
     * Appends and returns a new empty "AdhocQueryRequest" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest addNewAdhocQueryRequest();
    
    /**
     * An XML AdhocQueryRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
     *
     * This is a complex type.
     */
    public interface AdhocQueryRequest extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryRequestType
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(AdhocQueryRequest.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("adhocqueryrequest9808elemtype");
        
        /**
         * Gets the "ResponseOption" element
         */
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType getResponseOption();
        
        /**
         * Sets the "ResponseOption" element
         */
        void setResponseOption(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType responseOption);
        
        /**
         * Appends and returns a new empty "ResponseOption" element
         */
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType addNewResponseOption();
        
        /**
         * Gets the "AdhocQuery" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType getAdhocQuery();
        
        /**
         * Sets the "AdhocQuery" element
         */
        void setAdhocQuery(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType adhocQuery);
        
        /**
         * Appends and returns a new empty "AdhocQuery" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType addNewAdhocQuery();
        
        /**
         * Gets the "federated" attribute
         */
        boolean getFederated();
        
        /**
         * Gets (as xml) the "federated" attribute
         */
        org.apache.xmlbeans.XmlBoolean xgetFederated();
        
        /**
         * True if has "federated" attribute
         */
        boolean isSetFederated();
        
        /**
         * Sets the "federated" attribute
         */
        void setFederated(boolean federated);
        
        /**
         * Sets (as xml) the "federated" attribute
         */
        void xsetFederated(org.apache.xmlbeans.XmlBoolean federated);
        
        /**
         * Unsets the "federated" attribute
         */
        void unsetFederated();
        
        /**
         * Gets the "federation" attribute
         */
        java.lang.String getFederation();
        
        /**
         * Gets (as xml) the "federation" attribute
         */
        org.apache.xmlbeans.XmlAnyURI xgetFederation();
        
        /**
         * True if has "federation" attribute
         */
        boolean isSetFederation();
        
        /**
         * Sets the "federation" attribute
         */
        void setFederation(java.lang.String federation);
        
        /**
         * Sets (as xml) the "federation" attribute
         */
        void xsetFederation(org.apache.xmlbeans.XmlAnyURI federation);
        
        /**
         * Unsets the "federation" attribute
         */
        void unsetFederation();
        
        /**
         * Gets the "startIndex" attribute
         */
        java.math.BigInteger getStartIndex();
        
        /**
         * Gets (as xml) the "startIndex" attribute
         */
        org.apache.xmlbeans.XmlInteger xgetStartIndex();
        
        /**
         * True if has "startIndex" attribute
         */
        boolean isSetStartIndex();
        
        /**
         * Sets the "startIndex" attribute
         */
        void setStartIndex(java.math.BigInteger startIndex);
        
        /**
         * Sets (as xml) the "startIndex" attribute
         */
        void xsetStartIndex(org.apache.xmlbeans.XmlInteger startIndex);
        
        /**
         * Unsets the "startIndex" attribute
         */
        void unsetStartIndex();
        
        /**
         * Gets the "maxResults" attribute
         */
        java.math.BigInteger getMaxResults();
        
        /**
         * Gets (as xml) the "maxResults" attribute
         */
        org.apache.xmlbeans.XmlInteger xgetMaxResults();
        
        /**
         * True if has "maxResults" attribute
         */
        boolean isSetMaxResults();
        
        /**
         * Sets the "maxResults" attribute
         */
        void setMaxResults(java.math.BigInteger maxResults);
        
        /**
         * Sets (as xml) the "maxResults" attribute
         */
        void xsetMaxResults(org.apache.xmlbeans.XmlInteger maxResults);
        
        /**
         * Unsets the "maxResults" attribute
         */
        void unsetMaxResults();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest newInstance() {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
