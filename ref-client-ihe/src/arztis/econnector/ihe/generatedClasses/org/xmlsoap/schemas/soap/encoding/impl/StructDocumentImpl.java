/*
 * An XML document type.
 * Localname: Struct
 * Namespace: http://schemas.xmlsoap.org/soap/encoding/
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.StructDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.impl;
/**
 * A document containing one Struct(@http://schemas.xmlsoap.org/soap/encoding/) element.
 *
 * This is a complex type.
 */
public class StructDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.StructDocument
{
    private static final long serialVersionUID = 1L;
    
    public StructDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName STRUCT$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/soap/encoding/", "Struct");
    
    
    /**
     * Gets the "Struct" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct getStruct()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct)get_store().find_element_user(STRUCT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Struct" element
     */
    public void setStruct(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct struct)
    {
        generatedSetterHelperImpl(struct, STRUCT$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Struct" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct addNewStruct()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.soap.encoding.Struct)get_store().add_element_user(STRUCT$0);
            return target;
        }
    }
}
