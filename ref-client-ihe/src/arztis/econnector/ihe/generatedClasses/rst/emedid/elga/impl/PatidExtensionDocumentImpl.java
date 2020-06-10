/*
 * An XML document type.
 * Localname: patidExtension
 * Namespace: urn:elga.emedid.rst
 * Java type: arztis.econnector.ihe.generatedClasses.rst.emedid.elga.PatidExtensionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rst.emedid.elga.impl;
/**
 * A document containing one patidExtension(@urn:elga.emedid.rst) element.
 *
 * This is a complex type.
 */
public class PatidExtensionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rst.emedid.elga.PatidExtensionDocument
{
    private static final long serialVersionUID = 1L;
    
    public PatidExtensionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIDEXTENSION$0 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidExtension");
    
    
    /**
     * Gets the "patidExtension" element
     */
    public java.lang.String getPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "patidExtension" element
     */
    public void setPatidExtension(java.lang.String patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDEXTENSION$0);
            }
            target.setStringValue(patidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "patidExtension" element
     */
    public void xsetPatidExtension(org.apache.xmlbeans.XmlString patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDEXTENSION$0);
            }
            target.set(patidExtension);
        }
    }
}
