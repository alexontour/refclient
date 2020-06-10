/*
 * XML Type:  NotifyActionType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.NotifyActionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML NotifyActionType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class NotifyActionTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.ActionTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.NotifyActionType
{
    private static final long serialVersionUID = 1L;
    
    public NotifyActionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NOTIFICATIONOPTION$0 = 
        new javax.xml.namespace.QName("", "notificationOption");
    private static final javax.xml.namespace.QName ENDPOINT$2 = 
        new javax.xml.namespace.QName("", "endPoint");
    
    
    /**
     * Gets the "notificationOption" attribute
     */
    public java.lang.String getNotificationOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NOTIFICATIONOPTION$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(NOTIFICATIONOPTION$0);
            }
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "notificationOption" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetNotificationOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(NOTIFICATIONOPTION$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_default_attribute_value(NOTIFICATIONOPTION$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "notificationOption" attribute
     */
    public boolean isSetNotificationOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(NOTIFICATIONOPTION$0) != null;
        }
    }
    
    /**
     * Sets the "notificationOption" attribute
     */
    public void setNotificationOption(java.lang.String notificationOption)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NOTIFICATIONOPTION$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NOTIFICATIONOPTION$0);
            }
            target.setStringValue(notificationOption);
        }
    }
    
    /**
     * Sets (as xml) the "notificationOption" attribute
     */
    public void xsetNotificationOption(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI notificationOption)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(NOTIFICATIONOPTION$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(NOTIFICATIONOPTION$0);
            }
            target.set(notificationOption);
        }
    }
    
    /**
     * Unsets the "notificationOption" attribute
     */
    public void unsetNotificationOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(NOTIFICATIONOPTION$0);
        }
    }
    
    /**
     * Gets the "endPoint" attribute
     */
    public java.lang.String getEndPoint()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ENDPOINT$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "endPoint" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetEndPoint()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ENDPOINT$2);
            return target;
        }
    }
    
    /**
     * Sets the "endPoint" attribute
     */
    public void setEndPoint(java.lang.String endPoint)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ENDPOINT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ENDPOINT$2);
            }
            target.setStringValue(endPoint);
        }
    }
    
    /**
     * Sets (as xml) the "endPoint" attribute
     */
    public void xsetEndPoint(org.apache.xmlbeans.XmlAnyURI endPoint)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ENDPOINT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(ENDPOINT$2);
            }
            target.set(endPoint);
        }
    }
}
