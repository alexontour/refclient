/*
 * XML Type:  RetrieveDocumentSetResponseType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe;


/**
 * An XML RetrieveDocumentSetResponseType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public interface RetrieveDocumentSetResponseType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RetrieveDocumentSetResponseType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("retrievedocumentsetresponsetypea35ftype");
    
    /**
     * Gets the "RegistryResponse" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType getRegistryResponse();
    
    /**
     * Sets the "RegistryResponse" element
     */
    void setRegistryResponse(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType registryResponse);
    
    /**
     * Appends and returns a new empty "RegistryResponse" element
     */
    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType addNewRegistryResponse();
    
    /**
     * Gets array of all "DocumentResponse" elements
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[] getDocumentResponseArray();
    
    /**
     * Gets ith "DocumentResponse" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse getDocumentResponseArray(int i);
    
    /**
     * Returns number of "DocumentResponse" element
     */
    int sizeOfDocumentResponseArray();
    
    /**
     * Sets array of all "DocumentResponse" element
     */
    void setDocumentResponseArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[] documentResponseArray);
    
    /**
     * Sets ith "DocumentResponse" element
     */
    void setDocumentResponseArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse documentResponse);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentResponse" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse insertNewDocumentResponse(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentResponse" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse addNewDocumentResponse();
    
    /**
     * Removes the ith "DocumentResponse" element
     */
    void removeDocumentResponse(int i);
    
    /**
     * An XML DocumentResponse(@urn:ihe:iti:xds-b:2007).
     *
     * This is a complex type.
     */
    public interface DocumentResponse extends org.apache.xmlbeans.XmlObject
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(DocumentResponse.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("documentresponsef727elemtype");
        
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
         * Gets the "NewRepositoryUniqueId" element
         */
        java.lang.String getNewRepositoryUniqueId();
        
        /**
         * Gets (as xml) the "NewRepositoryUniqueId" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetNewRepositoryUniqueId();
        
        /**
         * True if has "NewRepositoryUniqueId" element
         */
        boolean isSetNewRepositoryUniqueId();
        
        /**
         * Sets the "NewRepositoryUniqueId" element
         */
        void setNewRepositoryUniqueId(java.lang.String newRepositoryUniqueId);
        
        /**
         * Sets (as xml) the "NewRepositoryUniqueId" element
         */
        void xsetNewRepositoryUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName newRepositoryUniqueId);
        
        /**
         * Unsets the "NewRepositoryUniqueId" element
         */
        void unsetNewRepositoryUniqueId();
        
        /**
         * Gets the "NewDocumentUniqueId" element
         */
        java.lang.String getNewDocumentUniqueId();
        
        /**
         * Gets (as xml) the "NewDocumentUniqueId" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetNewDocumentUniqueId();
        
        /**
         * True if has "NewDocumentUniqueId" element
         */
        boolean isSetNewDocumentUniqueId();
        
        /**
         * Sets the "NewDocumentUniqueId" element
         */
        void setNewDocumentUniqueId(java.lang.String newDocumentUniqueId);
        
        /**
         * Sets (as xml) the "NewDocumentUniqueId" element
         */
        void xsetNewDocumentUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName newDocumentUniqueId);
        
        /**
         * Unsets the "NewDocumentUniqueId" element
         */
        void unsetNewDocumentUniqueId();
        
        /**
         * Gets the "mimeType" element
         */
        java.lang.String getMimeType();
        
        /**
         * Gets (as xml) the "mimeType" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetMimeType();
        
        /**
         * Sets the "mimeType" element
         */
        void setMimeType(java.lang.String mimeType);
        
        /**
         * Sets (as xml) the "mimeType" element
         */
        void xsetMimeType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName mimeType);
        
        /**
         * Gets the "Document" element
         */
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType getDocument();
        
        /**
         * Sets the "Document" element
         */
        void setDocument(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType document);
        
        /**
         * Appends and returns a new empty "Document" element
         */
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType addNewDocument();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse newInstance() {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType newInstance() {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
