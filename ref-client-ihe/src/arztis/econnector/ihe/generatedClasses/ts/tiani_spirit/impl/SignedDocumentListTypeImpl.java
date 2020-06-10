/*
 * XML Type:  SignedDocumentListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML SignedDocumentListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class SignedDocumentListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType
{
    private static final long serialVersionUID = 1L;
    
    public SignedDocumentListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SIGNEDDOCUMENT$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocument");
    
    
    /**
     * Gets array of all "SignedDocument" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType[] getSignedDocumentArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SIGNEDDOCUMENT$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType getSignedDocumentArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType)get_store().find_element_user(SIGNEDDOCUMENT$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SignedDocument" element
     */
    public int sizeOfSignedDocumentArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SIGNEDDOCUMENT$0);
        }
    }
    
    /**
     * Sets array of all "SignedDocument" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSignedDocumentArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType[] signedDocumentArray)
    {
        check_orphaned();
        arraySetterHelper(signedDocumentArray, SIGNEDDOCUMENT$0);
    }
    
    /**
     * Sets ith "SignedDocument" element
     */
    public void setSignedDocumentArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType signedDocument)
    {
        generatedSetterHelperImpl(signedDocument, SIGNEDDOCUMENT$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType insertNewSignedDocument(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType)get_store().insert_element_user(SIGNEDDOCUMENT$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SignedDocument" element
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
    
    /**
     * Removes the ith "SignedDocument" element
     */
    public void removeSignedDocument(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SIGNEDDOCUMENT$0, i);
        }
    }
}
