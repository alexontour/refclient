/*
 * XML Type:  CompoundFilterType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis;


/**
 * An XML CompoundFilterType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public interface CompoundFilterType extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(CompoundFilterType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("compoundfiltertype961btype");
    
    /**
     * Gets the "LeftFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getLeftFilter();
    
    /**
     * Sets the "LeftFilter" element
     */
    void setLeftFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType leftFilter);
    
    /**
     * Appends and returns a new empty "LeftFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewLeftFilter();
    
    /**
     * Gets the "RightFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getRightFilter();
    
    /**
     * Sets the "RightFilter" element
     */
    void setRightFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType rightFilter);
    
    /**
     * Appends and returns a new empty "RightFilter" element
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewRightFilter();
    
    /**
     * Gets the "logicalOperator" attribute
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator.Enum getLogicalOperator();
    
    /**
     * Gets (as xml) the "logicalOperator" attribute
     */
    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator xgetLogicalOperator();
    
    /**
     * Sets the "logicalOperator" attribute
     */
    void setLogicalOperator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator.Enum logicalOperator);
    
    /**
     * Sets (as xml) the "logicalOperator" attribute
     */
    void xsetLogicalOperator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator logicalOperator);
    
    /**
     * An XML logicalOperator(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType$LogicalOperator.
     */
    public interface LogicalOperator extends org.apache.xmlbeans.XmlNCName
    {
        public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
            org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(LogicalOperator.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("logicaloperator09c6attrtype");
        
        org.apache.xmlbeans.StringEnumAbstractBase enumValue();
        void set(org.apache.xmlbeans.StringEnumAbstractBase e);
        
        static final Enum AND = Enum.forString("AND");
        static final Enum OR = Enum.forString("OR");
        
        static final int INT_AND = Enum.INT_AND;
        static final int INT_OR = Enum.INT_OR;
        
        /**
         * Enumeration value class for arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType$LogicalOperator.
         * These enum values can be used as follows:
         * <pre>
         * enum.toString(); // returns the string value of the enum
         * enum.intValue(); // returns an int value, useful for switches
         * // e.g., case Enum.INT_AND
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
            
            static final int INT_AND = 1;
            static final int INT_OR = 2;
            
            public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table =
                new org.apache.xmlbeans.StringEnumAbstractBase.Table
            (
                new Enum[]
                {
                    new Enum("AND", INT_AND),
                    new Enum("OR", INT_OR),
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
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator newValue(java.lang.Object obj) {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator) type.newValue( obj ); }
            
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator newInstance() {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
            
            public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator newInstance(org.apache.xmlbeans.XmlOptions options) {
              return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
            
            private Factory() { } // No instance of this class allowed
        }
    }
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
