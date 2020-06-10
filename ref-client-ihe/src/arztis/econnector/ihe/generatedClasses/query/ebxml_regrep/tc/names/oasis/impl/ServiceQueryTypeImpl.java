/*
 * XML Type:  ServiceQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ServiceQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class ServiceQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceQueryType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEBINDINGQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ServiceBindingQuery");
    
    
    /**
     * Gets array of all "ServiceBindingQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType[] getServiceBindingQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SERVICEBINDINGQUERY$0, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ServiceBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType getServiceBindingQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().find_element_user(SERVICEBINDINGQUERY$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ServiceBindingQuery" element
     */
    public int sizeOfServiceBindingQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEBINDINGQUERY$0);
        }
    }
    
    /**
     * Sets array of all "ServiceBindingQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setServiceBindingQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType[] serviceBindingQueryArray)
    {
        check_orphaned();
        arraySetterHelper(serviceBindingQueryArray, SERVICEBINDINGQUERY$0);
    }
    
    /**
     * Sets ith "ServiceBindingQuery" element
     */
    public void setServiceBindingQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType serviceBindingQuery)
    {
        generatedSetterHelperImpl(serviceBindingQuery, SERVICEBINDINGQUERY$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ServiceBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType insertNewServiceBindingQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().insert_element_user(SERVICEBINDINGQUERY$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ServiceBindingQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType addNewServiceBindingQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ServiceBindingQueryType)get_store().add_element_user(SERVICEBINDINGQUERY$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ServiceBindingQuery" element
     */
    public void removeServiceBindingQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEBINDINGQUERY$0, i);
        }
    }
}
