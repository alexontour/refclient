/*
 * An XML document type.
 * Localname: Document
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses.ihe.iti.xdsb._2007.DocumentDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ihe.iti.xdsb._2007.impl;
/**
 * A document containing one Document(@urn:ihe:iti:xds-b:2007) element.
 *
 * This is a complex type.
 */
public class DocumentDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ihe.iti.xdsb._2007.DocumentDocument
{
    private static final long serialVersionUID = 1L;
    
    public DocumentDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENT$0 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "Document");
    
    
    /**
     * Gets the "Document" element
     */
    public byte[] getDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DOCUMENT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getByteArrayValue();
        }
    }
    
    /**
     * Gets (as xml) the "Document" element
     */
    public org.apache.xmlbeans.XmlBase64Binary xgetDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(DOCUMENT$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "Document" element
     */
    public void setDocument(byte[] document)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DOCUMENT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(DOCUMENT$0);
            }
            target.setByteArrayValue(document);
        }
    }
    
    /**
     * Sets (as xml) the "Document" element
     */
    public void xsetDocument(org.apache.xmlbeans.XmlBase64Binary document)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(DOCUMENT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBase64Binary)get_store().add_element_user(DOCUMENT$0);
            }
            target.set(document);
        }
    }
}
