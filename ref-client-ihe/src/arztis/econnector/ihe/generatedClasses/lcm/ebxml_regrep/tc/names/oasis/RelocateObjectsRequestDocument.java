/*
 * An XML document type.
 * Localname: RelocateObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis;


/**
 * A document containing one RelocateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public interface RelocateObjectsRequestDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RelocateObjectsRequestDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("relocateobjectsrequest55dcdoctype");
    
    /**
     * Gets the "RelocateObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest getRelocateObjectsRequest();
    
    /**
     * Sets the "RelocateObjectsRequest" element
     */
    void setRelocateObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest relocateObjectsRequest);
    
    /**
     * Appends and returns a new empty "RelocateObjectsRequest" element
     */
    arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest addNewRelocateObjectsRequest();
    
    /**
     * An XML RelocateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public interface RelocateObjectsRequest extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryRequestType
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RelocateObjectsRequest.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("relocateobjectsrequest8720elemtype");
        
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
         * Gets the "SourceRegistry" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getSourceRegistry();
        
        /**
         * Sets the "SourceRegistry" element
         */
        void setSourceRegistry(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType sourceRegistry);
        
        /**
         * Appends and returns a new empty "SourceRegistry" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewSourceRegistry();
        
        /**
         * Gets the "DestinationRegistry" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getDestinationRegistry();
        
        /**
         * Sets the "DestinationRegistry" element
         */
        void setDestinationRegistry(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType destinationRegistry);
        
        /**
         * Appends and returns a new empty "DestinationRegistry" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewDestinationRegistry();
        
        /**
         * Gets the "OwnerAtSource" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getOwnerAtSource();
        
        /**
         * Sets the "OwnerAtSource" element
         */
        void setOwnerAtSource(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType ownerAtSource);
        
        /**
         * Appends and returns a new empty "OwnerAtSource" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewOwnerAtSource();
        
        /**
         * Gets the "OwnerAtDestination" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getOwnerAtDestination();
        
        /**
         * Sets the "OwnerAtDestination" element
         */
        void setOwnerAtDestination(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType ownerAtDestination);
        
        /**
         * Appends and returns a new empty "OwnerAtDestination" element
         */
        arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewOwnerAtDestination();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest newInstance() {
              return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
