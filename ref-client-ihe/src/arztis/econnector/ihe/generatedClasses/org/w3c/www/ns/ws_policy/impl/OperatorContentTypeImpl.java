/*
 * XML Type:  OperatorContentType
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * An XML OperatorContentType(@http://www.w3.org/ns/ws-policy).
 *
 * This is a complex type.
 */
public class OperatorContentTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType
{
    private static final long serialVersionUID = 1L;
    
    public OperatorContentTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName POLICY$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "Policy");
    private static final javax.xml.namespace.QName ALL$2 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "All");
    private static final javax.xml.namespace.QName EXACTLYONE$4 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "ExactlyOne");
    private static final javax.xml.namespace.QName POLICYREFERENCE$6 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "PolicyReference");
    
    
    /**
     * Gets array of all "Policy" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] getPolicyArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(POLICY$0, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Policy" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy getPolicyArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().find_element_user(POLICY$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Policy" element
     */
    public int sizeOfPolicyArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(POLICY$0);
        }
    }
    
    /**
     * Sets array of all "Policy" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setPolicyArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] policyArray)
    {
        check_orphaned();
        arraySetterHelper(policyArray, POLICY$0);
    }
    
    /**
     * Sets ith "Policy" element
     */
    public void setPolicyArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy policy)
    {
        generatedSetterHelperImpl(policy, POLICY$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Policy" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy insertNewPolicy(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().insert_element_user(POLICY$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Policy" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy addNewPolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().add_element_user(POLICY$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "Policy" element
     */
    public void removePolicy(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(POLICY$0, i);
        }
    }
    
    /**
     * Gets array of all "All" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] getAllArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(ALL$2, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "All" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType getAllArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().find_element_user(ALL$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "All" element
     */
    public int sizeOfAllArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ALL$2);
        }
    }
    
    /**
     * Sets array of all "All" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setAllArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] allArray)
    {
        check_orphaned();
        arraySetterHelper(allArray, ALL$2);
    }
    
    /**
     * Sets ith "All" element
     */
    public void setAllArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType all)
    {
        generatedSetterHelperImpl(all, ALL$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "All" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType insertNewAll(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().insert_element_user(ALL$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "All" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType addNewAll()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().add_element_user(ALL$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "All" element
     */
    public void removeAll(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ALL$2, i);
        }
    }
    
    /**
     * Gets array of all "ExactlyOne" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] getExactlyOneArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(EXACTLYONE$4, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ExactlyOne" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType getExactlyOneArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().find_element_user(EXACTLYONE$4, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ExactlyOne" element
     */
    public int sizeOfExactlyOneArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EXACTLYONE$4);
        }
    }
    
    /**
     * Sets array of all "ExactlyOne" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setExactlyOneArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType[] exactlyOneArray)
    {
        check_orphaned();
        arraySetterHelper(exactlyOneArray, EXACTLYONE$4);
    }
    
    /**
     * Sets ith "ExactlyOne" element
     */
    public void setExactlyOneArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType exactlyOne)
    {
        generatedSetterHelperImpl(exactlyOne, EXACTLYONE$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ExactlyOne" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType insertNewExactlyOne(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().insert_element_user(EXACTLYONE$4, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ExactlyOne" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType addNewExactlyOne()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.OperatorContentType)get_store().add_element_user(EXACTLYONE$4);
            return target;
        }
    }
    
    /**
     * Removes the ith "ExactlyOne" element
     */
    public void removeExactlyOne(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EXACTLYONE$4, i);
        }
    }
    
    /**
     * Gets array of all "PolicyReference" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] getPolicyReferenceArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(POLICYREFERENCE$6, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "PolicyReference" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference getPolicyReferenceArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().find_element_user(POLICYREFERENCE$6, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "PolicyReference" element
     */
    public int sizeOfPolicyReferenceArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(POLICYREFERENCE$6);
        }
    }
    
    /**
     * Sets array of all "PolicyReference" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setPolicyReferenceArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] policyReferenceArray)
    {
        check_orphaned();
        arraySetterHelper(policyReferenceArray, POLICYREFERENCE$6);
    }
    
    /**
     * Sets ith "PolicyReference" element
     */
    public void setPolicyReferenceArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference policyReference)
    {
        generatedSetterHelperImpl(policyReference, POLICYREFERENCE$6, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "PolicyReference" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference insertNewPolicyReference(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().insert_element_user(POLICYREFERENCE$6, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "PolicyReference" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference addNewPolicyReference()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().add_element_user(POLICYREFERENCE$6);
            return target;
        }
    }
    
    /**
     * Removes the ith "PolicyReference" element
     */
    public void removePolicyReference(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(POLICYREFERENCE$6, i);
        }
    }
}
