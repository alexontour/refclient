/*
 * An XML document type.
 * Localname: ServiceOptOutList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ServiceOptOutList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ServiceOptOutListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceOptOutListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICEOPTOUTLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceOptOutList");
    
    
    /**
     * Gets the "ServiceOptOutList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType getServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().find_element_user(SERVICEOPTOUTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceOptOutList" element
     */
    public void setServiceOptOutList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType serviceOptOutList)
    {
        generatedSetterHelperImpl(serviceOptOutList, SERVICEOPTOUTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceOptOutList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType addNewServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().add_element_user(SERVICEOPTOUTLIST$0);
            return target;
        }
    }
}
