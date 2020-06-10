/*
 * XML Type:  TimestampType
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility;


/**
 * An XML TimestampType(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd).
 *
 * This is a complex type.
 */
public interface TimestampType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(TimestampType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("timestamptype73aetype");
    
    /**
     * Gets the "Created" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime getCreated();
    
    /**
     * True if has "Created" element
     */
    boolean isSetCreated();
    
    /**
     * Sets the "Created" element
     */
    void setCreated(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime created);
    
    /**
     * Appends and returns a new empty "Created" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime addNewCreated();
    
    /**
     * Unsets the "Created" element
     */
    void unsetCreated();
    
    /**
     * Gets the "Expires" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime getExpires();
    
    /**
     * True if has "Expires" element
     */
    boolean isSetExpires();
    
    /**
     * Sets the "Expires" element
     */
    void setExpires(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime expires);
    
    /**
     * Appends and returns a new empty "Expires" element
     */
    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime addNewExpires();
    
    /**
     * Unsets the "Expires" element
     */
    void unsetExpires();
    
    /**
     * Gets the "Id" attribute
     */
    java.lang.String getId();
    
    /**
     * Gets (as xml) the "Id" attribute
     */
    org.apache.xmlbeans.XmlID xgetId();
    
    /**
     * True if has "Id" attribute
     */
    boolean isSetId();
    
    /**
     * Sets the "Id" attribute
     */
    void setId(java.lang.String id);
    
    /**
     * Sets (as xml) the "Id" attribute
     */
    void xsetId(org.apache.xmlbeans.XmlID id);
    
    /**
     * Unsets the "Id" attribute
     */
    void unsetId();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
