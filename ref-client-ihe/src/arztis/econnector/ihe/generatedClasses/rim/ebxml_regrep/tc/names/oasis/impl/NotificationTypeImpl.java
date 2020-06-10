/*
 * XML Type:  NotificationType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.NotificationType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML NotificationType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class NotificationTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.NotificationType
{
    private static final long serialVersionUID = 1L;
    
    public NotificationTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYOBJECTLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryObjectList");
    private static final javax.xml.namespace.QName SUBSCRIPTION$2 = 
        new javax.xml.namespace.QName("", "subscription");
    
    
    /**
     * Gets the "RegistryObjectList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType getRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().find_element_user(REGISTRYOBJECTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RegistryObjectList" element
     */
    public void setRegistryObjectList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType registryObjectList)
    {
        generatedSetterHelperImpl(registryObjectList, REGISTRYOBJECTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryObjectList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType addNewRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().add_element_user(REGISTRYOBJECTLIST$0);
            return target;
        }
    }
    
    /**
     * Gets the "subscription" attribute
     */
    public java.lang.String getSubscription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SUBSCRIPTION$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "subscription" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSubscription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SUBSCRIPTION$2);
            return target;
        }
    }
    
    /**
     * Sets the "subscription" attribute
     */
    public void setSubscription(java.lang.String subscription)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SUBSCRIPTION$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SUBSCRIPTION$2);
            }
            target.setStringValue(subscription);
        }
    }
    
    /**
     * Sets (as xml) the "subscription" attribute
     */
    public void xsetSubscription(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI subscription)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SUBSCRIPTION$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SUBSCRIPTION$2);
            }
            target.set(subscription);
        }
    }
}
