/*
 * XML Type:  ELGAPAPConsentRetrieveType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ELGAPAPConsentRetrieveType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ELGAPAPConsentRetrieveTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType
{
    private static final long serialVersionUID = 1L;
    
    public ELGAPAPConsentRetrieveTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIENTID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "PatientID");
    private static final javax.xml.namespace.QName SIGNEDDOCUMENT$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocument");
    
    
    /**
     * Gets the "PatientID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType getPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType)get_store().find_element_user(PATIENTID$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "PatientID" element
     */
    public void setPatientID(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType patientID)
    {
        generatedSetterHelperImpl(patientID, PATIENTID$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "PatientID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType addNewPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatIDType)get_store().add_element_user(PATIENTID$0);
            return target;
        }
    }
    
    /**
     * Gets the "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType getSignedDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType)get_store().find_element_user(SIGNEDDOCUMENT$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "SignedDocument" element
     */
    public void setSignedDocument(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType signedDocument)
    {
        generatedSetterHelperImpl(signedDocument, SIGNEDDOCUMENT$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SignedDocument" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType addNewSignedDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocType)get_store().add_element_user(SIGNEDDOCUMENT$2);
            return target;
        }
    }
}
