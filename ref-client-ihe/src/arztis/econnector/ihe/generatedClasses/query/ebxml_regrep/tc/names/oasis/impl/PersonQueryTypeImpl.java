/*
 * XML Type:  PersonQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML PersonQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class PersonQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType
{
    private static final long serialVersionUID = 1L;
    
    public PersonQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADDRESSFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AddressFilter");
    private static final javax.xml.namespace.QName PERSONNAMEFILTER$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "PersonNameFilter");
    private static final javax.xml.namespace.QName TELEPHONENUMBERFILTER$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "TelephoneNumberFilter");
    private static final javax.xml.namespace.QName EMAILADDRESSFILTER$6 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "EmailAddressFilter");
    
    
    /**
     * Gets array of all "AddressFilter" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getAddressFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(ADDRESSFILTER$0, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "AddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getAddressFilterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(ADDRESSFILTER$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "AddressFilter" element
     */
    public int sizeOfAddressFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ADDRESSFILTER$0);
        }
    }
    
    /**
     * Sets array of all "AddressFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setAddressFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] addressFilterArray)
    {
        check_orphaned();
        arraySetterHelper(addressFilterArray, ADDRESSFILTER$0);
    }
    
    /**
     * Sets ith "AddressFilter" element
     */
    public void setAddressFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addressFilter)
    {
        generatedSetterHelperImpl(addressFilter, ADDRESSFILTER$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "AddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewAddressFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(ADDRESSFILTER$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "AddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewAddressFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(ADDRESSFILTER$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "AddressFilter" element
     */
    public void removeAddressFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ADDRESSFILTER$0, i);
        }
    }
    
    /**
     * Gets the "PersonNameFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getPersonNameFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(PERSONNAMEFILTER$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "PersonNameFilter" element
     */
    public boolean isSetPersonNameFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PERSONNAMEFILTER$2) != 0;
        }
    }
    
    /**
     * Sets the "PersonNameFilter" element
     */
    public void setPersonNameFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType personNameFilter)
    {
        generatedSetterHelperImpl(personNameFilter, PERSONNAMEFILTER$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "PersonNameFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewPersonNameFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(PERSONNAMEFILTER$2);
            return target;
        }
    }
    
    /**
     * Unsets the "PersonNameFilter" element
     */
    public void unsetPersonNameFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PERSONNAMEFILTER$2, 0);
        }
    }
    
    /**
     * Gets array of all "TelephoneNumberFilter" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getTelephoneNumberFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TELEPHONENUMBERFILTER$4, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "TelephoneNumberFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getTelephoneNumberFilterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(TELEPHONENUMBERFILTER$4, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "TelephoneNumberFilter" element
     */
    public int sizeOfTelephoneNumberFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TELEPHONENUMBERFILTER$4);
        }
    }
    
    /**
     * Sets array of all "TelephoneNumberFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTelephoneNumberFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] telephoneNumberFilterArray)
    {
        check_orphaned();
        arraySetterHelper(telephoneNumberFilterArray, TELEPHONENUMBERFILTER$4);
    }
    
    /**
     * Sets ith "TelephoneNumberFilter" element
     */
    public void setTelephoneNumberFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType telephoneNumberFilter)
    {
        generatedSetterHelperImpl(telephoneNumberFilter, TELEPHONENUMBERFILTER$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "TelephoneNumberFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewTelephoneNumberFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(TELEPHONENUMBERFILTER$4, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "TelephoneNumberFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewTelephoneNumberFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(TELEPHONENUMBERFILTER$4);
            return target;
        }
    }
    
    /**
     * Removes the ith "TelephoneNumberFilter" element
     */
    public void removeTelephoneNumberFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TELEPHONENUMBERFILTER$4, i);
        }
    }
    
    /**
     * Gets array of all "EmailAddressFilter" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getEmailAddressFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(EMAILADDRESSFILTER$6, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "EmailAddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getEmailAddressFilterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(EMAILADDRESSFILTER$6, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "EmailAddressFilter" element
     */
    public int sizeOfEmailAddressFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMAILADDRESSFILTER$6);
        }
    }
    
    /**
     * Sets array of all "EmailAddressFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setEmailAddressFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] emailAddressFilterArray)
    {
        check_orphaned();
        arraySetterHelper(emailAddressFilterArray, EMAILADDRESSFILTER$6);
    }
    
    /**
     * Sets ith "EmailAddressFilter" element
     */
    public void setEmailAddressFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType emailAddressFilter)
    {
        generatedSetterHelperImpl(emailAddressFilter, EMAILADDRESSFILTER$6, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "EmailAddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewEmailAddressFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(EMAILADDRESSFILTER$6, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "EmailAddressFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewEmailAddressFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(EMAILADDRESSFILTER$6);
            return target;
        }
    }
    
    /**
     * Removes the ith "EmailAddressFilter" element
     */
    public void removeEmailAddressFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMAILADDRESSFILTER$6, i);
        }
    }
}
