/*
 * An XML document type.
 * Localname: EmedAtException
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtExceptionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * A document containing one EmedAtException(@http://ns.elga.gv.at/emedat/2014/1/eMedikation) element.
 *
 * This is a complex type.
 */
public class EmedAtExceptionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtExceptionDocument
{
    private static final long serialVersionUID = 1L;
    
    public EmedAtExceptionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EMEDATEXCEPTION$0 = 
        new javax.xml.namespace.QName("http://ns.elga.gv.at/emedat/2014/1/eMedikation", "EmedAtException");
    
    
    /**
     * Gets the "EmedAtException" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException getEmedAtException()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException)get_store().find_element_user(EMEDATEXCEPTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "EmedAtException" element
     */
    public void setEmedAtException(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException emedAtException)
    {
        generatedSetterHelperImpl(emedAtException, EMEDATEXCEPTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "EmedAtException" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException addNewEmedAtException()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtException)get_store().add_element_user(EMEDATEXCEPTION$0);
            return target;
        }
    }
}
