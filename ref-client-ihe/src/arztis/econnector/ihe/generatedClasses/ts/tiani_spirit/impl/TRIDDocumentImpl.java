/*
 * An XML document type.
 * Localname: TRID
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one TRID(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class TRIDDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDDocument
{
    private static final long serialVersionUID = 1L;
    
    public TRIDDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TRID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRID");
    
    
    /**
     * Gets the "TRID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType getTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType)get_store().find_element_user(TRID$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "TRID" element
     */
    public void setTRID(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType trid)
    {
        generatedSetterHelperImpl(trid, TRID$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TRID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType addNewTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType)get_store().add_element_user(TRID$0);
            return target;
        }
    }
}
