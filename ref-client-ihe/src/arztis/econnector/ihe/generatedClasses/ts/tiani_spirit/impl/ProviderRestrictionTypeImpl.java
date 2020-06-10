/*
 * XML Type:  ProviderRestrictionType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ProviderRestrictionType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ProviderRestrictionTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionType
{
    private static final long serialVersionUID = 1L;
    
    public ProviderRestrictionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DAYS$0 = 
        new javax.xml.namespace.QName("", "days");
    private static final javax.xml.namespace.QName PROVIDERID$2 = 
        new javax.xml.namespace.QName("", "providerID");
    
    
    /**
     * Gets the "days" attribute
     */
    public java.math.BigInteger getDays()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DAYS$0);
            if (target == null)
            {
                return null;
            }
            return target.getBigIntegerValue();
        }
    }
    
    /**
     * Gets (as xml) the "days" attribute
     */
    public org.apache.xmlbeans.XmlPositiveInteger xgetDays()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlPositiveInteger target = null;
            target = (org.apache.xmlbeans.XmlPositiveInteger)get_store().find_attribute_user(DAYS$0);
            return target;
        }
    }
    
    /**
     * Sets the "days" attribute
     */
    public void setDays(java.math.BigInteger days)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DAYS$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DAYS$0);
            }
            target.setBigIntegerValue(days);
        }
    }
    
    /**
     * Sets (as xml) the "days" attribute
     */
    public void xsetDays(org.apache.xmlbeans.XmlPositiveInteger days)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlPositiveInteger target = null;
            target = (org.apache.xmlbeans.XmlPositiveInteger)get_store().find_attribute_user(DAYS$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlPositiveInteger)get_store().add_attribute_user(DAYS$0);
            }
            target.set(days);
        }
    }
    
    /**
     * Gets the "providerID" attribute
     */
    public java.lang.String getProviderID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PROVIDERID$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "providerID" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetProviderID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(PROVIDERID$2);
            return target;
        }
    }
    
    /**
     * Sets the "providerID" attribute
     */
    public void setProviderID(java.lang.String providerID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PROVIDERID$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PROVIDERID$2);
            }
            target.setStringValue(providerID);
        }
    }
    
    /**
     * Sets (as xml) the "providerID" attribute
     */
    public void xsetProviderID(org.apache.xmlbeans.XmlAnyURI providerID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(PROVIDERID$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(PROVIDERID$2);
            }
            target.set(providerID);
        }
    }
}
