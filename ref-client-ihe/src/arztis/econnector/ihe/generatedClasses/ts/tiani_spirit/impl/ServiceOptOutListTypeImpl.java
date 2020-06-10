/*
 * XML Type:  ServiceOptOutListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceOptOutListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceOptOutListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceOptOutListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEOPTOUT$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceOptOut");
    
    
    /**
     * Gets array of all "ServiceOptOut" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType[] getServiceOptOutArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SERVICEOPTOUT$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ServiceOptOut" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType getServiceOptOutArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType)get_store().find_element_user(SERVICEOPTOUT$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ServiceOptOut" element
     */
    public int sizeOfServiceOptOutArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEOPTOUT$0);
        }
    }
    
    /**
     * Sets array of all "ServiceOptOut" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setServiceOptOutArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType[] serviceOptOutArray)
    {
        check_orphaned();
        arraySetterHelper(serviceOptOutArray, SERVICEOPTOUT$0);
    }
    
    /**
     * Sets ith "ServiceOptOut" element
     */
    public void setServiceOptOutArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType serviceOptOut)
    {
        generatedSetterHelperImpl(serviceOptOut, SERVICEOPTOUT$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ServiceOptOut" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType insertNewServiceOptOut(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType)get_store().insert_element_user(SERVICEOPTOUT$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ServiceOptOut" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType addNewServiceOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType)get_store().add_element_user(SERVICEOPTOUT$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ServiceOptOut" element
     */
    public void removeServiceOptOut(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEOPTOUT$0, i);
        }
    }
}
