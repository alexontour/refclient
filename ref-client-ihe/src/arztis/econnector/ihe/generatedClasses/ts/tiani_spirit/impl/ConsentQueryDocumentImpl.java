/*
 * An XML document type.
 * Localname: ConsentQuery
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ConsentQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ConsentQuery(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ConsentQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ConsentQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public ConsentQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CONSENTQUERY$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ConsentQuery");
    
    
    /**
     * Gets the "ConsentQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType getConsentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType)get_store().find_element_user(CONSENTQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ConsentQuery" element
     */
    public void setConsentQuery(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType consentQuery)
    {
        generatedSetterHelperImpl(consentQuery, CONSENTQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ConsentQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType addNewConsentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType)get_store().add_element_user(CONSENTQUERY$0);
            return target;
        }
    }
}
