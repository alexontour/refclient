/*
 * An XML document type.
 * Localname: SignedDocumentList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one SignedDocumentList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class SignedDocumentListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListDocument
{
    private static final long serialVersionUID = 1L;
    
    public SignedDocumentListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SIGNEDDOCUMENTLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocumentList");
    
    
    /**
     * Gets the "SignedDocumentList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType getSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().find_element_user(SIGNEDDOCUMENTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "SignedDocumentList" element
     */
    public void setSignedDocumentList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType signedDocumentList)
    {
        generatedSetterHelperImpl(signedDocumentList, SIGNEDDOCUMENTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SignedDocumentList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType addNewSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().add_element_user(SIGNEDDOCUMENTLIST$0);
            return target;
        }
    }
}
