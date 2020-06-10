/*
 * XML Type:  SimpleFilterType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis;


/**
 * An XML SimpleFilterType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public interface SimpleFilterType extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(SimpleFilterType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("simplefiltertype4b62type");
    
    /**
     * Gets the "domainAttribute" attribute
     */
    java.lang.String getDomainAttribute();
    
    /**
     * Gets (as xml) the "domainAttribute" attribute
     */
    org.apache.xmlbeans.XmlString xgetDomainAttribute();
    
    /**
     * Sets the "domainAttribute" attribute
     */
    void setDomainAttribute(java.lang.String domainAttribute);
    
    /**
     * Sets (as xml) the "domainAttribute" attribute
     */
    void xsetDomainAttribute(org.apache.xmlbeans.XmlString domainAttribute);
    
    /**
     * Gets the "comparator" attribute
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator.Enum getComparator();
    
    /**
     * Gets (as xml) the "comparator" attribute
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator xgetComparator();
    
    /**
     * Sets the "comparator" attribute
     */
    void setComparator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator.Enum comparator);
    
    /**
     * Sets (as xml) the "comparator" attribute
     */
    void xsetComparator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator comparator);
    
    /**
     * An XML comparator(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType$Comparator.
     */
    public interface Comparator extends org.apache.xmlbeans.XmlNCName
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(Comparator.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("comparator582cattrtype");
        
        org.apache.xmlbeans.StringEnumAbstractBase enumValue();
        void set(org.apache.xmlbeans.StringEnumAbstractBase e);
        
        static final Enum LE = Enum.forString("LE");
        static final Enum LT = Enum.forString("LT");
        static final Enum GE = Enum.forString("GE");
        static final Enum GT = Enum.forString("GT");
        static final Enum EQ = Enum.forString("EQ");
        static final Enum NE = Enum.forString("NE");
        static final Enum LIKE = Enum.forString("Like");
        static final Enum NOT_LIKE = Enum.forString("NotLike");
        
        static final int INT_LE = Enum.INT_LE;
        static final int INT_LT = Enum.INT_LT;
        static final int INT_GE = Enum.INT_GE;
        static final int INT_GT = Enum.INT_GT;
        static final int INT_EQ = Enum.INT_EQ;
        static final int INT_NE = Enum.INT_NE;
        static final int INT_LIKE = Enum.INT_LIKE;
        static final int INT_NOT_LIKE = Enum.INT_NOT_LIKE;
        
        /**
         * Enumeration value class for arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType$Comparator.
         * These enum values can be used as follows:
         * <pre>
         * enum.toString(); // returns the string value of the enum
         * enum.intValue(); // returns an int value, useful for switches
         * // e.g., case Enum.INT_LE
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
            
            static final int INT_LE = 1;
            static final int INT_LT = 2;
            static final int INT_GE = 3;
            static final int INT_GT = 4;
            static final int INT_EQ = 5;
            static final int INT_NE = 6;
            static final int INT_LIKE = 7;
            static final int INT_NOT_LIKE = 8;
            
            public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table =
                new org.apache.xmlbeans.StringEnumAbstractBase.Table
            (
                new Enum[]
                {
                    new Enum("LE", INT_LE),
                    new Enum("LT", INT_LT),
                    new Enum("GE", INT_GE),
                    new Enum("GT", INT_GT),
                    new Enum("EQ", INT_EQ),
                    new Enum("NE", INT_NE),
                    new Enum("Like", INT_LIKE),
                    new Enum("NotLike", INT_NOT_LIKE),
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
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator newValue(java.lang.Object obj) {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator) type.newValue( obj ); }
            
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator newInstance() {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        /** @deprecated No need to be able to create instances of abstract types */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        /** @deprecated No need to be able to create instances of abstract types */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
