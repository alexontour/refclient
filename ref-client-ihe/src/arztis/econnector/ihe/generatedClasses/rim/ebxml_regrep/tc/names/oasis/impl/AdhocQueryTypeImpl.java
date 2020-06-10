/*
 * XML Type:  AdhocQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML AdhocQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class AdhocQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType
{
    private static final long serialVersionUID = 1L;
    
    public AdhocQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName QUERYEXPRESSION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "QueryExpression");
    
    
    /**
     * Gets the "QueryExpression" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType getQueryExpression()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType)get_store().find_element_user(QUERYEXPRESSION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "QueryExpression" element
     */
    public boolean isSetQueryExpression()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(QUERYEXPRESSION$0) != 0;
        }
    }
    
    /**
     * Sets the "QueryExpression" element
     */
    public void setQueryExpression(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType queryExpression)
    {
        generatedSetterHelperImpl(queryExpression, QUERYEXPRESSION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "QueryExpression" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType addNewQueryExpression()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.QueryExpressionType)get_store().add_element_user(QUERYEXPRESSION$0);
            return target;
        }
    }
    
    /**
     * Unsets the "QueryExpression" element
     */
    public void unsetQueryExpression()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(QUERYEXPRESSION$0, 0);
        }
    }
}
