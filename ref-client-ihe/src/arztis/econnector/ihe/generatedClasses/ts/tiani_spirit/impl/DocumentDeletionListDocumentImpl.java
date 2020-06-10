/*
 * An XML document type.
 * Localname: DocumentDeletionList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one DocumentDeletionList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class DocumentDeletionListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListDocument
{
    private static final long serialVersionUID = 1L;
    
    public DocumentDeletionListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTDELETIONLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentDeletionList");
    
    
    /**
     * Gets the "DocumentDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType getDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().find_element_user(DOCUMENTDELETIONLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DocumentDeletionList" element
     */
    public void setDocumentDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType documentDeletionList)
    {
        generatedSetterHelperImpl(documentDeletionList, DOCUMENTDELETIONLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType addNewDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().add_element_user(DOCUMENTDELETIONLIST$0);
            return target;
        }
    }
}
