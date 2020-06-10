/*
 * XML Type:  RequestSecurityTokenResponseType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512;


/**
 * An XML RequestSecurityTokenResponseType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public interface RequestSecurityTokenResponseType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RequestSecurityTokenResponseType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.s7BF52E4086C44A1A966935CB5C33C75C").resolveHandle("requestsecuritytokenresponsetypee599type");
    
    /**
     * Gets the "TokenType" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum getTokenType();
    
    /**
     * Gets (as xml) the "TokenType" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType xgetTokenType();
    
    /**
     * Tests for nil "TokenType" element
     */
    boolean isNilTokenType();
    
    /**
     * Sets the "TokenType" element
     */
    void setTokenType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum tokenType);
    
    /**
     * Sets (as xml) the "TokenType" element
     */
    void xsetTokenType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType tokenType);
    
    /**
     * Nils the "TokenType" element
     */
    void setNilTokenType();
    
    /**
     * Gets the "RequestedSecurityToken" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType getRequestedSecurityToken();
    
    /**
     * True if has "RequestedSecurityToken" element
     */
    boolean isSetRequestedSecurityToken();
    
    /**
     * Sets the "RequestedSecurityToken" element
     */
    void setRequestedSecurityToken(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType requestedSecurityToken);
    
    /**
     * Appends and returns a new empty "RequestedSecurityToken" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType addNewRequestedSecurityToken();
    
    /**
     * Unsets the "RequestedSecurityToken" element
     */
    void unsetRequestedSecurityToken();
    
    /**
     * Gets the "RequestedTokenCancelled" element
     */
    java.lang.String getRequestedTokenCancelled();
    
    /**
     * Gets (as xml) the "RequestedTokenCancelled" element
     */
    org.apache.xmlbeans.XmlString xgetRequestedTokenCancelled();
    
    /**
     * True if has "RequestedTokenCancelled" element
     */
    boolean isSetRequestedTokenCancelled();
    
    /**
     * Sets the "RequestedTokenCancelled" element
     */
    void setRequestedTokenCancelled(java.lang.String requestedTokenCancelled);
    
    /**
     * Sets (as xml) the "RequestedTokenCancelled" element
     */
    void xsetRequestedTokenCancelled(org.apache.xmlbeans.XmlString requestedTokenCancelled);
    
    /**
     * Unsets the "RequestedTokenCancelled" element
     */
    void unsetRequestedTokenCancelled();
    
    /**
     * Gets the "Lifetime" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType getLifetime();
    
    /**
     * True if has "Lifetime" element
     */
    boolean isSetLifetime();
    
    /**
     * Sets the "Lifetime" element
     */
    void setLifetime(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType lifetime);
    
    /**
     * Appends and returns a new empty "Lifetime" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType addNewLifetime();
    
    /**
     * Unsets the "Lifetime" element
     */
    void unsetLifetime();
    
    /**
     * Gets the "patidRoot" element
     */
    java.lang.String getPatidRoot();
    
    /**
     * Gets (as xml) the "patidRoot" element
     */
    org.apache.xmlbeans.XmlString xgetPatidRoot();
    
    /**
     * True if has "patidRoot" element
     */
    boolean isSetPatidRoot();
    
    /**
     * Sets the "patidRoot" element
     */
    void setPatidRoot(java.lang.String patidRoot);
    
    /**
     * Sets (as xml) the "patidRoot" element
     */
    void xsetPatidRoot(org.apache.xmlbeans.XmlString patidRoot);
    
    /**
     * Unsets the "patidRoot" element
     */
    void unsetPatidRoot();
    
    /**
     * Gets the "patidExtension" element
     */
    java.lang.String getPatidExtension();
    
    /**
     * Gets (as xml) the "patidExtension" element
     */
    org.apache.xmlbeans.XmlString xgetPatidExtension();
    
    /**
     * True if has "patidExtension" element
     */
    boolean isSetPatidExtension();
    
    /**
     * Sets the "patidExtension" element
     */
    void setPatidExtension(java.lang.String patidExtension);
    
    /**
     * Sets (as xml) the "patidExtension" element
     */
    void xsetPatidExtension(org.apache.xmlbeans.XmlString patidExtension);
    
    /**
     * Unsets the "patidExtension" element
     */
    void unsetPatidExtension();
    
    /**
     * Gets the "Context" attribute
     */
    java.lang.String getContext();
    
    /**
     * Gets (as xml) the "Context" attribute
     */
    org.apache.xmlbeans.XmlAnyURI xgetContext();
    
    /**
     * True if has "Context" attribute
     */
    boolean isSetContext();
    
    /**
     * Sets the "Context" attribute
     */
    void setContext(java.lang.String context);
    
    /**
     * Sets (as xml) the "Context" attribute
     */
    void xsetContext(org.apache.xmlbeans.XmlAnyURI context);
    
    /**
     * Unsets the "Context" attribute
     */
    void unsetContext();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
