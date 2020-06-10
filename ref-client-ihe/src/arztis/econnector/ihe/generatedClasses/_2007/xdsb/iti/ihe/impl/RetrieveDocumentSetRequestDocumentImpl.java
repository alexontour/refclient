/*
 * An XML document type.
 * Localname: RetrieveDocumentSetRequest
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * A document containing one RetrieveDocumentSetRequest(@urn:ihe:iti:xds-b:2007) element.
 *
 * This is a complex type.
 */
public class RetrieveDocumentSetRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public RetrieveDocumentSetRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RETRIEVEDOCUMENTSETREQUEST$0 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "RetrieveDocumentSetRequest");
    
    
    /**
     * Gets the "RetrieveDocumentSetRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType getRetrieveDocumentSetRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType)get_store().find_element_user(RETRIEVEDOCUMENTSETREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RetrieveDocumentSetRequest" element
     */
    public void setRetrieveDocumentSetRequest(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType retrieveDocumentSetRequest)
    {
        generatedSetterHelperImpl(retrieveDocumentSetRequest, RETRIEVEDOCUMENTSETREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RetrieveDocumentSetRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType addNewRetrieveDocumentSetRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType)get_store().add_element_user(RETRIEVEDOCUMENTSETREQUEST$0);
            return target;
        }
    }
}
