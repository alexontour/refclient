/*
 * An XML document type.
 * Localname: TRType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one TRType(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class TRTypeDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeDocument
{
    private static final long serialVersionUID = 1L;
    
    public TRTypeDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TRTYPE$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRType");
    
    
    /**
     * Gets the "TRType" element
     */
    public java.lang.String getTRType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRTYPE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "TRType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType xgetTRType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().find_element_user(TRTYPE$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "TRType" element
     */
    public void setTRType(java.lang.String trType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRTYPE$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(TRTYPE$0);
            }
            target.setStringValue(trType);
        }
    }
    
    /**
     * Sets (as xml) the "TRType" element
     */
    public void xsetTRType(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType trType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().find_element_user(TRTYPE$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().add_element_user(TRTYPE$0);
            }
            target.set(trType);
        }
    }
}
