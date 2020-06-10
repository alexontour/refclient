/*
 * An XML document type.
 * Localname: Expires
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.ExpiresDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.impl;
/**
 * A document containing one Expires(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd) element.
 *
 * This is a complex type.
 */
public class ExpiresDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.ExpiresDocument
{
    private static final long serialVersionUID = 1L;
    
    public ExpiresDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXPIRES$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", "Expires");
    
    
    /**
     * Gets the "Expires" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime getExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().find_element_user(EXPIRES$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Expires" element
     */
    public void setExpires(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime expires)
    {
        generatedSetterHelperImpl(expires, EXPIRES$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Expires" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime addNewExpires()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.AttributedDateTime)get_store().add_element_user(EXPIRES$0);
            return target;
        }
    }
}
