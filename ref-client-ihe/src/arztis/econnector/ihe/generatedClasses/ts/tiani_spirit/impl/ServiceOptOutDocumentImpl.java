/*
 * An XML document type.
 * Localname: ServiceOptOut
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceOptOut(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceOptOutDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceOptOutDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEOPTOUT$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceOptOut");
    
    
    /**
     * Gets the "ServiceOptOut" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType getServiceOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType)get_store().find_element_user(SERVICEOPTOUT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceOptOut" element
     */
    public void setServiceOptOut(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType serviceOptOut)
    {
        generatedSetterHelperImpl(serviceOptOut, SERVICEOPTOUT$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceOptOut" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType addNewServiceOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutType)get_store().add_element_user(SERVICEOPTOUT$0);
            return target;
        }
    }
}
