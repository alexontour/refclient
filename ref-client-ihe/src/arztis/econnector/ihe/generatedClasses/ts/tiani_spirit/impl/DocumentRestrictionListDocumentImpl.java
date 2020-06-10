/*
 * An XML document type.
 * Localname: DocumentRestrictionList
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one DocumentRestrictionList(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class DocumentRestrictionListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListDocument
{
    private static final long serialVersionUID = 1L;
    
    public DocumentRestrictionListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTRESTRICTIONLIST$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentRestrictionList");
    
    
    /**
     * Gets the "DocumentRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType getDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().find_element_user(DOCUMENTRESTRICTIONLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DocumentRestrictionList" element
     */
    public void setDocumentRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType documentRestrictionList)
    {
        generatedSetterHelperImpl(documentRestrictionList, DOCUMENTRESTRICTIONLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType addNewDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().add_element_user(DOCUMENTRESTRICTIONLIST$0);
            return target;
        }
    }
}
