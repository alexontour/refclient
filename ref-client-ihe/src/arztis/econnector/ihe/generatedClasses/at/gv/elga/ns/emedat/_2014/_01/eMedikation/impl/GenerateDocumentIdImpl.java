/*
 * XML Type:  generateDocumentId
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * An XML generateDocumentId(@http://ns.elga.gv.at/emedat/2014/1/eMedikation).
 *
 * This is a complex type.
 */
public class GenerateDocumentIdImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentId
{
    private static final long serialVersionUID = 1L;
    
    public GenerateDocumentIdImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName VERSION$0 = 
        new javax.xml.namespace.QName("", "version");
    private static final javax.xml.namespace.QName PATIENTENID$2 = 
        new javax.xml.namespace.QName("", "patientenId");
    private static final javax.xml.namespace.QName DATUM$4 = 
        new javax.xml.namespace.QName("", "datum");
    private static final javax.xml.namespace.QName ISDATAMATRIXREQUIRED$6 = 
        new javax.xml.namespace.QName("", "isDataMatrixRequired");
    
    
    /**
     * Gets the "version" element
     */
    public java.lang.String getVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(VERSION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "version" element
     */
    public org.apache.xmlbeans.XmlString xgetVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(VERSION$0, 0);
            return target;
        }
    }
    
    /**
     * True if has "version" element
     */
    public boolean isSetVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(VERSION$0) != 0;
        }
    }
    
    /**
     * Sets the "version" element
     */
    public void setVersion(java.lang.String version)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(VERSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(VERSION$0);
            }
            target.setStringValue(version);
        }
    }
    
    /**
     * Sets (as xml) the "version" element
     */
    public void xsetVersion(org.apache.xmlbeans.XmlString version)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(VERSION$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(VERSION$0);
            }
            target.set(version);
        }
    }
    
    /**
     * Unsets the "version" element
     */
    public void unsetVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(VERSION$0, 0);
        }
    }
    
    /**
     * Gets the "patientenId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id getPatientenId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id)get_store().find_element_user(PATIENTENID$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "patientenId" element
     */
    public boolean isSetPatientenId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIENTENID$2) != 0;
        }
    }
    
    /**
     * Sets the "patientenId" element
     */
    public void setPatientenId(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id patientenId)
    {
        generatedSetterHelperImpl(patientenId, PATIENTENID$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "patientenId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id addNewPatientenId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id)get_store().add_element_user(PATIENTENID$2);
            return target;
        }
    }
    
    /**
     * Unsets the "patientenId" element
     */
    public void unsetPatientenId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIENTENID$2, 0);
        }
    }
    
    /**
     * Gets the "datum" element
     */
    public java.lang.String getDatum()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DATUM$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "datum" element
     */
    public org.apache.xmlbeans.XmlString xgetDatum()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(DATUM$4, 0);
            return target;
        }
    }
    
    /**
     * True if has "datum" element
     */
    public boolean isSetDatum()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DATUM$4) != 0;
        }
    }
    
    /**
     * Sets the "datum" element
     */
    public void setDatum(java.lang.String datum)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DATUM$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(DATUM$4);
            }
            target.setStringValue(datum);
        }
    }
    
    /**
     * Sets (as xml) the "datum" element
     */
    public void xsetDatum(org.apache.xmlbeans.XmlString datum)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(DATUM$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(DATUM$4);
            }
            target.set(datum);
        }
    }
    
    /**
     * Unsets the "datum" element
     */
    public void unsetDatum()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DATUM$4, 0);
        }
    }
    
    /**
     * Gets the "isDataMatrixRequired" element
     */
    public boolean getIsDataMatrixRequired()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ISDATAMATRIXREQUIRED$6, 0);
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "isDataMatrixRequired" element
     */
    public org.apache.xmlbeans.XmlBoolean xgetIsDataMatrixRequired()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISDATAMATRIXREQUIRED$6, 0);
            return target;
        }
    }
    
    /**
     * True if has "isDataMatrixRequired" element
     */
    public boolean isSetIsDataMatrixRequired()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ISDATAMATRIXREQUIRED$6) != 0;
        }
    }
    
    /**
     * Sets the "isDataMatrixRequired" element
     */
    public void setIsDataMatrixRequired(boolean isDataMatrixRequired)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ISDATAMATRIXREQUIRED$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(ISDATAMATRIXREQUIRED$6);
            }
            target.setBooleanValue(isDataMatrixRequired);
        }
    }
    
    /**
     * Sets (as xml) the "isDataMatrixRequired" element
     */
    public void xsetIsDataMatrixRequired(org.apache.xmlbeans.XmlBoolean isDataMatrixRequired)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISDATAMATRIXREQUIRED$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_element_user(ISDATAMATRIXREQUIRED$6);
            }
            target.set(isDataMatrixRequired);
        }
    }
    
    /**
     * Unsets the "isDataMatrixRequired" element
     */
    public void unsetIsDataMatrixRequired()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ISDATAMATRIXREQUIRED$6, 0);
        }
    }
}
