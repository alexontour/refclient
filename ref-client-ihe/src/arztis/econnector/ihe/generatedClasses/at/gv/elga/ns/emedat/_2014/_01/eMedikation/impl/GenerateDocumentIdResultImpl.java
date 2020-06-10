/*
 * XML Type:  generateDocumentIdResult
 * Namespace: http://ns.elga.gv.at/emedat/2014/1/eMedikation
 * Java type: arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.impl;
/**
 * An XML generateDocumentIdResult(@http://ns.elga.gv.at/emedat/2014/1/eMedikation).
 *
 * This is a complex type.
 */
public class GenerateDocumentIdResultImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.GenerateDocumentIdResult
{
    private static final long serialVersionUID = 1L;
    
    public GenerateDocumentIdResultImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DATAMATRIXCODE$0 = 
        new javax.xml.namespace.QName("", "dataMatrixCode");
    private static final javax.xml.namespace.QName EMEDID$2 = 
        new javax.xml.namespace.QName("", "eMedId");
    
    
    /**
     * Gets the "dataMatrixCode" element
     */
    public byte[] getDataMatrixCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DATAMATRIXCODE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getByteArrayValue();
        }
    }
    
    /**
     * Gets (as xml) the "dataMatrixCode" element
     */
    public org.apache.xmlbeans.XmlBase64Binary xgetDataMatrixCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(DATAMATRIXCODE$0, 0);
            return target;
        }
    }
    
    /**
     * True if has "dataMatrixCode" element
     */
    public boolean isSetDataMatrixCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DATAMATRIXCODE$0) != 0;
        }
    }
    
    /**
     * Sets the "dataMatrixCode" element
     */
    public void setDataMatrixCode(byte[] dataMatrixCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DATAMATRIXCODE$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(DATAMATRIXCODE$0);
            }
            target.setByteArrayValue(dataMatrixCode);
        }
    }
    
    /**
     * Sets (as xml) the "dataMatrixCode" element
     */
    public void xsetDataMatrixCode(org.apache.xmlbeans.XmlBase64Binary dataMatrixCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(DATAMATRIXCODE$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBase64Binary)get_store().add_element_user(DATAMATRIXCODE$0);
            }
            target.set(dataMatrixCode);
        }
    }
    
    /**
     * Unsets the "dataMatrixCode" element
     */
    public void unsetDataMatrixCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DATAMATRIXCODE$0, 0);
        }
    }
    
    /**
     * Gets the "eMedId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id getEMedId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id)get_store().find_element_user(EMEDID$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "eMedId" element
     */
    public boolean isSetEMedId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMEDID$2) != 0;
        }
    }
    
    /**
     * Sets the "eMedId" element
     */
    public void setEMedId(arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id eMedId)
    {
        generatedSetterHelperImpl(eMedId, EMEDID$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "eMedId" element
     */
    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id addNewEMedId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id target = null;
            target = (arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.Id)get_store().add_element_user(EMEDID$2);
            return target;
        }
    }
    
    /**
     * Unsets the "eMedId" element
     */
    public void unsetEMedId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMEDID$2, 0);
        }
    }
}
