/*
 * XML Type:  ServiceRestrictionType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ServiceRestrictionType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ServiceRestrictionTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceRestrictionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICE$0 = 
        new javax.xml.namespace.QName("", "service");
    
    
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
}
