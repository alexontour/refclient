/*
 * XML Type:  DocumentDeletionListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML DocumentDeletionListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class DocumentDeletionListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType
{
    private static final long serialVersionUID = 1L;
    
    public DocumentDeletionListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTDELETION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentDeletion");
    
    
    /**
     * Gets array of all "DocumentDeletion" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType[] getDocumentDeletionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(DOCUMENTDELETION$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "DocumentDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType getDocumentDeletionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType)get_store().find_element_user(DOCUMENTDELETION$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "DocumentDeletion" element
     */
    public int sizeOfDocumentDeletionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTDELETION$0);
        }
    }
    
    /**
     * Sets array of all "DocumentDeletion" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setDocumentDeletionArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType[] documentDeletionArray)
    {
        check_orphaned();
        arraySetterHelper(documentDeletionArray, DOCUMENTDELETION$0);
    }
    
    /**
     * Sets ith "DocumentDeletion" element
     */
    public void setDocumentDeletionArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType documentDeletion)
    {
        generatedSetterHelperImpl(documentDeletion, DOCUMENTDELETION$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentDeletion" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType insertNewDocumentDeletion(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionType)get_store().insert_element_user(DOCUMENTDELETION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentDeletion" element
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
    
    /**
     * Removes the ith "DocumentDeletion" element
     */
    public void removeDocumentDeletion(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTDELETION$0, i);
        }
    }
}
