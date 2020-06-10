/*
 * XML Type:  SubscriptionType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SubscriptionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML SubscriptionType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class SubscriptionTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SubscriptionType
{
    private static final long serialVersionUID = 1L;
    
    public SubscriptionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ACTION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Action");
    private static final org.apache.xmlbeans.QNameSet ACTION$1 = org.apache.xmlbeans.QNameSet.forArray( new javax.xml.namespace.QName[] { 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Action"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "NotifyAction"),
    });
    private static final javax.xml.namespace.QName SELECTOR$2 = 
        new javax.xml.namespace.QName("", "selector");
    private static final javax.xml.namespace.QName STARTTIME$4 = 
        new javax.xml.namespace.QName("", "startTime");
    private static final javax.xml.namespace.QName ENDTIME$6 = 
        new javax.xml.namespace.QName("", "endTime");
    private static final javax.xml.namespace.QName NOTIFICATIONINTERVAL$8 = 
        new javax.xml.namespace.QName("", "notificationInterval");
    
    
    /**
     * Gets array of all "Action" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType[] getActionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(ACTION$1, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Action" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType getActionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType)get_store().find_element_user(ACTION$1, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Action" element
     */
    public int sizeOfActionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ACTION$1);
        }
    }
    
    /**
     * Sets array of all "Action" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setActionArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType[] actionArray)
    {
        check_orphaned();
        arraySetterHelper(actionArray, ACTION$0, ACTION$1);
    }
    
    /**
     * Sets ith "Action" element
     */
    public void setActionArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType action)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType)get_store().find_element_user(ACTION$1, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            target.set(action);
        }
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Action" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType insertNewAction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType)get_store().insert_element_user(ACTION$1, ACTION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Action" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType addNewAction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ActionType)get_store().add_element_user(ACTION$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "Action" element
     */
    public void removeAction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ACTION$1, i);
        }
    }
    
    /**
     * Gets the "selector" attribute
     */
    public java.lang.String getSelector()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SELECTOR$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "selector" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSelector()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SELECTOR$2);
            return target;
        }
    }
    
    /**
     * Sets the "selector" attribute
     */
    public void setSelector(java.lang.String selector)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SELECTOR$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SELECTOR$2);
            }
            target.setStringValue(selector);
        }
    }
    
    /**
     * Sets (as xml) the "selector" attribute
     */
    public void xsetSelector(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI selector)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SELECTOR$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SELECTOR$2);
            }
            target.set(selector);
        }
    }
    
    /**
     * Gets the "startTime" attribute
     */
    public java.util.Calendar getStartTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTTIME$4);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "startTime" attribute
     */
    public org.apache.xmlbeans.XmlDateTime xgetStartTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(STARTTIME$4);
            return target;
        }
    }
    
    /**
     * True if has "startTime" attribute
     */
    public boolean isSetStartTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(STARTTIME$4) != null;
        }
    }
    
    /**
     * Sets the "startTime" attribute
     */
    public void setStartTime(java.util.Calendar startTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTTIME$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STARTTIME$4);
            }
            target.setCalendarValue(startTime);
        }
    }
    
    /**
     * Sets (as xml) the "startTime" attribute
     */
    public void xsetStartTime(org.apache.xmlbeans.XmlDateTime startTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(STARTTIME$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_attribute_user(STARTTIME$4);
            }
            target.set(startTime);
        }
    }
    
    /**
     * Unsets the "startTime" attribute
     */
    public void unsetStartTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(STARTTIME$4);
        }
    }
    
    /**
     * Gets the "endTime" attribute
     */
    public java.util.Calendar getEndTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ENDTIME$6);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "endTime" attribute
     */
    public org.apache.xmlbeans.XmlDateTime xgetEndTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(ENDTIME$6);
            return target;
        }
    }
    
    /**
     * True if has "endTime" attribute
     */
    public boolean isSetEndTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ENDTIME$6) != null;
        }
    }
    
    /**
     * Sets the "endTime" attribute
     */
    public void setEndTime(java.util.Calendar endTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ENDTIME$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ENDTIME$6);
            }
            target.setCalendarValue(endTime);
        }
    }
    
    /**
     * Sets (as xml) the "endTime" attribute
     */
    public void xsetEndTime(org.apache.xmlbeans.XmlDateTime endTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(ENDTIME$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_attribute_user(ENDTIME$6);
            }
            target.set(endTime);
        }
    }
    
    /**
     * Unsets the "endTime" attribute
     */
    public void unsetEndTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ENDTIME$6);
        }
    }
    
    /**
     * Gets the "notificationInterval" attribute
     */
    public org.apache.xmlbeans.GDuration getNotificationInterval()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NOTIFICATIONINTERVAL$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(NOTIFICATIONINTERVAL$8);
            }
            if (target == null)
            {
                return null;
            }
            return target.getGDurationValue();
        }
    }
    
    /**
     * Gets (as xml) the "notificationInterval" attribute
     */
    public org.apache.xmlbeans.XmlDuration xgetNotificationInterval()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(NOTIFICATIONINTERVAL$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_default_attribute_value(NOTIFICATIONINTERVAL$8);
            }
            return target;
        }
    }
    
    /**
     * True if has "notificationInterval" attribute
     */
    public boolean isSetNotificationInterval()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(NOTIFICATIONINTERVAL$8) != null;
        }
    }
    
    /**
     * Sets the "notificationInterval" attribute
     */
    public void setNotificationInterval(org.apache.xmlbeans.GDuration notificationInterval)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NOTIFICATIONINTERVAL$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NOTIFICATIONINTERVAL$8);
            }
            target.setGDurationValue(notificationInterval);
        }
    }
    
    /**
     * Sets (as xml) the "notificationInterval" attribute
     */
    public void xsetNotificationInterval(org.apache.xmlbeans.XmlDuration notificationInterval)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(NOTIFICATIONINTERVAL$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_store().add_attribute_user(NOTIFICATIONINTERVAL$8);
            }
            target.set(notificationInterval);
        }
    }
    
    /**
     * Unsets the "notificationInterval" attribute
     */
    public void unsetNotificationInterval()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(NOTIFICATIONINTERVAL$8);
        }
    }
}
