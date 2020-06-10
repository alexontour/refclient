/*
 * An XML attribute type.
 * Localname: PolicyURIs
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one PolicyURIs(@http://www.w3.org/ns/ws-policy) attribute.
 *
 * This is a complex type.
 */
public class PolicyURIsAttributeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute
{
    private static final long serialVersionUID = 1L;
    
    public PolicyURIsAttributeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName POLICYURIS$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "PolicyURIs");
    
    
    /**
     * Gets the "PolicyURIs" attribute
     */
    public java.util.List getPolicyURIs()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(POLICYURIS$0);
            if (target == null)
            {
                return null;
            }
            return target.getListValue();
        }
    }
    
    /**
     * Gets (as xml) the "PolicyURIs" attribute
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs xgetPolicyURIs()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs)get_store().find_attribute_user(POLICYURIS$0);
            return target;
        }
    }
    
    /**
     * True if has "PolicyURIs" attribute
     */
    public boolean isSetPolicyURIs()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(POLICYURIS$0) != null;
        }
    }
    
    /**
     * Sets the "PolicyURIs" attribute
     */
    public void setPolicyURIs(java.util.List policyURIs)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(POLICYURIS$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(POLICYURIS$0);
            }
            target.setListValue(policyURIs);
        }
    }
    
    /**
     * Sets (as xml) the "PolicyURIs" attribute
     */
    public void xsetPolicyURIs(arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs policyURIs)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs)get_store().find_attribute_user(POLICYURIS$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs)get_store().add_attribute_user(POLICYURIS$0);
            }
            target.set(policyURIs);
        }
    }
    
    /**
     * Unsets the "PolicyURIs" attribute
     */
    public void unsetPolicyURIs()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(POLICYURIS$0);
        }
    }
    /**
     * An XML PolicyURIs(@http://www.w3.org/ns/ws-policy).
     *
     * This is a list type whose items are org.apache.xmlbeans.XmlAnyURI.
     */
    public static class PolicyURIsImpl extends org.apache.xmlbeans.impl.values.XmlListImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.PolicyURIsAttribute.PolicyURIs
    {
        private static final long serialVersionUID = 1L;
        
        public PolicyURIsImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, false);
        }
        
        protected PolicyURIsImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
    }
}
