/*
 * An XML document type.
 * Localname: emedidExtension
 * Namespace: urn:elga.emedid.rst
 * Java type: arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedidExtensionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rst.emedid.elga.impl;
/**
 * A document containing one emedidExtension(@urn:elga.emedid.rst) element.
 *
 * This is a complex type.
 */
public class EmedidExtensionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedidExtensionDocument
{
    private static final long serialVersionUID = 1L;
    
    public EmedidExtensionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EMEDIDEXTENSION$0 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidExtension");
    
    
    /**
     * Gets the "emedidExtension" element
     */
    public java.lang.String getEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "emedidExtension" element
     */
    public void setEmedidExtension(java.lang.String emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDEXTENSION$0);
            }
            target.setStringValue(emedidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "emedidExtension" element
     */
    public void xsetEmedidExtension(org.apache.xmlbeans.XmlString emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDEXTENSION$0);
            }
            target.set(emedidExtension);
        }
    }
}
