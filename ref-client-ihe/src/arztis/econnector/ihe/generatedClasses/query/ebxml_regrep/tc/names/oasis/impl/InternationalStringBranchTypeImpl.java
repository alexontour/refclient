/*
 * XML Type:  InternationalStringBranchType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML InternationalStringBranchType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class InternationalStringBranchTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.BranchTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType
{
    private static final long serialVersionUID = 1L;
    
    public InternationalStringBranchTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName LOCALIZEDSTRINGFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "LocalizedStringFilter");
    
    
    /**
     * Gets array of all "LocalizedStringFilter" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] getLocalizedStringFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(LOCALIZEDSTRINGFILTER$0, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "LocalizedStringFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getLocalizedStringFilterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(LOCALIZEDSTRINGFILTER$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "LocalizedStringFilter" element
     */
    public int sizeOfLocalizedStringFilterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(LOCALIZEDSTRINGFILTER$0);
        }
    }
    
    /**
     * Sets array of all "LocalizedStringFilter" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setLocalizedStringFilterArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType[] localizedStringFilterArray)
    {
        check_orphaned();
        arraySetterHelper(localizedStringFilterArray, LOCALIZEDSTRINGFILTER$0);
    }
    
    /**
     * Sets ith "LocalizedStringFilter" element
     */
    public void setLocalizedStringFilterArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType localizedStringFilter)
    {
        generatedSetterHelperImpl(localizedStringFilter, LOCALIZEDSTRINGFILTER$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "LocalizedStringFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType insertNewLocalizedStringFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().insert_element_user(LOCALIZEDSTRINGFILTER$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "LocalizedStringFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewLocalizedStringFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(LOCALIZEDSTRINGFILTER$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "LocalizedStringFilter" element
     */
    public void removeLocalizedStringFilter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(LOCALIZEDSTRINGFILTER$0, i);
        }
    }
}
