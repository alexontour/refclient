/*
 * An XML document type.
 * Localname: PatientID
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatientIDDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * A document containing one PatientID(@urn:tiani-spirit:ts) element.
 *
 * This is a complex type.
 */
public class PatientIDDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.PatientIDDocument
{
    private static final long serialVersionUID = 1L;
    
    public PatientIDDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIENTID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "PatientID");
    
    
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
}
