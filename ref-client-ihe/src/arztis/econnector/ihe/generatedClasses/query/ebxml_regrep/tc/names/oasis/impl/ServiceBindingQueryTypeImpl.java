/*
 * XML Type:  ServiceBindingQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ServiceBindingQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class ServiceBindingQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceBindingQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ServiceQuery");
    private static final javax.xml.namespace.QName SPECIFICATIONLINKQUERY$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SpecificationLinkQuery");
    private static final javax.xml.namespace.QName TARGETBINDINGQUERY$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "TargetBindingQuery");
    
    
    /**
     * Gets the "ServiceQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType getServiceQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType)get_store().find_element_user(SERVICEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ServiceQuery" element
     */
    public boolean isSetServiceQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "ServiceQuery" element
     */
    public void setServiceQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType serviceQuery)
    {
        generatedSetterHelperImpl(serviceQuery, SERVICEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType addNewServiceQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType)get_store().add_element_user(SERVICEQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ServiceQuery" element
     */
    public void unsetServiceQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEQUERY$0, 0);
        }
    }
    
    /**
     * Gets array of all "SpecificationLinkQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType[] getSpecificationLinkQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SPECIFICATIONLINKQUERY$2, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SpecificationLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType getSpecificationLinkQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType)get_store().find_element_user(SPECIFICATIONLINKQUERY$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SpecificationLinkQuery" element
     */
    public int sizeOfSpecificationLinkQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SPECIFICATIONLINKQUERY$2);
        }
    }
    
    /**
     * Sets array of all "SpecificationLinkQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSpecificationLinkQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType[] specificationLinkQueryArray)
    {
        check_orphaned();
        arraySetterHelper(specificationLinkQueryArray, SPECIFICATIONLINKQUERY$2);
    }
    
    /**
     * Sets ith "SpecificationLinkQuery" element
     */
    public void setSpecificationLinkQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType specificationLinkQuery)
    {
        generatedSetterHelperImpl(specificationLinkQuery, SPECIFICATIONLINKQUERY$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SpecificationLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType insertNewSpecificationLinkQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType)get_store().insert_element_user(SPECIFICATIONLINKQUERY$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SpecificationLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType addNewSpecificationLinkQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType)get_store().add_element_user(SPECIFICATIONLINKQUERY$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "SpecificationLinkQuery" element
     */
    public void removeSpecificationLinkQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SPECIFICATIONLINKQUERY$2, i);
        }
    }
    
    /**
     * Gets the "TargetBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType getTargetBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().find_element_user(TARGETBINDINGQUERY$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "TargetBindingQuery" element
     */
    public boolean isSetTargetBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TARGETBINDINGQUERY$4) != 0;
        }
    }
    
    /**
     * Sets the "TargetBindingQuery" element
     */
    public void setTargetBindingQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType targetBindingQuery)
    {
        generatedSetterHelperImpl(targetBindingQuery, TARGETBINDINGQUERY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TargetBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType addNewTargetBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().add_element_user(TARGETBINDINGQUERY$4);
            return target;
        }
    }
    
    /**
     * Unsets the "TargetBindingQuery" element
     */
    public void unsetTargetBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TARGETBINDINGQUERY$4, 0);
        }
    }
}
