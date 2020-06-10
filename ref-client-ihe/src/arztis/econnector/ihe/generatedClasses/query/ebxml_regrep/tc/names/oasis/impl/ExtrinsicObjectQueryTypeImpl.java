/*
 * XML Type:  ExtrinsicObjectQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ExtrinsicObjectQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class ExtrinsicObjectQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType
{
    private static final long serialVersionUID = 1L;
    
    public ExtrinsicObjectQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CONTENTVERSIONINFOFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ContentVersionInfoFilter");
    
    
    /**
     * Gets the "ContentVersionInfoFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getContentVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(CONTENTVERSIONINFOFILTER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ContentVersionInfoFilter" element
     */
    public boolean isSetContentVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CONTENTVERSIONINFOFILTER$0) != 0;
        }
    }
    
    /**
     * Sets the "ContentVersionInfoFilter" element
     */
    public void setContentVersionInfoFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType contentVersionInfoFilter)
    {
        generatedSetterHelperImpl(contentVersionInfoFilter, CONTENTVERSIONINFOFILTER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ContentVersionInfoFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewContentVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(CONTENTVERSIONINFOFILTER$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ContentVersionInfoFilter" element
     */
    public void unsetContentVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CONTENTVERSIONINFOFILTER$0, 0);
        }
    }
}
