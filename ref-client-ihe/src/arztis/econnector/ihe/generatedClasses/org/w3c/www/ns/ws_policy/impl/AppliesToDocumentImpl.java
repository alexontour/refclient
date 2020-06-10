/*
 * An XML document type.
 * Localname: AppliesTo
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one AppliesTo(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class AppliesToDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument
{
    private static final long serialVersionUID = 1L;
    
    public AppliesToDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName APPLIESTO$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "AppliesTo");
    
    
    /**
     * Gets the "AppliesTo" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo getAppliesTo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo)get_store().find_element_user(APPLIESTO$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AppliesTo" element
     */
    public void setAppliesTo(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo appliesTo)
    {
        generatedSetterHelperImpl(appliesTo, APPLIESTO$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AppliesTo" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo addNewAppliesTo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo)get_store().add_element_user(APPLIESTO$0);
            return target;
        }
    }
    /**
     * An XML AppliesTo(@http://www.w3.org/ns/ws-policy).
     *
     * This is a complex type.
     */
    public static class AppliesToImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo
    {
        private static final long serialVersionUID = 1L;
        
        public AppliesToImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        
    }
}
