/*
 * An XML document type.
 * Localname: ServiceRestrictionList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceRestrictionList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceRestrictionListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceRestrictionListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICERESTRICTIONLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceRestrictionList");
    
    
    /**
     * Gets the "ServiceRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType getServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().find_element_user(SERVICERESTRICTIONLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceRestrictionList" element
     */
    public void setServiceRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType serviceRestrictionList)
    {
        generatedSetterHelperImpl(serviceRestrictionList, SERVICERESTRICTIONLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType addNewServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().add_element_user(SERVICERESTRICTIONLIST$0);
            return target;
        }
    }
}
