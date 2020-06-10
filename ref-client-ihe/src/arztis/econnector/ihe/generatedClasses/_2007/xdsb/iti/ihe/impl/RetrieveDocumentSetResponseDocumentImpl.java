/*
 * An XML document type.
 * Localname: RetrieveDocumentSetResponse
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * A document containing one RetrieveDocumentSetResponse(@urn:ihe:iti:xds-b:2007) element.
 *
 * This is a complex type.
 */
public class RetrieveDocumentSetResponseDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument
{
    private static final long serialVersionUID = 1L;
    
    public RetrieveDocumentSetResponseDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RETRIEVEDOCUMENTSETRESPONSE$0 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "RetrieveDocumentSetResponse");
    
    
    /**
     * Gets the "RetrieveDocumentSetResponse" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType getRetrieveDocumentSetResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType)get_store().find_element_user(RETRIEVEDOCUMENTSETRESPONSE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RetrieveDocumentSetResponse" element
     */
    public void setRetrieveDocumentSetResponse(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType retrieveDocumentSetResponse)
    {
        generatedSetterHelperImpl(retrieveDocumentSetResponse, RETRIEVEDOCUMENTSETRESPONSE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RetrieveDocumentSetResponse" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType addNewRetrieveDocumentSetResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType)get_store().add_element_user(RETRIEVEDOCUMENTSETRESPONSE$0);
            return target;
        }
    }
}
