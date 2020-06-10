/*
 * An XML document type.
 * Localname: ProvideAndRegisterDocumentSetRequest
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe;


/**
 * A document containing one ProvideAndRegisterDocumentSetRequest(@urn:ihe:iti:xds-b:2007) element.
 *
 * This is a complex type.
 */
public interface ProvideAndRegisterDocumentSetRequestDocument extends org.apache.xmlbeans.XmlObject
{
    public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)
        org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader(ProvideAndRegisterDocumentSetRequestDocument.class.getClassLoader(), "schemaorg_apache_xmlbeans.system.sA176CE12641784571DF8C98A0DCB19FE").resolveHandle("provideandregisterdocumentsetrequestfdc2doctype");
    
    /**
     * Gets the "ProvideAndRegisterDocumentSetRequest" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType getProvideAndRegisterDocumentSetRequest();
    
    /**
     * Sets the "ProvideAndRegisterDocumentSetRequest" element
     */
    void setProvideAndRegisterDocumentSetRequest(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType provideAndRegisterDocumentSetRequest);
    
    /**
     * Appends and returns a new empty "ProvideAndRegisterDocumentSetRequest" element
     */
    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType addNewProvideAndRegisterDocumentSetRequest();
    
    /**
     * A factory class with static methods for creating instances
     * of this type.
     */
    
    public static final class Factory
    {
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument newInstance() {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument newInstance(org.apache.xmlbeans.XmlOptions options) {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }
        
        /** @param xmlAsString the string value to parse */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }
        
        /** @param file the file from which to load an xml document */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }
        
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument) org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }
        
        /** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */
        public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {
          return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }
        
        private Factory() { } // No instance of this class allowed
    }
}
