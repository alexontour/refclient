/*
 * An XML document type.
 * Localname: negativeInteger
 * Namespace: http://schemas.xmlsoap.org/soap/encoding/
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeIntegerDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.impl;
/**
 * A document containing one negativeInteger(@http://schemas.xmlsoap.org/soap/encoding/) element.
 *
 * This is a complex type.
 */
public class NegativeIntegerDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeIntegerDocument
{
    private static final long serialVersionUID = 1L;
    
    public NegativeIntegerDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NEGATIVEINTEGER$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/soap/encoding/", "negativeInteger");
    
    
    /**
     * Gets the "negativeInteger" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger getNegativeInteger()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger)get_store().find_element_user(NEGATIVEINTEGER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "negativeInteger" element
     */
    public void setNegativeInteger(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger negativeInteger)
    {
        generatedSetterHelperImpl(negativeInteger, NEGATIVEINTEGER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "negativeInteger" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger addNewNegativeInteger()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NegativeInteger)get_store().add_element_user(NEGATIVEINTEGER$0);
            return target;
        }
    }
}
