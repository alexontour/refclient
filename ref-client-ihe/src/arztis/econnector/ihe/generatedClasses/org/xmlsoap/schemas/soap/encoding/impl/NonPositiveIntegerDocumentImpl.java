/*
 * An XML document type.
 * Localname: nonPositiveInteger
 * Namespace: http://schemas.xmlsoap.org/soap/encoding/
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveIntegerDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.impl;
/**
 * A document containing one nonPositiveInteger(@http://schemas.xmlsoap.org/soap/encoding/) element.
 *
 * This is a complex type.
 */
public class NonPositiveIntegerDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveIntegerDocument
{
    private static final long serialVersionUID = 1L;
    
    public NonPositiveIntegerDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NONPOSITIVEINTEGER$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/soap/encoding/", "nonPositiveInteger");
    
    
    /**
     * Gets the "nonPositiveInteger" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger getNonPositiveInteger()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger)get_store().find_element_user(NONPOSITIVEINTEGER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "nonPositiveInteger" element
     */
    public void setNonPositiveInteger(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger nonPositiveInteger)
    {
        generatedSetterHelperImpl(nonPositiveInteger, NONPOSITIVEINTEGER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "nonPositiveInteger" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger addNewNonPositiveInteger()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NonPositiveInteger)get_store().add_element_user(NONPOSITIVEINTEGER$0);
            return target;
        }
    }
}
