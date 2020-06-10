/*
 * An XML document type.
 * Localname: ServiceDeletionList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceDeletionList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceDeletionListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceDeletionListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEDELETIONLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceDeletionList");
    
    
    /**
     * Gets the "ServiceDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType getServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().find_element_user(SERVICEDELETIONLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceDeletionList" element
     */
    public void setServiceDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType serviceDeletionList)
    {
        generatedSetterHelperImpl(serviceDeletionList, SERVICEDELETIONLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType addNewServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().add_element_user(SERVICEDELETIONLIST$0);
            return target;
        }
    }
}
