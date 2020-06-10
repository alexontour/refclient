/*
 * An XML document type.
 * Localname: NCName
 * Namespace: http://schemas.xmlsoap.org/soap/encoding/
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCNameDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.impl;
/**
 * A document containing one NCName(@http://schemas.xmlsoap.org/soap/encoding/) element.
 *
 * This is a complex type.
 */
public class NCNameDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCNameDocument
{
    private static final long serialVersionUID = 1L;
    
    public NCNameDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName NCNAME$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/soap/encoding/", "NCName");
    
    
    /**
     * Gets the "NCName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName getNCName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName)get_store().find_element_user(NCNAME$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "NCName" element
     */
    public void setNCName(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName ncName)
    {
        generatedSetterHelperImpl(ncName, NCNAME$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "NCName" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName addNewNCName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.NCName)get_store().add_element_user(NCNAME$0);
            return target;
        }
    }
}
