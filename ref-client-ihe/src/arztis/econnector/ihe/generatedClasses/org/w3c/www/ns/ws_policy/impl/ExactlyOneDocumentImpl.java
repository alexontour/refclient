/*
 * An XML document type.
 * Localname: ExactlyOne
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.ExactlyOneDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one ExactlyOne(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class ExactlyOneDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.ExactlyOneDocument
{
    private static final long serialVersionUID = 1L;
    
    public ExactlyOneDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXACTLYONE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "ExactlyOne");
    
    
    /**
     * Gets the "ExactlyOne" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType getExactlyOne()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().find_element_user(EXACTLYONE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ExactlyOne" element
     */
    public void setExactlyOne(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType exactlyOne)
    {
        generatedSetterHelperImpl(exactlyOne, EXACTLYONE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ExactlyOne" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType addNewExactlyOne()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().add_element_user(EXACTLYONE$0);
            return target;
        }
    }
}
