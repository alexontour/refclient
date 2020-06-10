/*
 * XML Type:  Fault
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope;


/**
 * An XML Fault(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public interface Fault extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(Fault.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("fault961btype");
    
    /**
     * Gets the "Code" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode getCode();
    
    /**
     * Sets the "Code" element
     */
    void setCode(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode code);
    
    /**
     * Appends and returns a new empty "Code" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode addNewCode();
    
    /**
     * Gets the "Reason" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason getReason();
    
    /**
     * Sets the "Reason" element
     */
    void setReason(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason reason);
    
    /**
     * Appends and returns a new empty "Reason" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason addNewReason();
    
    /**
     * Gets the "Node" element
     */
    java.lang.String getNode();
    
    /**
     * Gets (as xml) the "Node" element
     */
    org.apache.xmlbeans.XmlAnyURI xgetNode();
    
    /**
     * True if has "Node" element
     */
    boolean isSetNode();
    
    /**
     * Sets the "Node" element
     */
    void setNode(java.lang.String node);
    
    /**
     * Sets (as xml) the "Node" element
     */
    void xsetNode(org.apache.xmlbeans.XmlAnyURI node);
    
    /**
     * Unsets the "Node" element
     */
    void unsetNode();
    
    /**
     * Gets the "Role" element
     */
    java.lang.String getRole();
    
    /**
     * Gets (as xml) the "Role" element
     */
    org.apache.xmlbeans.XmlAnyURI xgetRole();
    
    /**
     * True if has "Role" element
     */
    boolean isSetRole();
    
    /**
     * Sets the "Role" element
     */
    void setRole(java.lang.String role);
    
    /**
     * Sets (as xml) the "Role" element
     */
    void xsetRole(org.apache.xmlbeans.XmlAnyURI role);
    
    /**
     * Unsets the "Role" element
     */
    void unsetRole();
    
    /**
     * Gets the "Detail" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail getDetail();
    
    /**
     * True if has "Detail" element
     */
    boolean isSetDetail();
    
    /**
     * Sets the "Detail" element
     */
    void setDetail(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail detail);
    
    /**
     * Appends and returns a new empty "Detail" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail addNewDetail();
    
    /**
     * Unsets the "Detail" element
     */
    void unsetDetail();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
