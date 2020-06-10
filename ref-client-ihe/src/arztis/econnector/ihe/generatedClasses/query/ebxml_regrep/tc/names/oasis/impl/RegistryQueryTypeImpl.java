/*
 * XML Type:  RegistryQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class RegistryQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryQueryType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName OPERATORQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "OperatorQuery");
    
    
    /**
     * Gets the "OperatorQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType getOperatorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().find_element_user(OPERATORQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "OperatorQuery" element
     */
    public boolean isSetOperatorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(OPERATORQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "OperatorQuery" element
     */
    public void setOperatorQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType operatorQuery)
    {
        generatedSetterHelperImpl(operatorQuery, OPERATORQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "OperatorQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType addNewOperatorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.OrganizationQueryType)get_store().add_element_user(OPERATORQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "OperatorQuery" element
     */
    public void unsetOperatorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(OPERATORQUERY$0, 0);
        }
    }
}
