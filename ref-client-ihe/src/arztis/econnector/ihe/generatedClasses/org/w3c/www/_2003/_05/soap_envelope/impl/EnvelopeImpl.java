/*
 * XML Type:  Envelope
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Envelope
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * An XML Envelope(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public class EnvelopeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Envelope
{
    private static final long serialVersionUID = 1L;
    
    public EnvelopeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName HEADER$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Header");
    private static final javax.xml.namespace.QName BODY$2 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Body");
    
    
    /**
     * Gets the "Header" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header getHeader()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header)get_store().find_element_user(HEADER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Header" element
     */
    public boolean isSetHeader()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(HEADER$0) != 0;
        }
    }
    
    /**
     * Sets the "Header" element
     */
    public void setHeader(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header header)
    {
        generatedSetterHelperImpl(header, HEADER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Header" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header addNewHeader()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Header)get_store().add_element_user(HEADER$0);
            return target;
        }
    }
    
    /**
     * Unsets the "Header" element
     */
    public void unsetHeader()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(HEADER$0, 0);
        }
    }
    
    /**
     * Gets the "Body" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body getBody()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body)get_store().find_element_user(BODY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Body" element
     */
    public void setBody(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body body)
    {
        generatedSetterHelperImpl(body, BODY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Body" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body addNewBody()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Body)get_store().add_element_user(BODY$2);
            return target;
        }
    }
}
