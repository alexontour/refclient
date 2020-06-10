/*
 * XML Type:  TelephoneNumberType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML TelephoneNumberType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class TelephoneNumberTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType
{
    private static final long serialVersionUID = 1L;
    
    public TelephoneNumberTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName AREACODE$0 = 
        new javax.xml.namespace.QName("", "areaCode");
    private static final javax.xml.namespace.QName COUNTRYCODE$2 = 
        new javax.xml.namespace.QName("", "countryCode");
    private static final javax.xml.namespace.QName EXTENSION$4 = 
        new javax.xml.namespace.QName("", "extension");
    private static final javax.xml.namespace.QName NUMBER$6 = 
        new javax.xml.namespace.QName("", "number");
    private static final javax.xml.namespace.QName PHONETYPE$8 = 
        new javax.xml.namespace.QName("", "phoneType");
    
    
    /**
     * Gets the "areaCode" attribute
     */
    public java.lang.String getAreaCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(AREACODE$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "areaCode" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetAreaCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(AREACODE$0);
            return target;
        }
    }
    
    /**
     * True if has "areaCode" attribute
     */
    public boolean isSetAreaCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(AREACODE$0) != null;
        }
    }
    
    /**
     * Sets the "areaCode" attribute
     */
    public void setAreaCode(java.lang.String areaCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(AREACODE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(AREACODE$0);
            }
            target.setStringValue(areaCode);
        }
    }
    
    /**
     * Sets (as xml) the "areaCode" attribute
     */
    public void xsetAreaCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 areaCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(AREACODE$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().add_attribute_user(AREACODE$0);
            }
            target.set(areaCode);
        }
    }
    
    /**
     * Unsets the "areaCode" attribute
     */
    public void unsetAreaCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(AREACODE$0);
        }
    }
    
    /**
     * Gets the "countryCode" attribute
     */
    public java.lang.String getCountryCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COUNTRYCODE$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "countryCode" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetCountryCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(COUNTRYCODE$2);
            return target;
        }
    }
    
    /**
     * True if has "countryCode" attribute
     */
    public boolean isSetCountryCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(COUNTRYCODE$2) != null;
        }
    }
    
    /**
     * Sets the "countryCode" attribute
     */
    public void setCountryCode(java.lang.String countryCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COUNTRYCODE$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(COUNTRYCODE$2);
            }
            target.setStringValue(countryCode);
        }
    }
    
    /**
     * Sets (as xml) the "countryCode" attribute
     */
    public void xsetCountryCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 countryCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(COUNTRYCODE$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().add_attribute_user(COUNTRYCODE$2);
            }
            target.set(countryCode);
        }
    }
    
    /**
     * Unsets the "countryCode" attribute
     */
    public void unsetCountryCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(COUNTRYCODE$2);
        }
    }
    
    /**
     * Gets the "extension" attribute
     */
    public java.lang.String getExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(EXTENSION$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "extension" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 xgetExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(EXTENSION$4);
            return target;
        }
    }
    
    /**
     * True if has "extension" attribute
     */
    public boolean isSetExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(EXTENSION$4) != null;
        }
    }
    
    /**
     * Sets the "extension" attribute
     */
    public void setExtension(java.lang.String extension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(EXTENSION$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(EXTENSION$4);
            }
            target.setStringValue(extension);
        }
    }
    
    /**
     * Sets (as xml) the "extension" attribute
     */
    public void xsetExtension(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 extension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().find_attribute_user(EXTENSION$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String8)get_store().add_attribute_user(EXTENSION$4);
            }
            target.set(extension);
        }
    }
    
    /**
     * Unsets the "extension" attribute
     */
    public void unsetExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(EXTENSION$4);
        }
    }
    
    /**
     * Gets the "number" attribute
     */
    public java.lang.String getNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NUMBER$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "number" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 xgetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().find_attribute_user(NUMBER$6);
            return target;
        }
    }
    
    /**
     * True if has "number" attribute
     */
    public boolean isSetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(NUMBER$6) != null;
        }
    }
    
    /**
     * Sets the "number" attribute
     */
    public void setNumber(java.lang.String number)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NUMBER$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NUMBER$6);
            }
            target.setStringValue(number);
        }
    }
    
    /**
     * Sets (as xml) the "number" attribute
     */
    public void xsetNumber(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 number)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().find_attribute_user(NUMBER$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().add_attribute_user(NUMBER$6);
            }
            target.set(number);
        }
    }
    
    /**
     * Unsets the "number" attribute
     */
    public void unsetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(NUMBER$6);
        }
    }
    
    /**
     * Gets the "phoneType" attribute
     */
    public java.lang.String getPhoneType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PHONETYPE$8);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "phoneType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 xgetPhoneType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().find_attribute_user(PHONETYPE$8);
            return target;
        }
    }
    
    /**
     * True if has "phoneType" attribute
     */
    public boolean isSetPhoneType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(PHONETYPE$8) != null;
        }
    }
    
    /**
     * Sets the "phoneType" attribute
     */
    public void setPhoneType(java.lang.String phoneType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PHONETYPE$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PHONETYPE$8);
            }
            target.setStringValue(phoneType);
        }
    }
    
    /**
     * Sets (as xml) the "phoneType" attribute
     */
    public void xsetPhoneType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 phoneType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().find_attribute_user(PHONETYPE$8);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().add_attribute_user(PHONETYPE$8);
            }
            target.set(phoneType);
        }
    }
    
    /**
     * Unsets the "phoneType" attribute
     */
    public void unsetPhoneType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(PHONETYPE$8);
        }
    }
}
