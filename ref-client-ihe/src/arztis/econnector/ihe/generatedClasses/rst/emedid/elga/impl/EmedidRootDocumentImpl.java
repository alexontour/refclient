/*
 * An XML document type.
 * Localname: emedidRoot
 * Namespace: urn:elga.emedid.rst
 * Java type: arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedidRootDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rst.emedid.elga.impl;
/**
 * A document containing one emedidRoot(@urn:elga.emedid.rst) element.
 *
 * This is a complex type.
 */
public class EmedidRootDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedidRootDocument
{
    private static final long serialVersionUID = 1L;
    
    public EmedidRootDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EMEDIDROOT$0 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidRoot");
    
    
    /**
     * Gets the "emedidRoot" element
     */
    public java.lang.String getEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "emedidRoot" element
     */
    public void setEmedidRoot(java.lang.String emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDROOT$0);
            }
            target.setStringValue(emedidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "emedidRoot" element
     */
    public void xsetEmedidRoot(org.apache.xmlbeans.XmlString emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDROOT$0);
            }
            target.set(emedidRoot);
        }
    }
}
