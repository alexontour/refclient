/*
 * XML Type:  TelephoneNumberType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis;


/**
 * An XML TelephoneNumberType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public interface TelephoneNumberType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(TelephoneNumberType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("telephonenumbertypeec61type");
    
    /**
     * Gets the "areaCode" attribute
     */
    java.lang.String getAreaCode();
    
    /**
     * Gets (as xml) the "areaCode" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetAreaCode();
    
    /**
     * True if has "areaCode" attribute
     */
    boolean isSetAreaCode();
    
    /**
     * Sets the "areaCode" attribute
     */
    void setAreaCode(java.lang.String areaCode);
    
    /**
     * Sets (as xml) the "areaCode" attribute
     */
    void xsetAreaCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 areaCode);
    
    /**
     * Unsets the "areaCode" attribute
     */
    void unsetAreaCode();
    
    /**
     * Gets the "countryCode" attribute
     */
    java.lang.String getCountryCode();
    
    /**
     * Gets (as xml) the "countryCode" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetCountryCode();
    
    /**
     * True if has "countryCode" attribute
     */
    boolean isSetCountryCode();
    
    /**
     * Sets the "countryCode" attribute
     */
    void setCountryCode(java.lang.String countryCode);
    
    /**
     * Sets (as xml) the "countryCode" attribute
     */
    void xsetCountryCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 countryCode);
    
    /**
     * Unsets the "countryCode" attribute
     */
    void unsetCountryCode();
    
    /**
     * Gets the "extension" attribute
     */
    java.lang.String getExtension();
    
    /**
     * Gets (as xml) the "extension" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetExtension();
    
    /**
     * True if has "extension" attribute
     */
    boolean isSetExtension();
    
    /**
     * Sets the "extension" attribute
     */
    void setExtension(java.lang.String extension);
    
    /**
     * Sets (as xml) the "extension" attribute
     */
    void xsetExtension(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 extension);
    
    /**
     * Unsets the "extension" attribute
     */
    void unsetExtension();
    
    /**
     * Gets the "number" attribute
     */
    java.lang.String getNumber();
    
    /**
     * Gets (as xml) the "number" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 xgetNumber();
    
    /**
     * True if has "number" attribute
     */
    boolean isSetNumber();
    
    /**
     * Sets the "number" attribute
     */
    void setNumber(java.lang.String number);
    
    /**
     * Sets (as xml) the "number" attribute
     */
    void xsetNumber(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 number);
    
    /**
     * Unsets the "number" attribute
     */
    void unsetNumber();
    
    /**
     * Gets the "phoneType" attribute
     */
    java.lang.String getPhoneType();
    
    /**
     * Gets (as xml) the "phoneType" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 xgetPhoneType();
    
    /**
     * True if has "phoneType" attribute
     */
    boolean isSetPhoneType();
    
    /**
     * Sets the "phoneType" attribute
     */
    void setPhoneType(java.lang.String phoneType);
    
    /**
     * Sets (as xml) the "phoneType" attribute
     */
    void xsetPhoneType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 phoneType);
    
    /**
     * Unsets the "phoneType" attribute
     */
    void unsetPhoneType();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
