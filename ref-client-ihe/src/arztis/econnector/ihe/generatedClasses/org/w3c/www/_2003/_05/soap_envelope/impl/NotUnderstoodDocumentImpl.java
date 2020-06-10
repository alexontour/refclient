/*
 * An XML document type.
 * Localname: NotUnderstood
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * A document containing one NotUnderstood(@http://www.w3.org/2003/05/soap-envelope) element.
 *
 * This is a complex type.
 */
public class NotUnderstoodDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodDocument
{
    private static final long serialVersionUID = 1L;
    
    public NotUnderstoodDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NOTUNDERSTOOD$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "NotUnderstood");
    
    
    /**
     * Gets the "NotUnderstood" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType getNotUnderstood()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType)get_store().find_element_user(NOTUNDERSTOOD$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "NotUnderstood" element
     */
    public void setNotUnderstood(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType notUnderstood)
    {
        generatedSetterHelperImpl(notUnderstood, NOTUNDERSTOOD$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "NotUnderstood" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType addNewNotUnderstood()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.NotUnderstoodType)get_store().add_element_user(NOTUNDERSTOOD$0);
            return target;
        }
    }
}
