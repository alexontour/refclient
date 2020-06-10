/*
 * An XML document type.
 * Localname: Policy
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one Policy(@http://www.w3.org/ns/ws-policy) element.
 *
 * This is a complex type.
 */
public class PolicyDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument
{
    private static final long serialVersionUID = 1L;
    
    public PolicyDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName POLICY$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "Policy");
    
    
    /**
     * Gets the "Policy" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy getPolicy()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy)get_store().find_element_user(POLICY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Policy" element
     */
    public void setPolicy(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy policy)
    {
        generatedSetterHelperImpl(policy, POLICY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Policy" element
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
     * An XML Policy(@http://www.w3.org/ns/ws-policy).
     *
     * This is a complex type.
     */
    public static class PolicyImpl extends arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl.OperatorContentTypeImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyDocument.Policy
    {
        private static final long serialVersionUID = 1L;
        
        public PolicyImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName NAME$0 = 
            new javax.xml.namespace.QName("", "Name");
        
        
        /**
         * Gets the "Name" attribute
         */
        public java.lang.String getName()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NAME$0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "Name" attribute
         */
        public org.apache.xmlbeans.XmlAnyURI xgetName()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(NAME$0);
                return target;
            }
        }
        
        /**
         * True if has "Name" attribute
         */
        public boolean isSetName()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(NAME$0) != null;
            }
        }
        
        /**
         * Sets the "Name" attribute
         */
        public void setName(java.lang.String name)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NAME$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NAME$0);
                }
                target.setStringValue(name);
            }
        }
        
        /**
         * Sets (as xml) the "Name" attribute
         */
        public void xsetName(org.apache.xmlbeans.XmlAnyURI name)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(NAME$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(NAME$0);
                }
                target.set(name);
            }
        }
        
        /**
         * Unsets the "Name" attribute
         */
        public void unsetName()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(NAME$0);
            }
        }
    }
}
