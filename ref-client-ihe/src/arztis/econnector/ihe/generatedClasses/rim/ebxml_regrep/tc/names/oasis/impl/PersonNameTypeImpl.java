/*
 * XML Type:  PersonNameType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML PersonNameType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class PersonNameTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType
{
    private static final long serialVersionUID = 1L;
    
    public PersonNameTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName FIRSTNAME$0 = 
        new javax.xml.namespace.QName("", "firstName");
    private static final javax.xml.namespace.QName MIDDLENAME$2 = 
        new javax.xml.namespace.QName("", "middleName");
    private static final javax.xml.namespace.QName LASTNAME$4 = 
        new javax.xml.namespace.QName("", "lastName");
    
    
    /**
     * Gets the "firstName" attribute
     */
    public java.lang.String getFirstName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FIRSTNAME$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "firstName" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetFirstName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(FIRSTNAME$0);
            return target;
        }
    }
    
    /**
     * True if has "firstName" attribute
     */
    public boolean isSetFirstName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(FIRSTNAME$0) != null;
        }
    }
    
    /**
     * Sets the "firstName" attribute
     */
    public void setFirstName(java.lang.String firstName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FIRSTNAME$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(FIRSTNAME$0);
            }
            target.setStringValue(firstName);
        }
    }
    
    /**
     * Sets (as xml) the "firstName" attribute
     */
    public void xsetFirstName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName firstName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(FIRSTNAME$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(FIRSTNAME$0);
            }
            target.set(firstName);
        }
    }
    
    /**
     * Unsets the "firstName" attribute
     */
    public void unsetFirstName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(FIRSTNAME$0);
        }
    }
    
    /**
     * Gets the "middleName" attribute
     */
    public java.lang.String getMiddleName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MIDDLENAME$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "middleName" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetMiddleName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(MIDDLENAME$2);
            return target;
        }
    }
    
    /**
     * True if has "middleName" attribute
     */
    public boolean isSetMiddleName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(MIDDLENAME$2) != null;
        }
    }
    
    /**
     * Sets the "middleName" attribute
     */
    public void setMiddleName(java.lang.String middleName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MIDDLENAME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(MIDDLENAME$2);
            }
            target.setStringValue(middleName);
        }
    }
    
    /**
     * Sets (as xml) the "middleName" attribute
     */
    public void xsetMiddleName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName middleName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(MIDDLENAME$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(MIDDLENAME$2);
            }
            target.set(middleName);
        }
    }
    
    /**
     * Unsets the "middleName" attribute
     */
    public void unsetMiddleName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(MIDDLENAME$2);
        }
    }
    
    /**
     * Gets the "lastName" attribute
     */
    public java.lang.String getLastName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LASTNAME$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "lastName" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetLastName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(LASTNAME$4);
            return target;
        }
    }
    
    /**
     * True if has "lastName" attribute
     */
    public boolean isSetLastName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(LASTNAME$4) != null;
        }
    }
    
    /**
     * Sets the "lastName" attribute
     */
    public void setLastName(java.lang.String lastName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LASTNAME$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(LASTNAME$4);
            }
            target.setStringValue(lastName);
        }
    }
    
    /**
     * Sets (as xml) the "lastName" attribute
     */
    public void xsetLastName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName lastName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(LASTNAME$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(LASTNAME$4);
            }
            target.set(lastName);
        }
    }
    
    /**
     * Unsets the "lastName" attribute
     */
    public void unsetLastName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(LASTNAME$4);
        }
    }
}
