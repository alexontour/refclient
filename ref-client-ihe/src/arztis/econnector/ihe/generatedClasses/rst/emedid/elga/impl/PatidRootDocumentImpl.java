/*
 * An XML document type.
 * Localname: patidRoot
 * Namespace: urn:elga.emedid.rst
 * Java type: arztis.econnector.ihe.generatedClasses.rst.emedid.elga.PatidRootDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rst.emedid.elga.impl;
/**
 * A document containing one patidRoot(@urn:elga.emedid.rst) element.
 *
 * This is a complex type.
 */
public class PatidRootDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rst.emedid.elga.PatidRootDocument
{
    private static final long serialVersionUID = 1L;
    
    public PatidRootDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIDROOT$0 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidRoot");
    
    
    /**
     * Gets the "patidRoot" element
     */
    public java.lang.String getPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "patidRoot" element
     */
    public void setPatidRoot(java.lang.String patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDROOT$0);
            }
            target.setStringValue(patidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "patidRoot" element
     */
    public void xsetPatidRoot(org.apache.xmlbeans.XmlString patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDROOT$0);
            }
            target.set(patidRoot);
        }
    }
}
