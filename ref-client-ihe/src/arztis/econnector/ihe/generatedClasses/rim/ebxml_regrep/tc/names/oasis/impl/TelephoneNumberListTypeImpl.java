/*
 * XML Type:  TelephoneNumberListType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML TelephoneNumberListType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class TelephoneNumberListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberListType
{
    private static final long serialVersionUID = 1L;
    
    public TelephoneNumberListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TELEPHONENUMBER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "TelephoneNumber");
    
    
    /**
     * Gets array of all "TelephoneNumber" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] getTelephoneNumberArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TELEPHONENUMBER$0, targetList);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().find_element_user(TELEPHONENUMBER$0, i);
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
            return get_store().count_elements(TELEPHONENUMBER$0);
        }
    }
    
    /**
     * Sets array of all "TelephoneNumber" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTelephoneNumberArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType[] telephoneNumberArray)
    {
        check_orphaned();
        arraySetterHelper(telephoneNumberArray, TELEPHONENUMBER$0);
    }
    
    /**
     * Sets ith "TelephoneNumber" element
     */
    public void setTelephoneNumberArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType telephoneNumber)
    {
        generatedSetterHelperImpl(telephoneNumber, TELEPHONENUMBER$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().insert_element_user(TELEPHONENUMBER$0, i);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().add_element_user(TELEPHONENUMBER$0);
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
            get_store().remove_element(TELEPHONENUMBER$0, i);
        }
    }
}
