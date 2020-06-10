/*
 * An XML attribute type.
 * Localname: Ignorable
 * Namespace: http://www.w3.org/ns/ws-policy
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.IgnorableAttribute
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.impl;
/**
 * A document containing one Ignorable(@http://www.w3.org/ns/ws-policy) attribute.
 *
 * This is a complex type.
 */
public class IgnorableAttributeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www.ns.ws_policy.IgnorableAttribute
{
    private static final long serialVersionUID = 1L;
    
    public IgnorableAttributeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName IGNORABLE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/ns/ws-policy", "Ignorable");
    
    
    /**
     * Gets the "Ignorable" attribute
     */
    public boolean getIgnorable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(IGNORABLE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(IGNORABLE$0);
            }
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "Ignorable" attribute
     */
    public org.apache.xmlbeans.XmlBoolean xgetIgnorable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(IGNORABLE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(IGNORABLE$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "Ignorable" attribute
     */
    public boolean isSetIgnorable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(IGNORABLE$0) != null;
        }
    }
    
    /**
     * Sets the "Ignorable" attribute
     */
    public void setIgnorable(boolean ignorable)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(IGNORABLE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(IGNORABLE$0);
            }
            target.setBooleanValue(ignorable);
        }
    }
    
    /**
     * Sets (as xml) the "Ignorable" attribute
     */
    public void xsetIgnorable(org.apache.xmlbeans.XmlBoolean ignorable)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(IGNORABLE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(IGNORABLE$0);
            }
            target.set(ignorable);
        }
    }
    
    /**
     * Unsets the "Ignorable" attribute
     */
    public void unsetIgnorable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(IGNORABLE$0);
        }
    }
}
