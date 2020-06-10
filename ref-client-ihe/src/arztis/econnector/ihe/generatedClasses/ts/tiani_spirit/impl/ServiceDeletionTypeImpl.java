/*
 * XML Type:  ServiceDeletionType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceDeletionType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceDeletionTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceDeletionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICE$0 = 
        new javax.xml.namespace.QName("", "service");
    private static final javax.xml.namespace.QName DELETIONDATETIME$2 = 
        new javax.xml.namespace.QName("", "deletionDateTime");
    
    
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
     * Gets the "deletionDateTime" attribute
     */
    public java.util.Calendar getDeletionDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DELETIONDATETIME$2);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "deletionDateTime" attribute
     */
    public org.apache.xmlbeans.XmlDateTime xgetDeletionDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(DELETIONDATETIME$2);
            return target;
        }
    }
    
    /**
     * Sets the "deletionDateTime" attribute
     */
    public void setDeletionDateTime(java.util.Calendar deletionDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DELETIONDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DELETIONDATETIME$2);
            }
            target.setCalendarValue(deletionDateTime);
        }
    }
    
    /**
     * Sets (as xml) the "deletionDateTime" attribute
     */
    public void xsetDeletionDateTime(org.apache.xmlbeans.XmlDateTime deletionDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(DELETIONDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_attribute_user(DELETIONDATETIME$2);
            }
            target.set(deletionDateTime);
        }
    }
}
