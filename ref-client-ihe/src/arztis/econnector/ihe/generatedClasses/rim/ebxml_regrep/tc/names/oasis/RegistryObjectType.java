/*
 * XML Type:  RegistryObjectType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis;


/**
 * An XML RegistryObjectType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public interface RegistryObjectType extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryObjectType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registryobjecttype3842type");
    
    /**
     * Gets the "Name" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType getName();
    
    /**
     * True if has "Name" element
     */
    boolean isSetName();
    
    /**
     * Sets the "Name" element
     */
    void setName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType name);
    
    /**
     * Appends and returns a new empty "Name" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType addNewName();
    
    /**
     * Unsets the "Name" element
     */
    void unsetName();
    
    /**
     * Gets the "Description" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType getDescription();
    
    /**
     * True if has "Description" element
     */
    boolean isSetDescription();
    
    /**
     * Sets the "Description" element
     */
    void setDescription(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType description);
    
    /**
     * Appends and returns a new empty "Description" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType addNewDescription();
    
    /**
     * Unsets the "Description" element
     */
    void unsetDescription();
    
    /**
     * Gets the "VersionInfo" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType getVersionInfo();
    
    /**
     * True if has "VersionInfo" element
     */
    boolean isSetVersionInfo();
    
    /**
     * Sets the "VersionInfo" element
     */
    void setVersionInfo(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType versionInfo);
    
    /**
     * Appends and returns a new empty "VersionInfo" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType addNewVersionInfo();
    
    /**
     * Unsets the "VersionInfo" element
     */
    void unsetVersionInfo();
    
    /**
     * Gets array of all "Classification" elements
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[] getClassificationArray();
    
    /**
     * Gets ith "Classification" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType getClassificationArray(int i);
    
    /**
     * Returns number of "Classification" element
     */
    int sizeOfClassificationArray();
    
    /**
     * Sets array of all "Classification" element
     */
    void setClassificationArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[] classificationArray);
    
    /**
     * Sets ith "Classification" element
     */
    void setClassificationArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType classification);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Classification" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType insertNewClassification(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Classification" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType addNewClassification();
    
    /**
     * Removes the ith "Classification" element
     */
    void removeClassification(int i);
    
    /**
     * Gets array of all "ExternalIdentifier" elements
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType[] getExternalIdentifierArray();
    
    /**
     * Gets ith "ExternalIdentifier" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType getExternalIdentifierArray(int i);
    
    /**
     * Returns number of "ExternalIdentifier" element
     */
    int sizeOfExternalIdentifierArray();
    
    /**
     * Sets array of all "ExternalIdentifier" element
     */
    void setExternalIdentifierArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType[] externalIdentifierArray);
    
    /**
     * Sets ith "ExternalIdentifier" element
     */
    void setExternalIdentifierArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType externalIdentifier);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ExternalIdentifier" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType insertNewExternalIdentifier(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ExternalIdentifier" element
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType addNewExternalIdentifier();
    
    /**
     * Removes the ith "ExternalIdentifier" element
     */
    void removeExternalIdentifier(int i);
    
    /**
     * Gets the "lid" attribute
     */
    java.lang.String getLid();
    
    /**
     * Gets (as xml) the "lid" attribute
     */
    org.apache.xmlbeans.XmlAnyURI xgetLid();
    
    /**
     * True if has "lid" attribute
     */
    boolean isSetLid();
    
    /**
     * Sets the "lid" attribute
     */
    void setLid(java.lang.String lid);
    
    /**
     * Sets (as xml) the "lid" attribute
     */
    void xsetLid(org.apache.xmlbeans.XmlAnyURI lid);
    
    /**
     * Unsets the "lid" attribute
     */
    void unsetLid();
    
    /**
     * Gets the "objectType" attribute
     */
    java.lang.String getObjectType();
    
    /**
     * Gets (as xml) the "objectType" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetObjectType();
    
    /**
     * True if has "objectType" attribute
     */
    boolean isSetObjectType();
    
    /**
     * Sets the "objectType" attribute
     */
    void setObjectType(java.lang.String objectType);
    
    /**
     * Sets (as xml) the "objectType" attribute
     */
    void xsetObjectType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI objectType);
    
    /**
     * Unsets the "objectType" attribute
     */
    void unsetObjectType();
    
    /**
     * Gets the "status" attribute
     */
    java.lang.String getStatus();
    
    /**
     * Gets (as xml) the "status" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetStatus();
    
    /**
     * True if has "status" attribute
     */
    boolean isSetStatus();
    
    /**
     * Sets the "status" attribute
     */
    void setStatus(java.lang.String status);
    
    /**
     * Sets (as xml) the "status" attribute
     */
    void xsetStatus(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI status);
    
    /**
     * Unsets the "status" attribute
     */
    void unsetStatus();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
