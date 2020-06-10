/*
 * XML Type:  OrganizationType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML OrganizationType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class OrganizationTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType
{
    private static final long serialVersionUID = 1L;
    
    public OrganizationTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADDRESS$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Address");
    private static final javax.xml.namespace.QName TELEPHONENUMBER$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "TelephoneNumber");
    private static final javax.xml.namespace.QName EMAILADDRESS$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "EmailAddress");
    private static final javax.xml.namespace.QName PARENT$6 = 
        new javax.xml.namespace.QName("", "parent");
    private static final javax.xml.namespace.QName PRIMARYCONTACT$8 = 
        new javax.xml.namespace.QName("", "primaryContact");
    
    
    /**
     * Gets array of all "Address" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType[] getAddressArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(ADDRESS$0, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Address" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType getAddressArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType)get_store().find_element_user(ADDRESS$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Address" element
     */
    public int sizeOfAddressArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ADDRESS$0);
        }
    }
    
    /**
     * Sets array of all "Address" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setAddressArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType[] addressArray)
    {
        check_orphaned();
        arraySetterHelper(addressArray, ADDRESS$0);
    }
    
    /**
     * Sets ith "Address" element
     */
    public void setAddressArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType address)
    {
        generatedSetterHelperImpl(address, ADDRESS$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Address" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType insertNewAddress(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType)get_store().insert_element_user(ADDRESS$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Address" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType addNewAddress()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType)get_store().add_element_user(ADDRESS$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "Address" element
     */
    public void removeAddress(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ADDRESS$0, i);
        }
    }
    
    /**
     * Gets array of all "TelephoneNumber" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] getTelephoneNumberArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TELEPHONENUMBER$2, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "TelephoneNumber" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType getTelephoneNumberArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().find_element_user(TELEPHONENUMBER$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "TelephoneNumber" element
     */
    public int sizeOfTelephoneNumberArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TELEPHONENUMBER$2);
        }
    }
    
    /**
     * Sets array of all "TelephoneNumber" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTelephoneNumberArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] telephoneNumberArray)
    {
        check_orphaned();
        arraySetterHelper(telephoneNumberArray, TELEPHONENUMBER$2);
    }
    
    /**
     * Sets ith "TelephoneNumber" element
     */
    public void setTelephoneNumberArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType telephoneNumber)
    {
        generatedSetterHelperImpl(telephoneNumber, TELEPHONENUMBER$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "TelephoneNumber" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType insertNewTelephoneNumber(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().insert_element_user(TELEPHONENUMBER$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "TelephoneNumber" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType addNewTelephoneNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().add_element_user(TELEPHONENUMBER$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "TelephoneNumber" element
     */
    public void removeTelephoneNumber(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TELEPHONENUMBER$2, i);
        }
    }
    
    /**
     * Gets array of all "EmailAddress" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType[] getEmailAddressArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(EMAILADDRESS$4, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "EmailAddress" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType getEmailAddressArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().find_element_user(EMAILADDRESS$4, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "EmailAddress" element
     */
    public int sizeOfEmailAddressArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMAILADDRESS$4);
        }
    }
    
    /**
     * Sets array of all "EmailAddress" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setEmailAddressArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType[] emailAddressArray)
    {
        check_orphaned();
        arraySetterHelper(emailAddressArray, EMAILADDRESS$4);
    }
    
    /**
     * Sets ith "EmailAddress" element
     */
    public void setEmailAddressArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType emailAddress)
    {
        generatedSetterHelperImpl(emailAddress, EMAILADDRESS$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "EmailAddress" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType insertNewEmailAddress(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().insert_element_user(EMAILADDRESS$4, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "EmailAddress" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType addNewEmailAddress()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().add_element_user(EMAILADDRESS$4);
            return target;
        }
    }
    
    /**
     * Removes the ith "EmailAddress" element
     */
    public void removeEmailAddress(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMAILADDRESS$4, i);
        }
    }
    
    /**
     * Gets the "parent" attribute
     */
    public java.lang.String getParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PARENT$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "parent" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PARENT$6);
            return target;
        }
    }
    
    /**
     * True if has "parent" attribute
     */
    public boolean isSetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(PARENT$6) != null;
        }
    }
    
    /**
     * Sets the "parent" attribute
     */
    public void setParent(java.lang.String parent)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PARENT$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PARENT$6);
            }
            target.setStringValue(parent);
        }
    }
    
    /**
     * Sets (as xml) the "parent" attribute
     */
    public void xsetParent(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI parent)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PARENT$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(PARENT$6);
            }
            target.set(parent);
        }
    }
    
    /**
     * Unsets the "parent" attribute
     */
    public void unsetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(PARENT$6);
        }
    }
    
    /**
     * Gets the "primaryContact" attribute
     */
    public java.lang.String getPrimaryContact()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PRIMARYCONTACT$8);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "primaryContact" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetPrimaryContact()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PRIMARYCONTACT$8);
            return target;
        }
    }
    
    /**
     * True if has "primaryContact" attribute
     */
    public boolean isSetPrimaryContact()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(PRIMARYCONTACT$8) != null;
        }
    }
    
    /**
     * Sets the "primaryContact" attribute
     */
    public void setPrimaryContact(java.lang.String primaryContact)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PRIMARYCONTACT$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PRIMARYCONTACT$8);
            }
            target.setStringValue(primaryContact);
        }
    }
    
    /**
     * Sets (as xml) the "primaryContact" attribute
     */
    public void xsetPrimaryContact(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI primaryContact)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PRIMARYCONTACT$8);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(PRIMARYCONTACT$8);
            }
            target.set(primaryContact);
        }
    }
    
    /**
     * Unsets the "primaryContact" attribute
     */
    public void unsetPrimaryContact()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(PRIMARYCONTACT$8);
        }
    }
}
