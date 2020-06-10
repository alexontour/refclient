/*
 * An XML document type.
 * Localname: generateDocumentId
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * A document containing one generateDocumentId(@http://ns.elga.gv.at/emedat/2014/1/eMedikation) element.
 *
 * This is a complex type.
 */
public class GenerateDocumentIdDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdDocument
{
    private static final long serialVersionUID = 1L;
    
    public GenerateDocumentIdDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName GENERATEDOCUMENTID$0 = 
        new javax.xml.namespace.QName("http://ns.elga.gv.at/emedat/2014/1/eMedikation", "generateDocumentId");
    
    
    /**
     * Gets the "generateDocumentId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId getGenerateDocumentId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId)get_store().find_element_user(GENERATEDOCUMENTID$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "generateDocumentId" element
     */
    public void setGenerateDocumentId(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId generateDocumentId)
    {
        generatedSetterHelperImpl(generateDocumentId, GENERATEDOCUMENTID$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "generateDocumentId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId addNewGenerateDocumentId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId)get_store().add_element_user(GENERATEDOCUMENTID$0);
            return target;
        }
    }
}
