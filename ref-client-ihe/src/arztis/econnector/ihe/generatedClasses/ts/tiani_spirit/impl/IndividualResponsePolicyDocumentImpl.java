/*
 * An XML document type.
 * Localname: IndividualResponsePolicy
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one IndividualResponsePolicy(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class IndividualResponsePolicyDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyDocument
{
    private static final long serialVersionUID = 1L;
    
    public IndividualResponsePolicyDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName INDIVIDUALRESPONSEPOLICY$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IndividualResponsePolicy");
    
    
    /**
     * Gets the "IndividualResponsePolicy" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType getIndividualResponsePolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType)get_store().find_element_user(INDIVIDUALRESPONSEPOLICY$0, 0);
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
        generatedSetterHelperImpl(individualResponsePolicy, INDIVIDUALRESPONSEPOLICY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IndividualResponsePolicyType)get_store().add_element_user(INDIVIDUALRESPONSEPOLICY$0);
            return target;
        }
    }
}
