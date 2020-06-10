/*
 * An XML document type.
 * Localname: normalizedString
 * Namespace: http://schemas.xmlsoap.org/soap/encoding/
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedStringDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.impl;
/**
 * A document containing one normalizedString(@http://schemas.xmlsoap.org/soap/encoding/) element.
 *
 * This is a complex type.
 */
public class NormalizedStringDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedStringDocument
{
    private static final long serialVersionUID = 1L;
    
    public NormalizedStringDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NORMALIZEDSTRING$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/soap/encoding/", "normalizedString");
    
    
    /**
     * Gets the "normalizedString" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString getNormalizedString()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString)get_store().find_element_user(NORMALIZEDSTRING$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "normalizedString" element
     */
    public void setNormalizedString(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString normalizedString)
    {
        generatedSetterHelperImpl(normalizedString, NORMALIZEDSTRING$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "normalizedString" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString addNewNormalizedString()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NormalizedString)get_store().add_element_user(NORMALIZEDSTRING$0);
            return target;
        }
    }
}
