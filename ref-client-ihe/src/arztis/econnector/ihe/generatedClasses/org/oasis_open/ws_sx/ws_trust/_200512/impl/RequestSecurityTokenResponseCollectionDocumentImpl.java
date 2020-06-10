/*
 * An XML document type.
 * Localname: RequestSecurityTokenResponseCollection
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * A document containing one RequestSecurityTokenResponseCollection(@http://docs.oasis-open.org/ws-sx/ws-trust/200512) element.
 *
 * This is a complex type.
 */
public class RequestSecurityTokenResponseCollectionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument
{
    private static final long serialVersionUID = 1L;
    
    public RequestSecurityTokenResponseCollectionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REQUESTSECURITYTOKENRESPONSECOLLECTION$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RequestSecurityTokenResponseCollection");
    
    
    /**
     * Gets the "RequestSecurityTokenResponseCollection" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType getRequestSecurityTokenResponseCollection()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType)get_store().find_element_user(REQUESTSECURITYTOKENRESPONSECOLLECTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RequestSecurityTokenResponseCollection" element
     */
    public void setRequestSecurityTokenResponseCollection(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType requestSecurityTokenResponseCollection)
    {
        generatedSetterHelperImpl(requestSecurityTokenResponseCollection, REQUESTSECURITYTOKENRESPONSECOLLECTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RequestSecurityTokenResponseCollection" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType addNewRequestSecurityTokenResponseCollection()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType)get_store().add_element_user(REQUESTSECURITYTOKENRESPONSECOLLECTION$0);
            return target;
        }
    }
}
