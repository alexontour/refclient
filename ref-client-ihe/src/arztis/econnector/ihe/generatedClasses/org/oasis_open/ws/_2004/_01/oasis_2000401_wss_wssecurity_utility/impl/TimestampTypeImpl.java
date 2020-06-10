/*
 * XML Type:  TimestampType
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.impl;
/**
 * An XML TimestampType(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd).
 *
 * This is a complex type.
 */
public class TimestampTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType
{
    private static final long serialVersionUID = 1L;
    
    public TimestampTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CREATED$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", "Created");
    private static final javax.xml.namespace.QName EXPIRES$2 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", "Expires");
    private static final javax.xml.namespace.QName ID$4 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", "Id");
    
    
    /**
     * Gets the "Created" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime getCreated()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().find_element_user(CREATED$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Created" element
     */
    public boolean isSetCreated()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CREATED$0) != 0;
        }
    }
    
    /**
     * Sets the "Created" element
     */
    public void setCreated(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime created)
    {
        generatedSetterHelperImpl(created, CREATED$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Created" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime addNewCreated()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().add_element_user(CREATED$0);
            return target;
        }
    }
    
    /**
     * Unsets the "Created" element
     */
    public void unsetCreated()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CREATED$0, 0);
        }
    }
    
    /**
     * Gets the "Expires" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime getExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().find_element_user(EXPIRES$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Expires" element
     */
    public boolean isSetExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EXPIRES$2) != 0;
        }
    }
    
    /**
     * Sets the "Expires" element
     */
    public void setExpires(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime expires)
    {
        generatedSetterHelperImpl(expires, EXPIRES$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Expires" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime addNewExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().add_element_user(EXPIRES$2);
            return target;
        }
    }
    
    /**
     * Unsets the "Expires" element
     */
    public void unsetExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EXPIRES$2, 0);
        }
    }
    
    /**
     * Gets the "Id" attribute
     */
    public java.lang.String getId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Id" attribute
     */
    public org.apache.xmlbeans.XmlID xgetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlID target = null;
            target = (org.apache.xmlbeans.XmlID)get_store().find_attribute_user(ID$4);
            return target;
        }
    }
    
    /**
     * True if has "Id" attribute
     */
    public boolean isSetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ID$4) != null;
        }
    }
    
    /**
     * Sets the "Id" attribute
     */
    public void setId(java.lang.String id)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ID$4);
            }
            target.setStringValue(id);
        }
    }
    
    /**
     * Sets (as xml) the "Id" attribute
     */
    public void xsetId(org.apache.xmlbeans.XmlID id)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlID target = null;
            target = (org.apache.xmlbeans.XmlID)get_store().find_attribute_user(ID$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlID)get_store().add_attribute_user(ID$4);
            }
            target.set(id);
        }
    }
    
    /**
     * Unsets the "Id" attribute
     */
    public void unsetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ID$4);
        }
    }
}
