/*
 * XML Type:  SubscriptionQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SubscriptionQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML SubscriptionQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class SubscriptionQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SubscriptionQueryType
{
    private static final long serialVersionUID = 1L;
    
    public SubscriptionQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SELECTORQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SelectorQuery");
    
    
    /**
     * Gets the "SelectorQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType getSelectorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType)get_store().find_element_user(SELECTORQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "SelectorQuery" element
     */
    public boolean isSetSelectorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SELECTORQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "SelectorQuery" element
     */
    public void setSelectorQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType selectorQuery)
    {
        generatedSetterHelperImpl(selectorQuery, SELECTORQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SelectorQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType addNewSelectorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryQueryType)get_store().add_element_user(SELECTORQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "SelectorQuery" element
     */
    public void unsetSelectorQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SELECTORQUERY$0, 0);
        }
    }
}
