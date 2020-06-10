/*
 * XML Type:  ELGAPAPConsentQueryType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ELGAPAPConsentQueryType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ELGAPAPConsentQueryTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType
{
    private static final long serialVersionUID = 1L;
    
    public ELGAPAPConsentQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIENTID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "PatientID");
    private static final javax.xml.namespace.QName RETURNCONSENTDATA$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ReturnConsentData");
    private static final javax.xml.namespace.QName RETURNSIGNEDDOC$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ReturnSignedDoc");
    
    
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
     * Gets the "ReturnConsentData" element
     */
    public boolean getReturnConsentData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(RETURNCONSENTDATA$2, 0);
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "ReturnConsentData" element
     */
    public org.apache.xmlbeans.XmlBoolean xgetReturnConsentData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(RETURNCONSENTDATA$2, 0);
            return target;
        }
    }
    
    /**
     * Sets the "ReturnConsentData" element
     */
    public void setReturnConsentData(boolean returnConsentData)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(RETURNCONSENTDATA$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(RETURNCONSENTDATA$2);
            }
            target.setBooleanValue(returnConsentData);
        }
    }
    
    /**
     * Sets (as xml) the "ReturnConsentData" element
     */
    public void xsetReturnConsentData(org.apache.xmlbeans.XmlBoolean returnConsentData)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(RETURNCONSENTDATA$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_element_user(RETURNCONSENTDATA$2);
            }
            target.set(returnConsentData);
        }
    }
    
    /**
     * Gets the "ReturnSignedDoc" element
     */
    public boolean getReturnSignedDoc()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(RETURNSIGNEDDOC$4, 0);
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "ReturnSignedDoc" element
     */
    public org.apache.xmlbeans.XmlBoolean xgetReturnSignedDoc()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(RETURNSIGNEDDOC$4, 0);
            return target;
        }
    }
    
    /**
     * Sets the "ReturnSignedDoc" element
     */
    public void setReturnSignedDoc(boolean returnSignedDoc)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(RETURNSIGNEDDOC$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(RETURNSIGNEDDOC$4);
            }
            target.setBooleanValue(returnSignedDoc);
        }
    }
    
    /**
     * Sets (as xml) the "ReturnSignedDoc" element
     */
    public void xsetReturnSignedDoc(org.apache.xmlbeans.XmlBoolean returnSignedDoc)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(RETURNSIGNEDDOC$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_element_user(RETURNSIGNEDDOC$4);
            }
            target.set(returnSignedDoc);
        }
    }
}
