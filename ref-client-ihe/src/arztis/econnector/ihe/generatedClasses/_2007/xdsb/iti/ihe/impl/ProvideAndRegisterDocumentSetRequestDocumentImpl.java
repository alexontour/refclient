/*
 * An XML document type.
 * Localname: ProvideAndRegisterDocumentSetRequest
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * A document containing one ProvideAndRegisterDocumentSetRequest(@urn:ihe:iti:xds-b:2007) element.
 *
 * This is a complex type.
 */
public class ProvideAndRegisterDocumentSetRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public ProvideAndRegisterDocumentSetRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PROVIDEANDREGISTERDOCUMENTSETREQUEST$0 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "ProvideAndRegisterDocumentSetRequest");
    
    
    /**
     * Gets the "ProvideAndRegisterDocumentSetRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType getProvideAndRegisterDocumentSetRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType)get_store().find_element_user(PROVIDEANDREGISTERDOCUMENTSETREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ProvideAndRegisterDocumentSetRequest" element
     */
    public void setProvideAndRegisterDocumentSetRequest(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType provideAndRegisterDocumentSetRequest)
    {
        generatedSetterHelperImpl(provideAndRegisterDocumentSetRequest, PROVIDEANDREGISTERDOCUMENTSETREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ProvideAndRegisterDocumentSetRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType addNewProvideAndRegisterDocumentSetRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType)get_store().add_element_user(PROVIDEANDREGISTERDOCUMENTSETREQUEST$0);
            return target;
        }
    }
}
