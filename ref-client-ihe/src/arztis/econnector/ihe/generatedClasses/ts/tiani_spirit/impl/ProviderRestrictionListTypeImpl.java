/*
 * XML Type:  ProviderRestrictionListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ProviderRestrictionListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ProviderRestrictionListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType
{
    private static final long serialVersionUID = 1L;
    
    public ProviderRestrictionListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PROVIDERRESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderRestriction");
    
    
    /**
     * Gets array of all "ProviderRestriction" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType[] getProviderRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(PROVIDERRESTRICTION$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ProviderRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType getProviderRestrictionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType)get_store().find_element_user(PROVIDERRESTRICTION$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ProviderRestriction" element
     */
    public int sizeOfProviderRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PROVIDERRESTRICTION$0);
        }
    }
    
    /**
     * Sets array of all "ProviderRestriction" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setProviderRestrictionArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType[] providerRestrictionArray)
    {
        check_orphaned();
        arraySetterHelper(providerRestrictionArray, PROVIDERRESTRICTION$0);
    }
    
    /**
     * Sets ith "ProviderRestriction" element
     */
    public void setProviderRestrictionArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType providerRestriction)
    {
        generatedSetterHelperImpl(providerRestriction, PROVIDERRESTRICTION$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ProviderRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType insertNewProviderRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType)get_store().insert_element_user(PROVIDERRESTRICTION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ProviderRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType addNewProviderRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType)get_store().add_element_user(PROVIDERRESTRICTION$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ProviderRestriction" element
     */
    public void removeProviderRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PROVIDERRESTRICTION$0, i);
        }
    }
}
