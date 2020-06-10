/*
 * An XML document type.
 * Localname: URI
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one URI(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class URIDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument
{
    private static final long serialVersionUID = 1L;
    
    public URIDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName URI$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "URI");
    
    
    /**
     * Gets the "URI" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI getURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI)get_store().find_element_user(URI$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "URI" element
     */
    public void setURI(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI uri)
    {
        generatedSetterHelperImpl(uri, URI$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "URI" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI addNewURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI)get_store().add_element_user(URI$0);
            return target;
        }
    }
    /**
     * An XML URI(@http://www.w3.org/ns/ws-policy).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument$URI.
     */
    public static class URIImpl extends org.apache.xmlbeans.impl.values.JavaUriHolderEx implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.URIDocument.URI
    {
        private static final long serialVersionUID = 1L;
        
        public URIImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, true);
        }
        
        protected URIImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
        
        
    }
}
