/*
 * An XML document type.
 * Localname: PolicyAttachment
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one PolicyAttachment(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class PolicyAttachmentDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument
{
    private static final long serialVersionUID = 1L;
    
    public PolicyAttachmentDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName POLICYATTACHMENT$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "PolicyAttachment");
    
    
    /**
     * Gets the "PolicyAttachment" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment getPolicyAttachment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment)get_store().find_element_user(POLICYATTACHMENT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "PolicyAttachment" element
     */
    public void setPolicyAttachment(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment policyAttachment)
    {
        generatedSetterHelperImpl(policyAttachment, POLICYATTACHMENT$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "PolicyAttachment" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment addNewPolicyAttachment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment)get_store().add_element_user(POLICYATTACHMENT$0);
            return target;
        }
    }
    /**
     * An XML PolicyAttachment(@http://www.w3.org/ns/ws-policy).
     *
     * This is a complex type.
     */
    public static class PolicyAttachmentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyAttachmentDocument.PolicyAttachment
    {
        private static final long serialVersionUID = 1L;
        
        public PolicyAttachmentImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName APPLIESTO$0 = 
            new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "AppliesTo");
        private static final javax.xml.namespace.QName POLICY$2 = 
            new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "Policy");
        private static final javax.xml.namespace.QName POLICYREFERENCE$4 = 
            new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "PolicyReference");
        
        
        /**
         * Gets the "AppliesTo" element
         */
        public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo getAppliesTo()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo target = null;
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo)get_store().find_element_user(APPLIESTO$0, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "AppliesTo" element
         */
        public void setAppliesTo(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo appliesTo)
        {
            generatedSetterHelperImpl(appliesTo, APPLIESTO$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "AppliesTo" element
         */
        public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo addNewAppliesTo()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo target = null;
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.AppliesToDocument.AppliesTo)get_store().add_element_user(APPLIESTO$0);
                return target;
            }
        }
        
        /**
         * Gets array of all "Policy" elements
         */
        public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] getPolicyArray()
        {
            synchronized (monitor())
            {
                check_orphaned();
                java.util.List targetList = new java.util.ArrayList();
                get_store().find_all_element_users(POLICY$2, targetList);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().find_element_user(POLICY$2, i);
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
                return get_store().count_elements(POLICY$2);
            }
        }
        
        /**
         * Sets array of all "Policy" element  WARNING: This method is not atomicaly synchronized.
         */
        public void setPolicyArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy[] policyArray)
        {
            check_orphaned();
            arraySetterHelper(policyArray, POLICY$2);
        }
        
        /**
         * Sets ith "Policy" element
         */
        public void setPolicyArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy policy)
        {
            generatedSetterHelperImpl(policy, POLICY$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().insert_element_user(POLICY$2, i);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().add_element_user(POLICY$2);
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
                get_store().remove_element(POLICY$2, i);
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
                get_store().find_all_element_users(POLICYREFERENCE$4, targetList);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().find_element_user(POLICYREFERENCE$4, i);
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
                return get_store().count_elements(POLICYREFERENCE$4);
            }
        }
        
        /**
         * Sets array of all "PolicyReference" element  WARNING: This method is not atomicaly synchronized.
         */
        public void setPolicyReferenceArray(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference[] policyReferenceArray)
        {
            check_orphaned();
            arraySetterHelper(policyReferenceArray, POLICYREFERENCE$4);
        }
        
        /**
         * Sets ith "PolicyReference" element
         */
        public void setPolicyReferenceArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference policyReference)
        {
            generatedSetterHelperImpl(policyReference, POLICYREFERENCE$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().insert_element_user(POLICYREFERENCE$4, i);
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
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyReferenceDocument.PolicyReference)get_store().add_element_user(POLICYREFERENCE$4);
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
                get_store().remove_element(POLICYREFERENCE$4, i);
            }
        }
    }
}
