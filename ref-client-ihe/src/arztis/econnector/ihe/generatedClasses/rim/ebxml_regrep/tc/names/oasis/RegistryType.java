/*
 * XML Type:  RegistryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis;


/**
 * An XML RegistryType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public interface RegistryType extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(RegistryType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("registrytype6f63type");
    
    /**
     * Gets the "operator" attribute
     */
    java.lang.String getOperator();
    
    /**
     * Gets (as xml) the "operator" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetOperator();
    
    /**
     * Sets the "operator" attribute
     */
    void setOperator(java.lang.String operator);
    
    /**
     * Sets (as xml) the "operator" attribute
     */
    void xsetOperator(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI operator);
    
    /**
     * Gets the "specificationVersion" attribute
     */
    java.lang.String getSpecificationVersion();
    
    /**
     * Gets (as xml) the "specificationVersion" attribute
     */
    org.apache.xmlbeans.XmlString xgetSpecificationVersion();
    
    /**
     * Sets the "specificationVersion" attribute
     */
    void setSpecificationVersion(java.lang.String specificationVersion);
    
    /**
     * Sets (as xml) the "specificationVersion" attribute
     */
    void xsetSpecificationVersion(org.apache.xmlbeans.XmlString specificationVersion);
    
    /**
     * Gets the "replicationSyncLatency" attribute
     */
    org.apache.xmlbeans.GDuration getReplicationSyncLatency();
    
    /**
     * Gets (as xml) the "replicationSyncLatency" attribute
     */
    org.apache.xmlbeans.XmlDuration xgetReplicationSyncLatency();
    
    /**
     * True if has "replicationSyncLatency" attribute
     */
    boolean isSetReplicationSyncLatency();
    
    /**
     * Sets the "replicationSyncLatency" attribute
     */
    void setReplicationSyncLatency(org.apache.xmlbeans.GDuration replicationSyncLatency);
    
    /**
     * Sets (as xml) the "replicationSyncLatency" attribute
     */
    void xsetReplicationSyncLatency(org.apache.xmlbeans.XmlDuration replicationSyncLatency);
    
    /**
     * Unsets the "replicationSyncLatency" attribute
     */
    void unsetReplicationSyncLatency();
    
    /**
     * Gets the "catalogingLatency" attribute
     */
    org.apache.xmlbeans.GDuration getCatalogingLatency();
    
    /**
     * Gets (as xml) the "catalogingLatency" attribute
     */
    org.apache.xmlbeans.XmlDuration xgetCatalogingLatency();
    
    /**
     * True if has "catalogingLatency" attribute
     */
    boolean isSetCatalogingLatency();
    
    /**
     * Sets the "catalogingLatency" attribute
     */
    void setCatalogingLatency(org.apache.xmlbeans.GDuration catalogingLatency);
    
    /**
     * Sets (as xml) the "catalogingLatency" attribute
     */
    void xsetCatalogingLatency(org.apache.xmlbeans.XmlDuration catalogingLatency);
    
    /**
     * Unsets the "catalogingLatency" attribute
     */
    void unsetCatalogingLatency();
    
    /**
     * Gets the "conformanceProfile" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile.Enum getConformanceProfile();
    
    /**
     * Gets (as xml) the "conformanceProfile" attribute
     */
    arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile xgetConformanceProfile();
    
    /**
     * True if has "conformanceProfile" attribute
     */
    boolean isSetConformanceProfile();
    
    /**
     * Sets the "conformanceProfile" attribute
     */
    void setConformanceProfile(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile.Enum conformanceProfile);
    
    /**
     * Sets (as xml) the "conformanceProfile" attribute
     */
    void xsetConformanceProfile(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile conformanceProfile);
    
    /**
     * Unsets the "conformanceProfile" attribute
     */
    void unsetConformanceProfile();
    
    /**
     * An XML conformanceProfile(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType$ConformanceProfile.
     */
    public interface ConformanceProfile extends org.apache.xmlbeans.XmlNCName
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(ConformanceProfile.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("conformanceprofile896fattrtype");
        
        org.apache.xmlbeans.StringEnumAbstractBase enumValue();
        void set(org.apache.xmlbeans.StringEnumAbstractBase e);
        
        static final Enum REGISTRY_FULL = Enum.forString("registryFull");
        static final Enum REGISTRY_LITE = Enum.forString("registryLite");
        
        static final int INT_REGISTRY_FULL = Enum.INT_REGISTRY_FULL;
        static final int INT_REGISTRY_LITE = Enum.INT_REGISTRY_LITE;
        
        /**
         * Enumeration value class for arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType$ConformanceProfile.
         * These enum values can be used as follows:
         * <pre>
         * enum.toString(); // returns the string value of the enum
         * enum.intValue(); // returns an int value, useful for switches
         * // e.g., case Enum.INT_REGISTRY_FULL
         * Enum.forString(s); // returns the enum value for a string
         * Enum.forInt(i); // returns the enum value for an int
         * </pre>
         * Enumeration objects are immutable singleton objects that
         * can be compared using == object equality. They have no
         * public constructor. See the constants defined within this
         * class for all the valid values.
         */
        static final class Enum extends org.apache.xmlbeans.StringEnumAbstractBase
        {
            /**
             * Returns the enum value for a string, or null if none.
             */
            public static Enum forString(java.lang.String s)
                { return (Enum)table.forString(s); }
            /**
             * Returns the enum value corresponding to an int, or null if none.
             */
            public static Enum forInt(int i)
                { return (Enum)table.forInt(i); }
            
            private Enum(java.lang.String s, int i)
                { super(s, i); }
            
            static final int INT_REGISTRY_FULL = 1;
            static final int INT_REGISTRY_LITE = 2;
            
            public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table =
                new org.apache.xmlbeans.StringEnumAbstractBase.Table
            (
                new Enum[]
                {
                    new Enum("registryFull", INT_REGISTRY_FULL),
                    new Enum("registryLite", INT_REGISTRY_LITE),
                }
            );
            private static final long serialVersionUID = 1L;
            private java.lang.Object readResolve() { return forInt(intValue()); } 
        }
        
        /**
         * A factory class with static methods for creating instances
         * of this type.
         */
        
        public static final class Factory
        {
            public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile newValue(java.lang.Object obj) {
              return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile) type.newValue( obj ); }
            
            public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile newInstance() {
              return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
