/*
 * An XML document type.
 * Localname: DateTimeFilter
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one DateTimeFilter(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class DateTimeFilterDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterDocument
{
    private static final long serialVersionUID = 1L;
    
    public DateTimeFilterDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DATETIMEFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "DateTimeFilter");
    
    
    /**
     * Gets the "DateTimeFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType getDateTimeFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType)get_store().find_element_user(DATETIMEFILTER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DateTimeFilter" element
     */
    public void setDateTimeFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType dateTimeFilter)
    {
        generatedSetterHelperImpl(dateTimeFilter, DATETIMEFILTER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DateTimeFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType addNewDateTimeFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.DateTimeFilterType)get_store().add_element_user(DATETIMEFILTER$0);
            return target;
        }
    }
}
