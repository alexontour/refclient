/*
 * An XML document type.
 * Localname: UsageParameter
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.UsageParameterDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one UsageParameter(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class UsageParameterDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.UsageParameterDocument
{
    private static final long serialVersionUID = 1L;
    
    public UsageParameterDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName USAGEPARAMETER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "UsageParameter");
    
    
    /**
     * Gets the "UsageParameter" element
     */
    public java.lang.String getUsageParameter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(USAGEPARAMETER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "UsageParameter" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText xgetUsageParameter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().find_element_user(USAGEPARAMETER$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "UsageParameter" element
     */
    public void setUsageParameter(java.lang.String usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(USAGEPARAMETER$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(USAGEPARAMETER$0);
            }
            target.setStringValue(usageParameter);
        }
    }
    
    /**
     * Sets (as xml) the "UsageParameter" element
     */
    public void xsetUsageParameter(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().find_element_user(USAGEPARAMETER$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().add_element_user(USAGEPARAMETER$0);
            }
            target.set(usageParameter);
        }
    }
}
