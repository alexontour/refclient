/*
 * An XML document type.
 * Localname: PolicyReference
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy;


/**
 * A document containing one PolicyReference(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public interface PolicyReferenceDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(PolicyReferenceDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("policyreferenceea6ddoctype");
    
    /**
     * Gets the "PolicyReference" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference getPolicyReference();
    
    /**
     * Sets the "PolicyReference" element
     */
    void setPolicyReference(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference policyReference);
    
    /**
     * Appends and returns a new empty "PolicyReference" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference addNewPolicyReference();
    
    /**
     * An XML PolicyReference(@http://www.w3.org/ns/ws-policy).
     *
     * This is a complex type.
     */
    public interface PolicyReference extends org.apache.xmlbeans.XmlObject
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(PolicyReference.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("policyreference1a88elemtype");
        
        /**
         * Gets the "URI" attribute
         */
        java.lang.String getURI();
        
        /**
         * Gets (as xml) the "URI" attribute
         */
        org.apache.xmlbeans.XmlAnyURI xgetURI();
        
        /**
         * Sets the "URI" attribute
         */
        void setURI(java.lang.String uri);
        
        /**
         * Sets (as xml) the "URI" attribute
         */
        void xsetURI(org.apache.xmlbeans.XmlAnyURI uri);
        
        /**
         * Gets the "Digest" attribute
         */
        byte[] getDigest();
        
        /**
         * Gets (as xml) the "Digest" attribute
         */
        org.apache.xmlbeans.XmlBase64Binary xgetDigest();
        
        /**
         * True if has "Digest" attribute
         */
        boolean isSetDigest();
        
        /**
         * Sets the "Digest" attribute
         */
        void setDigest(byte[] digest);
        
        /**
         * Sets (as xml) the "Digest" attribute
         */
        void xsetDigest(org.apache.xmlbeans.XmlBase64Binary digest);
        
        /**
         * Unsets the "Digest" attribute
         */
        void unsetDigest();
        
        /**
         * Gets the "DigestAlgorithm" attribute
         */
        java.lang.String getDigestAlgorithm();
        
        /**
         * Gets (as xml) the "DigestAlgorithm" attribute
         */
        org.apache.xmlbeans.XmlAnyURI xgetDigestAlgorithm();
        
        /**
         * True if has "DigestAlgorithm" attribute
         */
        boolean isSetDigestAlgorithm();
        
        /**
         * Sets the "DigestAlgorithm" attribute
         */
        void setDigestAlgorithm(java.lang.String digestAlgorithm);
        
        /**
         * Sets (as xml) the "DigestAlgorithm" attribute
         */
        void xsetDigestAlgorithm(org.apache.xmlbeans.XmlAnyURI digestAlgorithm);
        
        /**
         * Unsets the "DigestAlgorithm" attribute
         */
        void unsetDigestAlgorithm();
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference newInstance() {
              return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
