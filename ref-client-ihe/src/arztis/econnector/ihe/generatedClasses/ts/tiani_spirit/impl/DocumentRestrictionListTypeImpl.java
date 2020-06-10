/*
 * XML Type:  DocumentRestrictionListType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML DocumentRestrictionListType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class DocumentRestrictionListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType
{
    private static final long serialVersionUID = 1L;
    
    public DocumentRestrictionListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTRESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentRestriction");
    
    
    /**
     * Gets array of all "DocumentRestriction" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType[] getDocumentRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(DOCUMENTRESTRICTION$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "DocumentRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType getDocumentRestrictionArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType)get_store().find_element_user(DOCUMENTRESTRICTION$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "DocumentRestriction" element
     */
    public int sizeOfDocumentRestrictionArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTRESTRICTION$0);
        }
    }
    
    /**
     * Sets array of all "DocumentRestriction" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setDocumentRestrictionArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType[] documentRestrictionArray)
    {
        check_orphaned();
        arraySetterHelper(documentRestrictionArray, DOCUMENTRESTRICTION$0);
    }
    
    /**
     * Sets ith "DocumentRestriction" element
     */
    public void setDocumentRestrictionArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType documentRestriction)
    {
        generatedSetterHelperImpl(documentRestriction, DOCUMENTRESTRICTION$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType insertNewDocumentRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType)get_store().insert_element_user(DOCUMENTRESTRICTION$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType addNewDocumentRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType)get_store().add_element_user(DOCUMENTRESTRICTION$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "DocumentRestriction" element
     */
    public void removeDocumentRestriction(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTRESTRICTION$0, i);
        }
    }
}
