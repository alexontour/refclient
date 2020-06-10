/*
 * An XML document type.
 * Localname: ElgaToken
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ElgaToken(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ElgaTokenDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenDocument
{
    private static final long serialVersionUID = 1L;
    
    public ElgaTokenDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ELGATOKEN$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ElgaToken");
    
    
    /**
     * Gets the "ElgaToken" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType getElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType)get_store().find_element_user(ELGATOKEN$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ElgaToken" element
     */
    public void setElgaToken(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType elgaToken)
    {
        generatedSetterHelperImpl(elgaToken, ELGATOKEN$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ElgaToken" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType addNewElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType)get_store().add_element_user(ELGATOKEN$0);
            return target;
        }
    }
}
