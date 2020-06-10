/*
 * XML Type:  OrganizationQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML OrganizationQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class OrganizationQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType
{
    private static final long serialVersionUID = 1L;
    
    public OrganizationQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADDRESSFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AddressFilter");
    private static final javax.xml.namespace.QName TELEPHONENUMBERFILTER$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "TelephoneNumberFilter");
    private static final javax.xml.namespace.QName EMAILADDRESSFILTER$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "EmailAddressFilter");
    private static final javax.xml.namespace.QName PARENTQUERY$6 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ParentQuery");
    private static final javax.xml.namespace.QName CHILDORGANIZATIONQUERY$8 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ChildOrganizationQuery");
    private static final javax.xml.namespace.QName PRIMARYCONTACTQUERY$10 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "PrimaryContactQuery");
    
    
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
     * Gets array of all "TelephoneNumberFilter" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getTelephoneNumberFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TELEPHONENUMBERFILTER$2, targetList);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(TELEPHONENUMBERFILTER$2, i);
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
            return get_store().count_elements(TELEPHONENUMBERFILTER$2);
        }
    }
    
    /**
     * Sets array of all "TelephoneNumberFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTelephoneNumberFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] telephoneNumberFilterArray)
    {
        check_orphaned();
        arraySetterHelper(telephoneNumberFilterArray, TELEPHONENUMBERFILTER$2);
    }
    
    /**
     * Sets ith "TelephoneNumberFilter" element
     */
    public void setTelephoneNumberFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType telephoneNumberFilter)
    {
        generatedSetterHelperImpl(telephoneNumberFilter, TELEPHONENUMBERFILTER$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(TELEPHONENUMBERFILTER$2, i);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(TELEPHONENUMBERFILTER$2);
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
            get_store().remove_element(TELEPHONENUMBERFILTER$2, i);
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
            get_store().find_all_element_users(EMAILADDRESSFILTER$4, targetList);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(EMAILADDRESSFILTER$4, i);
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
            return get_store().count_elements(EMAILADDRESSFILTER$4);
        }
    }
    
    /**
     * Sets array of all "EmailAddressFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setEmailAddressFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] emailAddressFilterArray)
    {
        check_orphaned();
        arraySetterHelper(emailAddressFilterArray, EMAILADDRESSFILTER$4);
    }
    
    /**
     * Sets ith "EmailAddressFilter" element
     */
    public void setEmailAddressFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType emailAddressFilter)
    {
        generatedSetterHelperImpl(emailAddressFilter, EMAILADDRESSFILTER$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(EMAILADDRESSFILTER$4, i);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(EMAILADDRESSFILTER$4);
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
            get_store().remove_element(EMAILADDRESSFILTER$4, i);
        }
    }
    
    /**
     * Gets the "ParentQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType getParentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().find_element_user(PARENTQUERY$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ParentQuery" element
     */
    public boolean isSetParentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PARENTQUERY$6) != 0;
        }
    }
    
    /**
     * Sets the "ParentQuery" element
     */
    public void setParentQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType parentQuery)
    {
        generatedSetterHelperImpl(parentQuery, PARENTQUERY$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ParentQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType addNewParentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().add_element_user(PARENTQUERY$6);
            return target;
        }
    }
    
    /**
     * Unsets the "ParentQuery" element
     */
    public void unsetParentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PARENTQUERY$6, 0);
        }
    }
    
    /**
     * Gets array of all "ChildOrganizationQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[] getChildOrganizationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(CHILDORGANIZATIONQUERY$8, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ChildOrganizationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType getChildOrganizationQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().find_element_user(CHILDORGANIZATIONQUERY$8, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ChildOrganizationQuery" element
     */
    public int sizeOfChildOrganizationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CHILDORGANIZATIONQUERY$8);
        }
    }
    
    /**
     * Sets array of all "ChildOrganizationQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setChildOrganizationQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType[] childOrganizationQueryArray)
    {
        check_orphaned();
        arraySetterHelper(childOrganizationQueryArray, CHILDORGANIZATIONQUERY$8);
    }
    
    /**
     * Sets ith "ChildOrganizationQuery" element
     */
    public void setChildOrganizationQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType childOrganizationQuery)
    {
        generatedSetterHelperImpl(childOrganizationQuery, CHILDORGANIZATIONQUERY$8, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ChildOrganizationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType insertNewChildOrganizationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().insert_element_user(CHILDORGANIZATIONQUERY$8, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ChildOrganizationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType addNewChildOrganizationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().add_element_user(CHILDORGANIZATIONQUERY$8);
            return target;
        }
    }
    
    /**
     * Removes the ith "ChildOrganizationQuery" element
     */
    public void removeChildOrganizationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CHILDORGANIZATIONQUERY$8, i);
        }
    }
    
    /**
     * Gets the "PrimaryContactQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType getPrimaryContactQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType)get_store().find_element_user(PRIMARYCONTACTQUERY$10, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "PrimaryContactQuery" element
     */
    public boolean isSetPrimaryContactQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PRIMARYCONTACTQUERY$10) != 0;
        }
    }
    
    /**
     * Sets the "PrimaryContactQuery" element
     */
    public void setPrimaryContactQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType primaryContactQuery)
    {
        generatedSetterHelperImpl(primaryContactQuery, PRIMARYCONTACTQUERY$10, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "PrimaryContactQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType addNewPrimaryContactQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.PersonQueryType)get_store().add_element_user(PRIMARYCONTACTQUERY$10);
            return target;
        }
    }
    
    /**
     * Unsets the "PrimaryContactQuery" element
     */
    public void unsetPrimaryContactQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PRIMARYCONTACTQUERY$10, 0);
        }
    }
}
