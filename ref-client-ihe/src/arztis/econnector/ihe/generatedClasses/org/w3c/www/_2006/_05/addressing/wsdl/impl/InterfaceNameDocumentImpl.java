/*
 * An XML document type.
 * Localname: InterfaceName
 * Namespace: http://www.w3.org/2006/05/addressing/wsdl
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.InterfaceNameDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.impl;
/**
 * A document containing one InterfaceName(@http://www.w3.org/2006/05/addressing/wsdl) element.
 *
 * This is a complex type.
 */
public class InterfaceNameDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.InterfaceNameDocument
{
    private static final long serialVersionUID = 1L;
    
    public InterfaceNameDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName INTERFACENAME$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2006/05/addressing/wsdl", "InterfaceName");
    
    
    /**
     * Gets the "InterfaceName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType getInterfaceName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType)get_store().find_element_user(INTERFACENAME$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "InterfaceName" element
     */
    public void setInterfaceName(arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType interfaceName)
    {
        generatedSetterHelperImpl(interfaceName, INTERFACENAME$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "InterfaceName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType addNewInterfaceName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AttributedQNameType)get_store().add_element_user(INTERFACENAME$0);
            return target;
        }
    }
}
