/*
 * An XML document type.
 * Localname: GeneratedPolicies
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one GeneratedPolicies(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class GeneratedPoliciesDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesDocument
{
    private static final long serialVersionUID = 1L;
    
    public GeneratedPoliciesDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName GENERATEDPOLICIES$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "GeneratedPolicies");
    
    
    /**
     * Gets the "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType getGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().find_element_user(GENERATEDPOLICIES$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "GeneratedPolicies" element
     */
    public void setGeneratedPolicies(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType generatedPolicies)
    {
        generatedSetterHelperImpl(generatedPolicies, GENERATEDPOLICIES$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType addNewGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().add_element_user(GENERATEDPOLICIES$0);
            return target;
        }
    }
}
