/*
 * XML Type:  ServiceDeletionListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceDeletionListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceDeletionListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceDeletionListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEDELETION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceDeletion");
    
    
    /**
     * Gets array of all "ServiceDeletion" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType[] getServiceDeletionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SERVICEDELETION$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ServiceDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType getServiceDeletionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType)get_store().find_element_user(SERVICEDELETION$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ServiceDeletion" element
     */
    public int sizeOfServiceDeletionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEDELETION$0);
        }
    }
    
    /**
     * Sets array of all "ServiceDeletion" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setServiceDeletionArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType[] serviceDeletionArray)
    {
        check_orphaned();
        arraySetterHelper(serviceDeletionArray, SERVICEDELETION$0);
    }
    
    /**
     * Sets ith "ServiceDeletion" element
     */
    public void setServiceDeletionArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType serviceDeletion)
    {
        generatedSetterHelperImpl(serviceDeletion, SERVICEDELETION$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ServiceDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType insertNewServiceDeletion(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType)get_store().insert_element_user(SERVICEDELETION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ServiceDeletion" element
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
    
    /**
     * Removes the ith "ServiceDeletion" element
     */
    public void removeServiceDeletion(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEDELETION$0, i);
        }
    }
}
