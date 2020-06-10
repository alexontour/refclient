/*
 * XML Type:  ELGAClaimsType_default
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAClaimsTypeDefault
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ELGAClaimsType_default(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ELGAClaimsTypeDefaultImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAClaimsTypeDefault
{
    private static final long serialVersionUID = 1L;
    
    public ELGAClaimsTypeDefaultImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DIALECT$0 = 
        new javax.xml.namespace.QName("", "Dialect");
    
    
    /**
     * Gets the "Dialect" attribute
     */
    public java.lang.String getDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(DIALECT$0);
            }
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Dialect" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(DIALECT$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_default_attribute_value(DIALECT$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "Dialect" attribute
     */
    public boolean isSetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(DIALECT$0) != null;
        }
    }
    
    /**
     * Sets the "Dialect" attribute
     */
    public void setDialect(java.lang.String dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DIALECT$0);
            }
            target.setStringValue(dialect);
        }
    }
    
    /**
     * Sets (as xml) the "Dialect" attribute
     */
    public void xsetDialect(org.apache.xmlbeans.XmlAnyURI dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(DIALECT$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(DIALECT$0);
            }
            target.set(dialect);
        }
    }
    
    /**
     * Unsets the "Dialect" attribute
     */
    public void unsetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(DIALECT$0);
        }
    }
}
