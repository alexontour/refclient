/*
 * XML Type:  ServiceRestrictionListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceRestrictionListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceRestrictionListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceRestrictionListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICERESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceRestriction");
    
    
    /**
     * Gets array of all "ServiceRestriction" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType[] getServiceRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SERVICERESTRICTION$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ServiceRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType getServiceRestrictionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType)get_store().find_element_user(SERVICERESTRICTION$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ServiceRestriction" element
     */
    public int sizeOfServiceRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICERESTRICTION$0);
        }
    }
    
    /**
     * Sets array of all "ServiceRestriction" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setServiceRestrictionArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType[] serviceRestrictionArray)
    {
        check_orphaned();
        arraySetterHelper(serviceRestrictionArray, SERVICERESTRICTION$0);
    }
    
    /**
     * Sets ith "ServiceRestriction" element
     */
    public void setServiceRestrictionArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType serviceRestriction)
    {
        generatedSetterHelperImpl(serviceRestriction, SERVICERESTRICTION$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ServiceRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType insertNewServiceRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType)get_store().insert_element_user(SERVICERESTRICTION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ServiceRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType addNewServiceRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType)get_store().add_element_user(SERVICERESTRICTION$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ServiceRestriction" element
     */
    public void removeServiceRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICERESTRICTION$0, i);
        }
    }
}
