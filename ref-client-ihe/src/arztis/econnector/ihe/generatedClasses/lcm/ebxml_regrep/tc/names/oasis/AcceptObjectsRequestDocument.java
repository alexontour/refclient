/*
 * An XML document type.
 * Localname: AcceptObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis;


/**
 * A document containing one AcceptObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public interface AcceptObjectsRequestDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(AcceptObjectsRequestDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("acceptobjectsrequest181fdoctype");
    
    /**
     * Gets the "AcceptObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest getAcceptObjectsRequest();
    
    /**
     * Sets the "AcceptObjectsRequest" element
     */
    void setAcceptObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest acceptObjectsRequest);
    
    /**
     * Appends and returns a new empty "AcceptObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest addNewAcceptObjectsRequest();
    
    /**
     * An XML AcceptObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public interface AcceptObjectsRequest extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryRequestType
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(AcceptObjectsRequest.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("acceptobjectsrequest6900elemtype");
        
        /**
         * Gets the "correlationId" attribute
         */
        java.lang.String getCorrelationId();
        
        /**
         * Gets (as xml) the "correlationId" attribute
         */
        org.apache.xmlbeans.XmlAnyURI xgetCorrelationId();
        
        /**
         * Sets the "correlationId" attribute
         */
        void setCorrelationId(java.lang.String correlationId);
        
        /**
         * Sets (as xml) the "correlationId" attribute
         */
        void xsetCorrelationId(org.apache.xmlbeans.XmlAnyURI correlationId);
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest newInstance() {
              return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
