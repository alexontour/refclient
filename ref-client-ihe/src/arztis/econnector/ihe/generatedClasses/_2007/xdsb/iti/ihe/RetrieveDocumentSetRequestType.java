/*
 * XML Type:  RetrieveDocumentSetRequestType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe;


/**
 * An XML RetrieveDocumentSetRequestType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public interface RetrieveDocumentSetRequestType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RetrieveDocumentSetRequestType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("retrievedocumentsetrequesttype3bd5type");
    
    /**
     * Gets array of all "DocumentRequest" elements
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[] getDocumentRequestArray();
    
    /**
     * Gets ith "DocumentRequest" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest getDocumentRequestArray(int i);
    
    /**
     * Returns number of "DocumentRequest" element
     */
    int sizeOfDocumentRequestArray();
    
    /**
     * Sets array of all "DocumentRequest" element
     */
    void setDocumentRequestArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[] documentRequestArray);
    
    /**
     * Sets ith "DocumentRequest" element
     */
    void setDocumentRequestArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest documentRequest);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentRequest" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest insertNewDocumentRequest(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentRequest" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest addNewDocumentRequest();
    
    /**
     * Removes the ith "DocumentRequest" element
     */
    void removeDocumentRequest(int i);
    
    /**
     * An XML DocumentRequest(@urn:ihe:iti:xds-b:2007).
     *
     * This is a complex type.
     */
    public interface DocumentRequest extends org.apache.xmlbeans.XmlObject
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(DocumentRequest.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("documentrequest3d15elemtype");
        
        /**
         * Gets the "HomeCommunityId" element
         */
        java.lang.String getHomeCommunityId();
        
        /**
         * Gets (as xml) the "HomeCommunityId" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetHomeCommunityId();
        
        /**
         * True if has "HomeCommunityId" element
         */
        boolean isSetHomeCommunityId();
        
        /**
         * Sets the "HomeCommunityId" element
         */
        void setHomeCommunityId(java.lang.String homeCommunityId);
        
        /**
         * Sets (as xml) the "HomeCommunityId" element
         */
        void xsetHomeCommunityId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName homeCommunityId);
        
        /**
         * Unsets the "HomeCommunityId" element
         */
        void unsetHomeCommunityId();
        
        /**
         * Gets the "RepositoryUniqueId" element
         */
        java.lang.String getRepositoryUniqueId();
        
        /**
         * Gets (as xml) the "RepositoryUniqueId" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetRepositoryUniqueId();
        
        /**
         * Sets the "RepositoryUniqueId" element
         */
        void setRepositoryUniqueId(java.lang.String repositoryUniqueId);
        
        /**
         * Sets (as xml) the "RepositoryUniqueId" element
         */
        void xsetRepositoryUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName repositoryUniqueId);
        
        /**
         * Gets the "DocumentUniqueId" element
         */
        java.lang.String getDocumentUniqueId();
        
        /**
         * Gets (as xml) the "DocumentUniqueId" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetDocumentUniqueId();
        
        /**
         * Sets the "DocumentUniqueId" element
         */
        void setDocumentUniqueId(java.lang.String documentUniqueId);
        
        /**
         * Sets (as xml) the "DocumentUniqueId" element
         */
        void xsetDocumentUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName documentUniqueId);
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest newInstance() {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType newInstance() {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
