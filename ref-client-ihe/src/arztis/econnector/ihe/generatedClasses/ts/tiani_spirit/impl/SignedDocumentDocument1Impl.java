/*
 * An XML document type.
 * Localname: SignedDocument
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentDocument1
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one SignedDocument(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class SignedDocumentDocument1Impl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentDocument1
{
    private static final long serialVersionUID = 1L;
    
    public SignedDocumentDocument1Impl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SIGNEDDOCUMENT$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocument");
    
    
    /**
     * Gets the "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType getSignedDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType)get_store().find_element_user(SIGNEDDOCUMENT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "SignedDocument" element
     */
    public void setSignedDocument(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType signedDocument)
    {
        generatedSetterHelperImpl(signedDocument, SIGNEDDOCUMENT$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType addNewSignedDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType)get_store().add_element_user(SIGNEDDOCUMENT$0);
            return target;
        }
    }
}
