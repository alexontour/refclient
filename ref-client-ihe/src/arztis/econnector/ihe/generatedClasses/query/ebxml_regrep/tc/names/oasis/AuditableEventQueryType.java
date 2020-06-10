/*
 * XML Type:  AuditableEventQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis;


/**
 * An XML AuditableEventQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public interface AuditableEventQueryType extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(AuditableEventQueryType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("auditableeventquerytype7989type");
    
    /**
     * Gets array of all "AffectedObjectQuery" elements
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[] getAffectedObjectQueryArray();
    
    /**
     * Gets ith "AffectedObjectQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getAffectedObjectQueryArray(int i);
    
    /**
     * Returns number of "AffectedObjectQuery" element
     */
    int sizeOfAffectedObjectQueryArray();
    
    /**
     * Sets array of all "AffectedObjectQuery" element
     */
    void setAffectedObjectQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[] affectedObjectQueryArray);
    
    /**
     * Sets ith "AffectedObjectQuery" element
     */
    void setAffectedObjectQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType affectedObjectQuery);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "AffectedObjectQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType insertNewAffectedObjectQuery(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "AffectedObjectQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewAffectedObjectQuery();
    
    /**
     * Removes the ith "AffectedObjectQuery" element
     */
    void removeAffectedObjectQuery(int i);
    
    /**
     * Gets the "EventTypeQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getEventTypeQuery();
    
    /**
     * True if has "EventTypeQuery" element
     */
    boolean isSetEventTypeQuery();
    
    /**
     * Sets the "EventTypeQuery" element
     */
    void setEventTypeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType eventTypeQuery);
    
    /**
     * Appends and returns a new empty "EventTypeQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewEventTypeQuery();
    
    /**
     * Unsets the "EventTypeQuery" element
     */
    void unsetEventTypeQuery();
    
    /**
     * Gets the "UserQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType getUserQuery();
    
    /**
     * True if has "UserQuery" element
     */
    boolean isSetUserQuery();
    
    /**
     * Sets the "UserQuery" element
     */
    void setUserQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType userQuery);
    
    /**
     * Appends and returns a new empty "UserQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType addNewUserQuery();
    
    /**
     * Unsets the "UserQuery" element
     */
    void unsetUserQuery();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
