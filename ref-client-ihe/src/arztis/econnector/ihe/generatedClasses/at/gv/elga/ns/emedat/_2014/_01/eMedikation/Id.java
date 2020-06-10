/*
 * XML Type:  id
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation;


/**
 * An XML id(@http://ns.elga.gv.at/emedat/2014/1/eMedikation).
 *
 * This is a complex type.
 */
public interface Id extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(Id.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.s4468D381F27FEE3DD269D35C557DD408").resolveHandle("id293etype");
    
    /**
     * Gets the "root" attribute
     */
    java.lang.String getRoot();
    
    /**
     * Gets (as xml) the "root" attribute
     */
    org.apache.xmlbeans.XmlString xgetRoot();
    
    /**
     * True if has "root" attribute
     */
    boolean isSetRoot();
    
    /**
     * Sets the "root" attribute
     */
    void setRoot(java.lang.String root);
    
    /**
     * Sets (as xml) the "root" attribute
     */
    void xsetRoot(org.apache.xmlbeans.XmlString root);
    
    /**
     * Unsets the "root" attribute
     */
    void unsetRoot();
    
    /**
     * Gets the "extension" attribute
     */
    java.lang.String getExtension();
    
    /**
     * Gets (as xml) the "extension" attribute
     */
    org.apache.xmlbeans.XmlString xgetExtension();
    
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
    void xsetExtension(org.apache.xmlbeans.XmlString extension);
    
    /**
     * Unsets the "extension" attribute
     */
    void unsetExtension();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id newInstance() {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
