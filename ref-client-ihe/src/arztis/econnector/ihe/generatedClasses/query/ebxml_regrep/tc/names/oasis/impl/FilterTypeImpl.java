/*
 * XML Type:  FilterType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML FilterType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class FilterTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType
{
    private static final long serialVersionUID = 1L;
    
    public FilterTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NEGATE$0 = 
        new javax.xml.namespace.QName("", "negate");
    
    
    /**
     * Gets the "negate" attribute
     */
    public boolean getNegate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NEGATE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(NEGATE$0);
            }
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "negate" attribute
     */
    public org.apache.xmlbeans.XmlBoolean xgetNegate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(NEGATE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(NEGATE$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "negate" attribute
     */
    public boolean isSetNegate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(NEGATE$0) != null;
        }
    }
    
    /**
     * Sets the "negate" attribute
     */
    public void setNegate(boolean negate)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NEGATE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NEGATE$0);
            }
            target.setBooleanValue(negate);
        }
    }
    
    /**
     * Sets (as xml) the "negate" attribute
     */
    public void xsetNegate(org.apache.xmlbeans.XmlBoolean negate)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(NEGATE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(NEGATE$0);
            }
            target.set(negate);
        }
    }
    
    /**
     * Unsets the "negate" attribute
     */
    public void unsetNegate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(NEGATE$0);
        }
    }
}
