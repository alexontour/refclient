/*
 * An XML document type.
 * Localname: DocumentRestriction
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one DocumentRestriction(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class DocumentRestrictionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionDocument
{
    private static final long serialVersionUID = 1L;
    
    public DocumentRestrictionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTRESTRICTION$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentRestriction");
    
    
    /**
     * Gets the "DocumentRestriction" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType getDocumentRestriction()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType)get_store().find_element_user(DOCUMENTRESTRICTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DocumentRestriction" element
     */
    public void setDocumentRestriction(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionType documentRestriction)
    {
        generatedSetterHelperImpl(documentRestriction, DOCUMENTRESTRICTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentRestriction" element
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
}
