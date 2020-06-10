/*
 * An XML document type.
 * Localname: All
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AllDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one All(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class AllDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AllDocument
{
    private static final long serialVersionUID = 1L;
    
    public AllDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ALL$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "All");
    
    
    /**
     * Gets the "All" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType getAll()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().find_element_user(ALL$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "All" element
     */
    public void setAll(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType all)
    {
        generatedSetterHelperImpl(all, ALL$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "All" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType addNewAll()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().add_element_user(ALL$0);
            return target;
        }
    }
}
