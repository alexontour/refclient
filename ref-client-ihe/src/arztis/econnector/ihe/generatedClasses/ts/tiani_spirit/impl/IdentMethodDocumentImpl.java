/*
 * An XML document type.
 * Localname: IdentMethod
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one IdentMethod(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class IdentMethodDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodDocument
{
    private static final long serialVersionUID = 1L;
    
    public IdentMethodDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName IDENTMETHOD$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IdentMethod");
    
    
    /**
     * Gets the "IdentMethod" element
     */
    public java.lang.String getIdentMethod()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "IdentMethod" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType xgetIdentMethod()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().find_element_user(IDENTMETHOD$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "IdentMethod" element
     */
    public void setIdentMethod(java.lang.String identMethod)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(IDENTMETHOD$0);
            }
            target.setStringValue(identMethod);
        }
    }
    
    /**
     * Sets (as xml) the "IdentMethod" element
     */
    public void xsetIdentMethod(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType identMethod)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().add_element_user(IDENTMETHOD$0);
            }
            target.set(identMethod);
        }
    }
}
