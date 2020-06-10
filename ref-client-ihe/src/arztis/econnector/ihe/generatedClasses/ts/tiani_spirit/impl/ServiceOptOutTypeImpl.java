/*
 * XML Type:  ServiceOptOutType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceOptOutType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceOptOutTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceOptOutTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICE$0 = 
        new javax.xml.namespace.QName("", "service");
    private static final javax.xml.namespace.QName REOPTINDATETIME$2 = 
        new javax.xml.namespace.QName("", "reOptInDateTime");
    
    
    /**
     * Gets the "service" attribute
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType.Enum getService()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICE$0);
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "service" attribute
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType xgetService()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType)get_store().find_attribute_user(SERVICE$0);
            return target;
        }
    }
    
    /**
     * Sets the "service" attribute
     */
    public void setService(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType.Enum service)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SERVICE$0);
            }
            target.setEnumValue(service);
        }
    }
    
    /**
     * Sets (as xml) the "service" attribute
     */
    public void xsetService(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType service)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType)get_store().find_attribute_user(SERVICE$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceType)get_store().add_attribute_user(SERVICE$0);
            }
            target.set(service);
        }
    }
    
    /**
     * Gets the "reOptInDateTime" attribute
     */
    public java.util.Calendar getReOptInDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REOPTINDATETIME$2);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "reOptInDateTime" attribute
     */
    public org.apache.xmlbeans.XmlDateTime xgetReOptInDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(REOPTINDATETIME$2);
            return target;
        }
    }
    
    /**
     * True if has "reOptInDateTime" attribute
     */
    public boolean isSetReOptInDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(REOPTINDATETIME$2) != null;
        }
    }
    
    /**
     * Sets the "reOptInDateTime" attribute
     */
    public void setReOptInDateTime(java.util.Calendar reOptInDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REOPTINDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(REOPTINDATETIME$2);
            }
            target.setCalendarValue(reOptInDateTime);
        }
    }
    
    /**
     * Sets (as xml) the "reOptInDateTime" attribute
     */
    public void xsetReOptInDateTime(org.apache.xmlbeans.XmlDateTime reOptInDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(REOPTINDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_attribute_user(REOPTINDATETIME$2);
            }
            target.set(reOptInDateTime);
        }
    }
    
    /**
     * Unsets the "reOptInDateTime" attribute
     */
    public void unsetReOptInDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(REOPTINDATETIME$2);
        }
    }
}
