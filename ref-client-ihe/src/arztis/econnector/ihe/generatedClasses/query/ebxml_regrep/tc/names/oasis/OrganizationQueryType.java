/*
 * XML Type:  OrganizationQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis;


/**
 * An XML OrganizationQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public interface OrganizationQueryType extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(OrganizationQueryType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("organizationquerytypec63btype");
    
    /**
     * Gets array of all "AddressFilter" elements
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getAddressFilterArray();
    
    /**
     * Gets ith "AddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getAddressFilterArray(int i);
    
    /**
     * Returns number of "AddressFilter" element
     */
    int sizeOfAddressFilterArray();
    
    /**
     * Sets array of all "AddressFilter" element
     */
    void setAddressFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] addressFilterArray);
    
    /**
     * Sets ith "AddressFilter" element
     */
    void setAddressFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addressFilter);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "AddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewAddressFilter(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "AddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewAddressFilter();
    
    /**
     * Removes the ith "AddressFilter" element
     */
    void removeAddressFilter(int i);
    
    /**
     * Gets array of all "TelephoneNumberFilter" elements
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getTelephoneNumberFilterArray();
    
    /**
     * Gets ith "TelephoneNumberFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getTelephoneNumberFilterArray(int i);
    
    /**
     * Returns number of "TelephoneNumberFilter" element
     */
    int sizeOfTelephoneNumberFilterArray();
    
    /**
     * Sets array of all "TelephoneNumberFilter" element
     */
    void setTelephoneNumberFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] telephoneNumberFilterArray);
    
    /**
     * Sets ith "TelephoneNumberFilter" element
     */
    void setTelephoneNumberFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType telephoneNumberFilter);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "TelephoneNumberFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewTelephoneNumberFilter(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "TelephoneNumberFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewTelephoneNumberFilter();
    
    /**
     * Removes the ith "TelephoneNumberFilter" element
     */
    void removeTelephoneNumberFilter(int i);
    
    /**
     * Gets array of all "EmailAddressFilter" elements
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getEmailAddressFilterArray();
    
    /**
     * Gets ith "EmailAddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getEmailAddressFilterArray(int i);
    
    /**
     * Returns number of "EmailAddressFilter" element
     */
    int sizeOfEmailAddressFilterArray();
    
    /**
     * Sets array of all "EmailAddressFilter" element
     */
    void setEmailAddressFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] emailAddressFilterArray);
    
    /**
     * Sets ith "EmailAddressFilter" element
     */
    void setEmailAddressFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType emailAddressFilter);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "EmailAddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewEmailAddressFilter(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "EmailAddressFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewEmailAddressFilter();
    
    /**
     * Removes the ith "EmailAddressFilter" element
     */
    void removeEmailAddressFilter(int i);
    
    /**
     * Gets the "ParentQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType getParentQuery();
    
    /**
     * True if has "ParentQuery" element
     */
    boolean isSetParentQuery();
    
    /**
     * Sets the "ParentQuery" element
     */
    void setParentQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parentQuery);
    
    /**
     * Appends and returns a new empty "ParentQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType addNewParentQuery();
    
    /**
     * Unsets the "ParentQuery" element
     */
    void unsetParentQuery();
    
    /**
     * Gets array of all "ChildOrganizationQuery" elements
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[] getChildOrganizationQueryArray();
    
    /**
     * Gets ith "ChildOrganizationQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType getChildOrganizationQueryArray(int i);
    
    /**
     * Returns number of "ChildOrganizationQuery" element
     */
    int sizeOfChildOrganizationQueryArray();
    
    /**
     * Sets array of all "ChildOrganizationQuery" element
     */
    void setChildOrganizationQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[] childOrganizationQueryArray);
    
    /**
     * Sets ith "ChildOrganizationQuery" element
     */
    void setChildOrganizationQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType childOrganizationQuery);
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ChildOrganizationQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType insertNewChildOrganizationQuery(int i);
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ChildOrganizationQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType addNewChildOrganizationQuery();
    
    /**
     * Removes the ith "ChildOrganizationQuery" element
     */
    void removeChildOrganizationQuery(int i);
    
    /**
     * Gets the "PrimaryContactQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType getPrimaryContactQuery();
    
    /**
     * True if has "PrimaryContactQuery" element
     */
    boolean isSetPrimaryContactQuery();
    
    /**
     * Sets the "PrimaryContactQuery" element
     */
    void setPrimaryContactQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType primaryContactQuery);
    
    /**
     * Appends and returns a new empty "PrimaryContactQuery" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType addNewPrimaryContactQuery();
    
    /**
     * Unsets the "PrimaryContactQuery" element
     */
    void unsetPrimaryContactQuery();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
