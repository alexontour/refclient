/*
 * XML Type:  InternationalStringType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML InternationalStringType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class InternationalStringTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType
{
    private static final long serialVersionUID = 1L;
    
    public InternationalStringTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName LOCALIZEDSTRING$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "LocalizedString");
    
    
    /**
     * Gets array of all "LocalizedString" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType[] getLocalizedStringArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(LOCALIZEDSTRING$0, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "LocalizedString" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType getLocalizedStringArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType)get_store().find_element_user(LOCALIZEDSTRING$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "LocalizedString" element
     */
    public int sizeOfLocalizedStringArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(LOCALIZEDSTRING$0);
        }
    }
    
    /**
     * Sets array of all "LocalizedString" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setLocalizedStringArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType[] localizedStringArray)
    {
        check_orphaned();
        arraySetterHelper(localizedStringArray, LOCALIZEDSTRING$0);
    }
    
    /**
     * Sets ith "LocalizedString" element
     */
    public void setLocalizedStringArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType localizedString)
    {
        generatedSetterHelperImpl(localizedString, LOCALIZEDSTRING$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "LocalizedString" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType insertNewLocalizedString(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType)get_store().insert_element_user(LOCALIZEDSTRING$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "LocalizedString" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType addNewLocalizedString()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType)get_store().add_element_user(LOCALIZEDSTRING$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "LocalizedString" element
     */
    public void removeLocalizedString(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(LOCALIZEDSTRING$0, i);
        }
    }
}
