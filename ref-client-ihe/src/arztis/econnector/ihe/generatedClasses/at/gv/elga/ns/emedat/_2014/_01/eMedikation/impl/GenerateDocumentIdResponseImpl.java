/*
 * XML Type:  generateDocumentIdResponse
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * An XML generateDocumentIdResponse(@http://ns.elga.gv.at/emedat/2014/1/eMedikation).
 *
 * This is a complex type.
 */
public class GenerateDocumentIdResponseImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse
{
    private static final long serialVersionUID = 1L;
    
    public GenerateDocumentIdResponseImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RETURN$0 = 
        new javax.xml.namespace.QName("", "return");
    
    
    /**
     * Gets the "return" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult getReturn()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult)get_store().find_element_user(RETURN$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "return" element
     */
    public boolean isSetReturn()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(RETURN$0) != 0;
        }
    }
    
    /**
     * Sets the "return" element
     */
    public void setReturn(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult xreturn)
    {
        generatedSetterHelperImpl(xreturn, RETURN$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "return" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult addNewReturn()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult)get_store().add_element_user(RETURN$0);
            return target;
        }
    }
    
    /**
     * Unsets the "return" element
     */
    public void unsetReturn()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(RETURN$0, 0);
        }
    }
}
