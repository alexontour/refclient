/*
 * XML Type:  RequestedSecurityTokenType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512;


/**
 * An XML RequestedSecurityTokenType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public interface RequestedSecurityTokenType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RequestedSecurityTokenType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.s7BF52E4086C44A1A966935CB5C33C75C").resolveHandle("requestedsecuritytokentype27b9type");
    
    /**
     * Gets the "TRID" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType getTRID();
    
    /**
     * True if has "TRID" element
     */
    boolean isSetTRID();
    
    /**
     * Sets the "TRID" element
     */
    void setTRID(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType trid);
    
    /**
     * Appends and returns a new empty "TRID" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType addNewTRID();
    
    /**
     * Unsets the "TRID" element
     */
    void unsetTRID();
    
    /**
     * Gets the "TR" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType getTR();
    
    /**
     * True if has "TR" element
     */
    boolean isSetTR();
    
    /**
     * Sets the "TR" element
     */
    void setTR(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType tr);
    
    /**
     * Appends and returns a new empty "TR" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType addNewTR();
    
    /**
     * Unsets the "TR" element
     */
    void unsetTR();
    
    /**
     * Gets the "GeneratedPolicies" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType getGeneratedPolicies();
    
    /**
     * True if has "GeneratedPolicies" element
     */
    boolean isSetGeneratedPolicies();
    
    /**
     * Sets the "GeneratedPolicies" element
     */
    void setGeneratedPolicies(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType generatedPolicies);
    
    /**
     * Appends and returns a new empty "GeneratedPolicies" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType addNewGeneratedPolicies();
    
    /**
     * Unsets the "GeneratedPolicies" element
     */
    void unsetGeneratedPolicies();
    
    /**
     * Gets the "ElgaToken" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType getElgaToken();
    
    /**
     * True if has "ElgaToken" element
     */
    boolean isSetElgaToken();
    
    /**
     * Sets the "ElgaToken" element
     */
    void setElgaToken(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType elgaToken);
    
    /**
     * Appends and returns a new empty "ElgaToken" element
     */
    arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType addNewElgaToken();
    
    /**
     * Unsets the "ElgaToken" element
     */
    void unsetElgaToken();
    
    /**
     * Gets the "Assertion" element
     */
    arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType getAssertion();
    
    /**
     * True if has "Assertion" element
     */
    boolean isSetAssertion();
    
    /**
     * Sets the "Assertion" element
     */
    void setAssertion(arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType assertion);
    
    /**
     * Appends and returns a new empty "Assertion" element
     */
    arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType addNewAssertion();
    
    /**
     * Unsets the "Assertion" element
     */
    void unsetAssertion();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
