/*
 * XML Type:  UpgradeType
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * An XML UpgradeType(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public class UpgradeTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType
{
    private static final long serialVersionUID = 1L;
    
    public UpgradeTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SUPPORTEDENVELOPE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "SupportedEnvelope");
    
    
    /**
     * Gets array of all "SupportedEnvelope" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType[] getSupportedEnvelopeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SUPPORTEDENVELOPE$0, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SupportedEnvelope" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType getSupportedEnvelopeArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType)get_store().find_element_user(SUPPORTEDENVELOPE$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SupportedEnvelope" element
     */
    public int sizeOfSupportedEnvelopeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SUPPORTEDENVELOPE$0);
        }
    }
    
    /**
     * Sets array of all "SupportedEnvelope" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSupportedEnvelopeArray(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType[] supportedEnvelopeArray)
    {
        check_orphaned();
        arraySetterHelper(supportedEnvelopeArray, SUPPORTEDENVELOPE$0);
    }
    
    /**
     * Sets ith "SupportedEnvelope" element
     */
    public void setSupportedEnvelopeArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType supportedEnvelope)
    {
        generatedSetterHelperImpl(supportedEnvelope, SUPPORTEDENVELOPE$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SupportedEnvelope" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType insertNewSupportedEnvelope(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType)get_store().insert_element_user(SUPPORTEDENVELOPE$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SupportedEnvelope" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType addNewSupportedEnvelope()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.SupportedEnvType)get_store().add_element_user(SUPPORTEDENVELOPE$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "SupportedEnvelope" element
     */
    public void removeSupportedEnvelope(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SUPPORTEDENVELOPE$0, i);
        }
    }
}
