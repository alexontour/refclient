/*
 * XML Type:  faultcode
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope;


/**
 * An XML faultcode(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public interface Faultcode extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(Faultcode.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("faultcode8ea8type");
    
    /**
     * Gets the "Value" element
     */
    javax.xml.namespace.QName getValue();
    
    /**
     * Gets (as xml) the "Value" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultcodeEnum xgetValue();
    
    /**
     * Sets the "Value" element
     */
    void setValue(javax.xml.namespace.QName value);
    
    /**
     * Sets (as xml) the "Value" element
     */
    void xsetValue(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultcodeEnum value);
    
    /**
     * Gets the "Subcode" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Subcode getSubcode();
    
    /**
     * True if has "Subcode" element
     */
    boolean isSetSubcode();
    
    /**
     * Sets the "Subcode" element
     */
    void setSubcode(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Subcode subcode);
    
    /**
     * Appends and returns a new empty "Subcode" element
     */
    arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Subcode addNewSubcode();
    
    /**
     * Unsets the "Subcode" element
     */
    void unsetSubcode();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
