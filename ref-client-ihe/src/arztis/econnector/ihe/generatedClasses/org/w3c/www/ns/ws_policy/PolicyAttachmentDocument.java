/*
 * An XML document type.
 * Localname: PolicyAttachment
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy;


/**
 * A document containing one PolicyAttachment(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public interface PolicyAttachmentDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(PolicyAttachmentDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("policyattachmentea9fdoctype");
    
    /**
     * Gets the "PolicyAttachment" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment getPolicyAttachment();
    
    /**
     * Sets the "PolicyAttachment" element
     */
    void setPolicyAttachment(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment policyAttachment);
    
    /**
     * Appends and returns a new empty "PolicyAttachment" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment addNewPolicyAttachment();
    
    /**
     * An XML PolicyAttachment(@http://www.w3.org/ns/ws-policy).
     *
     * This is a complex type.
     */
    public interface PolicyAttachment extends org.apache.xmlbeans.XmlObject
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(PolicyAttachment.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("policyattachment1d10elemtype");
        
        /**
         * Gets the "AppliesTo" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo getAppliesTo();
        
        /**
         * Sets the "AppliesTo" element
         */
        void setAppliesTo(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo appliesTo);
        
        /**
         * Appends and returns a new empty "AppliesTo" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo addNewAppliesTo();
        
        /**
         * Gets array of all "Policy" elements
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] getPolicyArray();
        
        /**
         * Gets ith "Policy" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy getPolicyArray(int i);
        
        /**
         * Returns number of "Policy" element
         */
        int sizeOfPolicyArray();
        
        /**
         * Sets array of all "Policy" element
         */
        void setPolicyArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] policyArray);
        
        /**
         * Sets ith "Policy" element
         */
        void setPolicyArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy policy);
        
        /**
         * Inserts and returns a new empty value (as xml) as the ith "Policy" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy insertNewPolicy(int i);
        
        /**
         * Appends and returns a new empty value (as xml) as the last "Policy" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy addNewPolicy();
        
        /**
         * Removes the ith "Policy" element
         */
        void removePolicy(int i);
        
        /**
         * Gets array of all "PolicyReference" elements
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] getPolicyReferenceArray();
        
        /**
         * Gets ith "PolicyReference" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference getPolicyReferenceArray(int i);
        
        /**
         * Returns number of "PolicyReference" element
         */
        int sizeOfPolicyReferenceArray();
        
        /**
         * Sets array of all "PolicyReference" element
         */
        void setPolicyReferenceArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] policyReferenceArray);
        
        /**
         * Sets ith "PolicyReference" element
         */
        void setPolicyReferenceArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference policyReference);
        
        /**
         * Inserts and returns a new empty value (as xml) as the ith "PolicyReference" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference insertNewPolicyReference(int i);
        
        /**
         * Appends and returns a new empty value (as xml) as the last "PolicyReference" element
         */
        arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference addNewPolicyReference();
        
        /**
         * Removes the ith "PolicyReference" element
         */
        void removePolicyReference(int i);
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment newInstance() {
              return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
