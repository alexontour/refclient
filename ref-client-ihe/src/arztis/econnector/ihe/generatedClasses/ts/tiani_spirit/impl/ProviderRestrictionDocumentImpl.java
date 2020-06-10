/*
 * An XML document type.
 * Localname: ProviderRestriction
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ProviderRestriction(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ProviderRestrictionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionDocument
{
    private static final long serialVersionUID = 1L;
    
    public ProviderRestrictionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PROVIDERRESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderRestriction");
    
    
    /**
     * Gets the "ProviderRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType getProviderRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType)get_store().find_element_user(PROVIDERRESTRICTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ProviderRestriction" element
     */
    public void setProviderRestriction(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType providerRestriction)
    {
        generatedSetterHelperImpl(providerRestriction, PROVIDERRESTRICTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ProviderRestriction" element
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
}
