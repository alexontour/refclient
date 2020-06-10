/*
 * XML Type:  GeneratedPoliciesType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML GeneratedPoliciesType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class GeneratedPoliciesTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType
{
    private static final long serialVersionUID = 1L;
    
    public GeneratedPoliciesTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName INDIVIDUALREQUESTPOLICY$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IndividualRequestPolicy");
    private static final javax.xml.namespace.QName INDIVIDUALRESPONSEPOLICY$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IndividualResponsePolicy");
    
    
    /**
     * Gets the "IndividualRequestPolicy" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType getIndividualRequestPolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType)get_store().find_element_user(INDIVIDUALREQUESTPOLICY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "IndividualRequestPolicy" element
     */
    public void setIndividualRequestPolicy(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType individualRequestPolicy)
    {
        generatedSetterHelperImpl(individualRequestPolicy, INDIVIDUALREQUESTPOLICY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "IndividualRequestPolicy" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType addNewIndividualRequestPolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualRequestPolicyType)get_store().add_element_user(INDIVIDUALREQUESTPOLICY$0);
            return target;
        }
    }
    
    /**
     * Gets the "IndividualResponsePolicy" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType getIndividualResponsePolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType)get_store().find_element_user(INDIVIDUALRESPONSEPOLICY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "IndividualResponsePolicy" element
     */
    public void setIndividualResponsePolicy(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType individualResponsePolicy)
    {
        generatedSetterHelperImpl(individualResponsePolicy, INDIVIDUALRESPONSEPOLICY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "IndividualResponsePolicy" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType addNewIndividualResponsePolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType)get_store().add_element_user(INDIVIDUALRESPONSEPOLICY$2);
            return target;
        }
    }
}
