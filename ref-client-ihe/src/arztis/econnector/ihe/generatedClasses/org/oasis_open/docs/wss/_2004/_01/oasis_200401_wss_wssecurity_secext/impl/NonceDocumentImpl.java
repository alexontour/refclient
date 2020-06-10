/*
 * An XML document type.
 * Localname: Nonce
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.NonceDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.impl;
/**
 * A document containing one Nonce(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd) element.
 *
 * This is a complex type.
 */
public class NonceDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.NonceDocument
{
    private static final long serialVersionUID = 1L;
    
    public NonceDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NONCE$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", "Nonce");
    
    
    /**
     * Gets the "Nonce" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString getNonce()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString)get_store().find_element_user(NONCE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Nonce" element
     */
    public void setNonce(arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString nonce)
    {
        generatedSetterHelperImpl(nonce, NONCE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Nonce" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString addNewNonce()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.EncodedString)get_store().add_element_user(NONCE$0);
            return target;
        }
    }
}
