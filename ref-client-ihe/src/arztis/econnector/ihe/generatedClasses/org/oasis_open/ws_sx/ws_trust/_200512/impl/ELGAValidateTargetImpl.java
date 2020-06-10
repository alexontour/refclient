/*
 * XML Type:  ELGAValidateTarget
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML ELGAValidateTarget(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class ELGAValidateTargetImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget
{
    private static final long serialVersionUID = 1L;
    
    public ELGAValidateTargetImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName PATIENTID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "PatientID");
    private static final javax.xml.namespace.QName CONSENTQUERY$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ConsentQuery");
    private static final javax.xml.namespace.QName CONSENTRETRIEVE$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ConsentRetrieve");
    
    
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
     * True if has "PatientID" element
     */
    public boolean isSetPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIENTID$0) != 0;
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
     * Unsets the "PatientID" element
     */
    public void unsetPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIENTID$0, 0);
        }
    }
    
    /**
     * Gets the "ConsentQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType getConsentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType)get_store().find_element_user(CONSENTQUERY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ConsentQuery" element
     */
    public boolean isSetConsentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CONSENTQUERY$2) != 0;
        }
    }
    
    /**
     * Sets the "ConsentQuery" element
     */
    public void setConsentQuery(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType consentQuery)
    {
        generatedSetterHelperImpl(consentQuery, CONSENTQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentQueryType)get_store().add_element_user(CONSENTQUERY$2);
            return target;
        }
    }
    
    /**
     * Unsets the "ConsentQuery" element
     */
    public void unsetConsentQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CONSENTQUERY$2, 0);
        }
    }
    
    /**
     * Gets the "ConsentRetrieve" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType getConsentRetrieve()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType)get_store().find_element_user(CONSENTRETRIEVE$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ConsentRetrieve" element
     */
    public boolean isSetConsentRetrieve()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CONSENTRETRIEVE$4) != 0;
        }
    }
    
    /**
     * Sets the "ConsentRetrieve" element
     */
    public void setConsentRetrieve(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType consentRetrieve)
    {
        generatedSetterHelperImpl(consentRetrieve, CONSENTRETRIEVE$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ELGAPAPConsentRetrieveType)get_store().add_element_user(CONSENTRETRIEVE$4);
            return target;
        }
    }
    
    /**
     * Unsets the "ConsentRetrieve" element
     */
    public void unsetConsentRetrieve()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CONSENTRETRIEVE$4, 0);
        }
    }
}
