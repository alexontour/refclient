/*
 * An XML document type.
 * Localname: ConsentRetrieve
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ConsentRetrieveDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ConsentRetrieve(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ConsentRetrieveDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ConsentRetrieveDocument
{
    private static final long serialVersionUID = 1L;
    
    public ConsentRetrieveDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CONSENTRETRIEVE$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ConsentRetrieve");
    
    
    /**
     * Gets the "ConsentRetrieve" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType getConsentRetrieve()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType)get_store().find_element_user(CONSENTRETRIEVE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ConsentRetrieve" element
     */
    public void setConsentRetrieve(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType consentRetrieve)
    {
        generatedSetterHelperImpl(consentRetrieve, CONSENTRETRIEVE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ConsentRetrieve" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType addNewConsentRetrieve()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType)get_store().add_element_user(CONSENTRETRIEVE$0);
            return target;
        }
    }
}
