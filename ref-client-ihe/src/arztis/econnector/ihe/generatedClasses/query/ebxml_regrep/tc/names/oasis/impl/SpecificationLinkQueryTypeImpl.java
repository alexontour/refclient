/*
 * XML Type:  SpecificationLinkQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML SpecificationLinkQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class SpecificationLinkQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType
{
    private static final long serialVersionUID = 1L;
    
    public SpecificationLinkQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName USAGEDESCRIPTIONBRANCH$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "UsageDescriptionBranch");
    private static final javax.xml.namespace.QName SERVICEBINDINGQUERY$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ServiceBindingQuery");
    private static final javax.xml.namespace.QName SPECIFICATIONOBJECTQUERY$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SpecificationObjectQuery");
    
    
    /**
     * Gets the "UsageDescriptionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType getUsageDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().find_element_user(USAGEDESCRIPTIONBRANCH$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "UsageDescriptionBranch" element
     */
    public boolean isSetUsageDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(USAGEDESCRIPTIONBRANCH$0) != 0;
        }
    }
    
    /**
     * Sets the "UsageDescriptionBranch" element
     */
    public void setUsageDescriptionBranch(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType usageDescriptionBranch)
    {
        generatedSetterHelperImpl(usageDescriptionBranch, USAGEDESCRIPTIONBRANCH$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "UsageDescriptionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType addNewUsageDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().add_element_user(USAGEDESCRIPTIONBRANCH$0);
            return target;
        }
    }
    
    /**
     * Unsets the "UsageDescriptionBranch" element
     */
    public void unsetUsageDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(USAGEDESCRIPTIONBRANCH$0, 0);
        }
    }
    
    /**
     * Gets the "ServiceBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType getServiceBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().find_element_user(SERVICEBINDINGQUERY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ServiceBindingQuery" element
     */
    public boolean isSetServiceBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEBINDINGQUERY$2) != 0;
        }
    }
    
    /**
     * Sets the "ServiceBindingQuery" element
     */
    public void setServiceBindingQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType serviceBindingQuery)
    {
        generatedSetterHelperImpl(serviceBindingQuery, SERVICEBINDINGQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType addNewServiceBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().add_element_user(SERVICEBINDINGQUERY$2);
            return target;
        }
    }
    
    /**
     * Unsets the "ServiceBindingQuery" element
     */
    public void unsetServiceBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEBINDINGQUERY$2, 0);
        }
    }
    
    /**
     * Gets the "SpecificationObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getSpecificationObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().find_element_user(SPECIFICATIONOBJECTQUERY$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "SpecificationObjectQuery" element
     */
    public boolean isSetSpecificationObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SPECIFICATIONOBJECTQUERY$4) != 0;
        }
    }
    
    /**
     * Sets the "SpecificationObjectQuery" element
     */
    public void setSpecificationObjectQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType specificationObjectQuery)
    {
        generatedSetterHelperImpl(specificationObjectQuery, SPECIFICATIONOBJECTQUERY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SpecificationObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewSpecificationObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().add_element_user(SPECIFICATIONOBJECTQUERY$4);
            return target;
        }
    }
    
    /**
     * Unsets the "SpecificationObjectQuery" element
     */
    public void unsetSpecificationObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SPECIFICATIONOBJECTQUERY$4, 0);
        }
    }
}
