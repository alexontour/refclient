/*
 * XML Type:  AdhocQueryQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML AdhocQueryQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class AdhocQueryQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType
{
    private static final long serialVersionUID = 1L;
    
    public AdhocQueryQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName QUERYEXPRESSIONBRANCH$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "QueryExpressionBranch");
    
    
    /**
     * Gets the "QueryExpressionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType getQueryExpressionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType)get_store().find_element_user(QUERYEXPRESSIONBRANCH$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "QueryExpressionBranch" element
     */
    public boolean isSetQueryExpressionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(QUERYEXPRESSIONBRANCH$0) != 0;
        }
    }
    
    /**
     * Sets the "QueryExpressionBranch" element
     */
    public void setQueryExpressionBranch(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType queryExpressionBranch)
    {
        generatedSetterHelperImpl(queryExpressionBranch, QUERYEXPRESSIONBRANCH$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "QueryExpressionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType addNewQueryExpressionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType)get_store().add_element_user(QUERYEXPRESSIONBRANCH$0);
            return target;
        }
    }
    
    /**
     * Unsets the "QueryExpressionBranch" element
     */
    public void unsetQueryExpressionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(QUERYEXPRESSIONBRANCH$0, 0);
        }
    }
}
