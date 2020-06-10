/*
 * An XML document type.
 * Localname: DocumentDeletion
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one DocumentDeletion(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class DocumentDeletionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionDocument
{
    private static final long serialVersionUID = 1L;
    
    public DocumentDeletionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTDELETION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentDeletion");
    
    
    /**
     * Gets the "DocumentDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType getDocumentDeletion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType)get_store().find_element_user(DOCUMENTDELETION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DocumentDeletion" element
     */
    public void setDocumentDeletion(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType documentDeletion)
    {
        generatedSetterHelperImpl(documentDeletion, DOCUMENTDELETION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType addNewDocumentDeletion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType)get_store().add_element_user(DOCUMENTDELETION$0);
            return target;
        }
    }
}
