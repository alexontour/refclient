/*
 * XML Type:  ExternalIdentifierType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis;


/**
 * An XML ExternalIdentifierType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public interface ExternalIdentifierType extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(ExternalIdentifierType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("externalidentifiertypee8batype");
    
    /**
     * Gets the "registryObject" attribute
     */
    java.lang.String getRegistryObject();
    
    /**
     * Gets (as xml) the "registryObject" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetRegistryObject();
    
    /**
     * Sets the "registryObject" attribute
     */
    void setRegistryObject(java.lang.String registryObject);
    
    /**
     * Sets (as xml) the "registryObject" attribute
     */
    void xsetRegistryObject(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI registryObject);
    
    /**
     * Gets the "identificationScheme" attribute
     */
    java.lang.String getIdentificationScheme();
    
    /**
     * Gets (as xml) the "identificationScheme" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetIdentificationScheme();
    
    /**
     * Sets the "identificationScheme" attribute
     */
    void setIdentificationScheme(java.lang.String identificationScheme);
    
    /**
     * Sets (as xml) the "identificationScheme" attribute
     */
    void xsetIdentificationScheme(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI identificationScheme);
    
    /**
     * Gets the "value" attribute
     */
    java.lang.String getValue();
    
    /**
     * Gets (as xml) the "value" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetValue();
    
    /**
     * Sets the "value" attribute
     */
    void setValue(java.lang.String value);
    
    /**
     * Sets (as xml) the "value" attribute
     */
    void xsetValue(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName value);
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
