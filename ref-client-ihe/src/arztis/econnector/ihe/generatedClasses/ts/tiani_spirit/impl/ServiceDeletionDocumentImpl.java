/*
 * An XML document type.
 * Localname: ServiceDeletion
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceDeletion(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceDeletionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceDeletionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEDELETION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceDeletion");
    
    
    /**
     * Gets the "ServiceDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType getServiceDeletion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType)get_store().find_element_user(SERVICEDELETION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceDeletion" element
     */
    public void setServiceDeletion(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType serviceDeletion)
    {
        generatedSetterHelperImpl(serviceDeletion, SERVICEDELETION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType addNewServiceDeletion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType)get_store().add_element_user(SERVICEDELETION$0);
            return target;
        }
    }
}
