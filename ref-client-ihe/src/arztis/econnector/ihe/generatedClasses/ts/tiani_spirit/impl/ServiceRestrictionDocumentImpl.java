/*
 * An XML document type.
 * Localname: ServiceRestriction
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceRestriction(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceRestrictionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceRestrictionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICERESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceRestriction");
    
    
    /**
     * Gets the "ServiceRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType getServiceRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType)get_store().find_element_user(SERVICERESTRICTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceRestriction" element
     */
    public void setServiceRestriction(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType serviceRestriction)
    {
        generatedSetterHelperImpl(serviceRestriction, SERVICERESTRICTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType addNewServiceRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionType)get_store().add_element_user(SERVICERESTRICTION$0);
            return target;
        }
    }
}
