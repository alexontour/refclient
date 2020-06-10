/*
 * XML Type:  ProvideAndRegisterDocumentSetRequestType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe;


/**
 * An XML ProvideAndRegisterDocumentSetRequestType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public interface ProvideAndRegisterDocumentSetRequestType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(ProvideAndRegisterDocumentSetRequestType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("provideandregisterdocumentsetrequesttype4238type");
    
    /**
     * Gets the "SubmitObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest getSubmitObjectsRequest();
    
    /**
     * Sets the "SubmitObjectsRequest" element
     */
    void setSubmitObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest submitObjectsRequest);
    
    /**
     * Appends and returns a new empty "SubmitObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest addNewSubmitObjectsRequest();
    
    /**
     * Gets array of all "Document" elements
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[] getDocumentArray();
    
    /**
     * Gets ith "Document" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document getDocumentArray(int i);
    
    /**
     * Returns number of "Document" element
     */
    int sizeOfDocumentArray();
    
    /**
     * Sets array of all "Document" element
     */
    void setDocumentArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[] documentArray);
    
    /**
     * Sets ith "Document" element
     */
    void setDocumentArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document document);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Document" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document insertNewDocument(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Document" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document addNewDocument();
    
    /**
     * Removes the ith "Document" element
     */
    void removeDocument(int i);
    
    /**
     * An XML Document(@urn:ihe:iti:xds-b:2007).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType$Document.
     */
    public interface Document extends org.apache.xmlbeans.XmlBase64Binary
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(Document.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("document164felemtype");
        
        /**
         * Gets the "id" attribute
         */
        java.lang.String getId();
        
        /**
         * Gets (as xml) the "id" attribute
         */
        org.apache.xmlbeans.XmlAnyURI xgetId();
        
        /**
         * Sets the "id" attribute
         */
        void setId(java.lang.String id);
        
        /**
         * Sets (as xml) the "id" attribute
         */
        void xsetId(org.apache.xmlbeans.XmlAnyURI id);
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document newInstance() {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType newInstance() {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
