/*
 * XML Type:  RequestSecurityTokenResponseCollectionType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML RequestSecurityTokenResponseCollectionType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class RequestSecurityTokenResponseCollectionTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionType
{
    private static final long serialVersionUID = 1L;
    
    public RequestSecurityTokenResponseCollectionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REQUESTSECURITYTOKENRESPONSE$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RequestSecurityTokenResponse");
    
    
    /**
     * Gets array of all "RequestSecurityTokenResponse" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType[] getRequestSecurityTokenResponseArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(REQUESTSECURITYTOKENRESPONSE$0, targetList);
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType[] result = new arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "RequestSecurityTokenResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType getRequestSecurityTokenResponseArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType)get_store().find_element_user(REQUESTSECURITYTOKENRESPONSE$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "RequestSecurityTokenResponse" element
     */
    public int sizeOfRequestSecurityTokenResponseArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REQUESTSECURITYTOKENRESPONSE$0);
        }
    }
    
    /**
     * Sets array of all "RequestSecurityTokenResponse" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setRequestSecurityTokenResponseArray(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType[] requestSecurityTokenResponseArray)
    {
        check_orphaned();
        arraySetterHelper(requestSecurityTokenResponseArray, REQUESTSECURITYTOKENRESPONSE$0);
    }
    
    /**
     * Sets ith "RequestSecurityTokenResponse" element
     */
    public void setRequestSecurityTokenResponseArray(int i, arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType requestSecurityTokenResponse)
    {
        generatedSetterHelperImpl(requestSecurityTokenResponse, REQUESTSECURITYTOKENRESPONSE$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "RequestSecurityTokenResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType insertNewRequestSecurityTokenResponse(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType)get_store().insert_element_user(REQUESTSECURITYTOKENRESPONSE$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "RequestSecurityTokenResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType addNewRequestSecurityTokenResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType)get_store().add_element_user(REQUESTSECURITYTOKENRESPONSE$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "RequestSecurityTokenResponse" element
     */
    public void removeRequestSecurityTokenResponse(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REQUESTSECURITYTOKENRESPONSE$0, i);
        }
    }
}
