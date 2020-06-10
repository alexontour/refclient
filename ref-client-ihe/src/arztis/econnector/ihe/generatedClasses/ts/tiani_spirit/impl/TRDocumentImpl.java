/*
 * An XML document type.
 * Localname: TR
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one TR(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class TRDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRDocument
{
    private static final long serialVersionUID = 1L;
    
    public TRDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TR$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TR");
    
    
    /**
     * Gets the "TR" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType getTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType)get_store().find_element_user(TR$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "TR" element
     */
    public void setTR(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType tr)
    {
        generatedSetterHelperImpl(tr, TR$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TR" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType addNewTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType)get_store().add_element_user(TR$0);
            return target;
        }
    }
}
