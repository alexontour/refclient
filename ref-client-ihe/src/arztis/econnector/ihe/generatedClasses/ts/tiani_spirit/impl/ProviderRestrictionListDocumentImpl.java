/*
 * An XML document type.
 * Localname: ProviderRestrictionList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ProviderRestrictionList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ProviderRestrictionListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListDocument
{
    private static final long serialVersionUID = 1L;
    
    public ProviderRestrictionListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PROVIDERRESTRICTIONLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderRestrictionList");
    
    
    /**
     * Gets the "ProviderRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType getProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().find_element_user(PROVIDERRESTRICTIONLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ProviderRestrictionList" element
     */
    public void setProviderRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType providerRestrictionList)
    {
        generatedSetterHelperImpl(providerRestrictionList, PROVIDERRESTRICTIONLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ProviderRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType addNewProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().add_element_user(PROVIDERRESTRICTIONLIST$0);
            return target;
        }
    }
}
