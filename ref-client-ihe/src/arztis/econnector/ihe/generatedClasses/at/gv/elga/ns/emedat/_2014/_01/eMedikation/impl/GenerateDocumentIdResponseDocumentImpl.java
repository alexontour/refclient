/*
 * An XML document type.
 * Localname: generateDocumentIdResponse
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponseDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * A document containing one generateDocumentIdResponse(@http://ns.elga.gv.at/emedat/2014/1/eMedikation) element.
 *
 * This is a complex type.
 */
public class GenerateDocumentIdResponseDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponseDocument
{
    private static final long serialVersionUID = 1L;
    
    public GenerateDocumentIdResponseDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName GENERATEDOCUMENTIDRESPONSE$0 = 
        new javax.xml.namespace.QName("http://ns.elga.gv.at/emedat/2014/1/eMedikation", "generateDocumentIdResponse");
    
    
    /**
     * Gets the "generateDocumentIdResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse getGenerateDocumentIdResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse)get_store().find_element_user(GENERATEDOCUMENTIDRESPONSE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "generateDocumentIdResponse" element
     */
    public void setGenerateDocumentIdResponse(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse generateDocumentIdResponse)
    {
        generatedSetterHelperImpl(generateDocumentIdResponse, GENERATEDOCUMENTIDRESPONSE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "generateDocumentIdResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse addNewGenerateDocumentIdResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResponse)get_store().add_element_user(GENERATEDOCUMENTIDRESPONSE$0);
            return target;
        }
    }
}
