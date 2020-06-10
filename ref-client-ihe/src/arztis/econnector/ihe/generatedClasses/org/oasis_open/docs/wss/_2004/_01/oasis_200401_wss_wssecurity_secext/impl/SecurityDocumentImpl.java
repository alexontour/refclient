/*
 * An XML document type.
 * Localname: Security
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.impl;
/**
 * A document containing one Security(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd) element.
 *
 * This is a complex type.
 */
public class SecurityDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument
{
    private static final long serialVersionUID = 1L;
    
    public SecurityDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SECURITY$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", "Security");
    
    
    /**
     * Gets the "Security" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType getSecurity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType)get_store().find_element_user(SECURITY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Security" element
     */
    public void setSecurity(arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType security)
    {
        generatedSetterHelperImpl(security, SECURITY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Security" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType addNewSecurity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType)get_store().add_element_user(SECURITY$0);
            return target;
        }
    }
}
