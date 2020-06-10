/*
 * An XML document type.
 * Localname: ClaimType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one ClaimType(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class ClaimTypeDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDocument
{
    private static final long serialVersionUID = 1L;
    
    public ClaimTypeDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLAIMTYPE$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ClaimType");
    
    
    /**
     * Gets the "ClaimType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType getClaimType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType)get_store().find_element_user(CLAIMTYPE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ClaimType" element
     */
    public void setClaimType(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType claimType)
    {
        generatedSetterHelperImpl(claimType, CLAIMTYPE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ClaimType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType addNewClaimType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType)get_store().add_element_user(CLAIMTYPE$0);
            return target;
        }
    }
}
