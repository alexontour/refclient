/*
 * XML Type:  PersonType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML PersonType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class PersonTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonType
{
    private static final long serialVersionUID = 1L;
    
    public PersonTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADDRESS$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Address");
    private static final javax.xml.namespace.QName PERSONNAME$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "PersonName");
    private static final javax.xml.namespace.QName TELEPHONENUMBER$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "TelephoneNumber");
    private static final javax.xml.namespace.QName EMAILADDRESS$6 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "EmailAddress");
    
    
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
     * Gets the "PersonName" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType getPersonName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType)get_store().find_element_user(PERSONNAME$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "PersonName" element
     */
    public boolean isSetPersonName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PERSONNAME$2) != 0;
        }
    }
    
    /**
     * Sets the "PersonName" element
     */
    public void setPersonName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType personName)
    {
        generatedSetterHelperImpl(personName, PERSONNAME$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "PersonName" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType addNewPersonName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PersonNameType)get_store().add_element_user(PERSONNAME$2);
            return target;
        }
    }
    
    /**
     * Unsets the "PersonName" element
     */
    public void unsetPersonName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PERSONNAME$2, 0);
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
            get_store().find_all_element_users(TELEPHONENUMBER$4, targetList);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().find_element_user(TELEPHONENUMBER$4, i);
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
            return get_store().count_elements(TELEPHONENUMBER$4);
        }
    }
    
    /**
     * Sets array of all "TelephoneNumber" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTelephoneNumberArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] telephoneNumberArray)
    {
        check_orphaned();
        arraySetterHelper(telephoneNumberArray, TELEPHONENUMBER$4);
    }
    
    /**
     * Sets ith "TelephoneNumber" element
     */
    public void setTelephoneNumberArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType telephoneNumber)
    {
        generatedSetterHelperImpl(telephoneNumber, TELEPHONENUMBER$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().insert_element_user(TELEPHONENUMBER$4, i);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().add_element_user(TELEPHONENUMBER$4);
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
            get_store().remove_element(TELEPHONENUMBER$4, i);
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
            get_store().find_all_element_users(EMAILADDRESS$6, targetList);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().find_element_user(EMAILADDRESS$6, i);
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
            return get_store().count_elements(EMAILADDRESS$6);
        }
    }
    
    /**
     * Sets array of all "EmailAddress" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setEmailAddressArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType[] emailAddressArray)
    {
        check_orphaned();
        arraySetterHelper(emailAddressArray, EMAILADDRESS$6);
    }
    
    /**
     * Sets ith "EmailAddress" element
     */
    public void setEmailAddressArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType emailAddress)
    {
        generatedSetterHelperImpl(emailAddress, EMAILADDRESS$6, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().insert_element_user(EMAILADDRESS$6, i);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.EmailAddressType)get_store().add_element_user(EMAILADDRESS$6);
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
            get_store().remove_element(EMAILADDRESS$6, i);
        }
    }
}
