/*
 * XML Type:  QueryExpressionBranchType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML QueryExpressionBranchType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class QueryExpressionBranchTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.BranchTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.QueryExpressionBranchType
{
    private static final long serialVersionUID = 1L;
    
    public QueryExpressionBranchTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName QUERYLANGUAGEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "QueryLanguageQuery");
    
    
    /**
     * Gets the "QueryLanguageQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getQueryLanguageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(QUERYLANGUAGEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "QueryLanguageQuery" element
     */
    public boolean isSetQueryLanguageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(QUERYLANGUAGEQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "QueryLanguageQuery" element
     */
    public void setQueryLanguageQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType queryLanguageQuery)
    {
        generatedSetterHelperImpl(queryLanguageQuery, QUERYLANGUAGEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "QueryLanguageQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewQueryLanguageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(QUERYLANGUAGEQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "QueryLanguageQuery" element
     */
    public void unsetQueryLanguageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(QUERYLANGUAGEQUERY$0, 0);
        }
    }
}
