/*
 * An XML document type.
 * Localname: Fault
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * A document containing one Fault(@http://www.w3.org/2003/05/soap-envelope) element.
 *
 * This is a complex type.
 */
public class FaultDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument
{
    private static final long serialVersionUID = 1L;
    
    public FaultDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName FAULT$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Fault");
    
    
    /**
     * Gets the "Fault" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault getFault()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault)get_store().find_element_user(FAULT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Fault" element
     */
    public void setFault(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault fault)
    {
        generatedSetterHelperImpl(fault, FAULT$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Fault" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault addNewFault()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault)get_store().add_element_user(FAULT$0);
            return target;
        }
    }
}
