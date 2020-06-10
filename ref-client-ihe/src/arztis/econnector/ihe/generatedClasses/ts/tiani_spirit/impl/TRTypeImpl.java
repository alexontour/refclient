/*
 * XML Type:  TRType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML TRType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class TRTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType
{
    private static final long serialVersionUID = 1L;
    
    public TRTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName IDENTMETHOD$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IdentMethod");
    private static final javax.xml.namespace.QName PROVIDEROID$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderOID");
    private static final javax.xml.namespace.QName PATIENTID$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "PatientID");
    private static final javax.xml.namespace.QName TRDATE$6 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRDate");
    private static final javax.xml.namespace.QName TRTYPE$8 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRType");
    private static final javax.xml.namespace.QName TRSTATUS$10 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRStatus");
    
    
    /**
     * Gets the "IdentMethod" element
     */
    public java.lang.String getIdentMethod()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "IdentMethod" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType xgetIdentMethod()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().find_element_user(IDENTMETHOD$0, 0);
            return target;
        }
    }
    
    /**
     * Sets the "IdentMethod" element
     */
    public void setIdentMethod(java.lang.String identMethod)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(IDENTMETHOD$0);
            }
            target.setStringValue(identMethod);
        }
    }
    
    /**
     * Sets (as xml) the "IdentMethod" element
     */
    public void xsetIdentMethod(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType identMethod)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().find_element_user(IDENTMETHOD$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.IdentMethodType)get_store().add_element_user(IDENTMETHOD$0);
            }
            target.set(identMethod);
        }
    }
    
    /**
     * Gets the "ProviderOID" element
     */
    public java.lang.String getProviderOID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PROVIDEROID$2, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "ProviderOID" element
     */
    public org.apache.xmlbeans.XmlString xgetProviderOID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PROVIDEROID$2, 0);
            return target;
        }
    }
    
    /**
     * Sets the "ProviderOID" element
     */
    public void setProviderOID(java.lang.String providerOID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PROVIDEROID$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PROVIDEROID$2);
            }
            target.setStringValue(providerOID);
        }
    }
    
    /**
     * Sets (as xml) the "ProviderOID" element
     */
    public void xsetProviderOID(org.apache.xmlbeans.XmlString providerOID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PROVIDEROID$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PROVIDEROID$2);
            }
            target.set(providerOID);
        }
    }
    
    /**
     * Gets the "PatientID" element
     */
    public java.lang.String getPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIENTID$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "PatientID" element
     */
    public org.apache.xmlbeans.XmlString xgetPatientID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIENTID$4, 0);
            return target;
        }
    }
    
    /**
     * Sets the "PatientID" element
     */
    public void setPatientID(java.lang.String patientID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIENTID$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIENTID$4);
            }
            target.setStringValue(patientID);
        }
    }
    
    /**
     * Sets (as xml) the "PatientID" element
     */
    public void xsetPatientID(org.apache.xmlbeans.XmlString patientID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIENTID$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIENTID$4);
            }
            target.set(patientID);
        }
    }
    
    /**
     * Gets the "TRDate" element
     */
    public java.util.Calendar getTRDate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRDATE$6, 0);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "TRDate" element
     */
    public org.apache.xmlbeans.XmlDateTime xgetTRDate()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_element_user(TRDATE$6, 0);
            return target;
        }
    }
    
    /**
     * Sets the "TRDate" element
     */
    public void setTRDate(java.util.Calendar trDate)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRDATE$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(TRDATE$6);
            }
            target.setCalendarValue(trDate);
        }
    }
    
    /**
     * Sets (as xml) the "TRDate" element
     */
    public void xsetTRDate(org.apache.xmlbeans.XmlDateTime trDate)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_element_user(TRDATE$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_element_user(TRDATE$6);
            }
            target.set(trDate);
        }
    }
    
    /**
     * Gets the "TRType" element
     */
    public java.lang.String getTRType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRTYPE$8, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "TRType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType xgetTRType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().find_element_user(TRTYPE$8, 0);
            return target;
        }
    }
    
    /**
     * Sets the "TRType" element
     */
    public void setTRType(java.lang.String trType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRTYPE$8, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(TRTYPE$8);
            }
            target.setStringValue(trType);
        }
    }
    
    /**
     * Sets (as xml) the "TRType" element
     */
    public void xsetTRType(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType trType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().find_element_user(TRTYPE$8, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRTypeType)get_store().add_element_user(TRTYPE$8);
            }
            target.set(trType);
        }
    }
    
    /**
     * Gets the "TRStatus" element
     */
    public java.lang.String getTRStatus()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRSTATUS$10, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "TRStatus" element
     */
    public org.apache.xmlbeans.XmlString xgetTRStatus()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(TRSTATUS$10, 0);
            return target;
        }
    }
    
    /**
     * Sets the "TRStatus" element
     */
    public void setTRStatus(java.lang.String trStatus)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TRSTATUS$10, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(TRSTATUS$10);
            }
            target.setStringValue(trStatus);
        }
    }
    
    /**
     * Sets (as xml) the "TRStatus" element
     */
    public void xsetTRStatus(org.apache.xmlbeans.XmlString trStatus)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(TRSTATUS$10, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(TRSTATUS$10);
            }
            target.set(trStatus);
        }
    }
}
