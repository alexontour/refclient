/*
 * XML Type:  OptimizedMimeSerializationType
 * Namespace: http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy;


/**
 * An XML OptimizedMimeSerializationType(@http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization).
 *
 * This is a complex type.
 */
public interface OptimizedMimeSerializationType extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(OptimizedMimeSerializationType.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("optimizedmimeserializationtypea263type");
    
    /**
     * Gets the "Optional" attribute
     */
    boolean getOptional();
    
    /**
     * Gets (as xml) the "Optional" attribute
     */
    org.apache.xmlbeans.XmlBoolean xgetOptional();
    
    /**
     * True if has "Optional" attribute
     */
    boolean isSetOptional();
    
    /**
     * Sets the "Optional" attribute
     */
    void setOptional(boolean optional);
    
    /**
     * Sets (as xml) the "Optional" attribute
     */
    void xsetOptional(org.apache.xmlbeans.XmlBoolean optional);
    
    /**
     * Unsets the "Optional" attribute
     */
    void unsetOptional();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType newInstance() {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
