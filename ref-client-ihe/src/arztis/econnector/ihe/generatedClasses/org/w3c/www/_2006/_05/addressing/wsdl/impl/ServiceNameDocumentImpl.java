/*
 * An XML document type.
 * Localname: ServiceName
 * Namespace: http://www.w3.org/2006/05/addressing/wsdl
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.impl;
/**
 * A document containing one ServiceName(@http://www.w3.org/2006/05/addressing/wsdl) element.
 *
 * This is a complex type.
 */
public class ServiceNameDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameDocument
{
    private static final long serialVersionUID = 1L;
    
    public ServiceNameDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SERVICENAME$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2006/05/addressing/wsdl", "ServiceName");
    
    
    /**
     * Gets the "ServiceName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType getServiceName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType)get_store().find_element_user(SERVICENAME$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ServiceName" element
     */
    public void setServiceName(arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType serviceName)
    {
        generatedSetterHelperImpl(serviceName, SERVICENAME$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType addNewServiceName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.ServiceNameType)get_store().add_element_user(SERVICENAME$0);
            return target;
        }
    }
}
