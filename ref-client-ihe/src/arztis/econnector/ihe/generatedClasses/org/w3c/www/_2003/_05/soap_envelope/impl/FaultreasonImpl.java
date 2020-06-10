/*
 * XML Type:  faultreason
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * An XML faultreason(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public class FaultreasonImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason
{
    private static final long serialVersionUID = 1L;
    
    public FaultreasonImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TEXT$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Text");
    
    
    /**
     * Gets array of all "Text" elements
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext[] getTextArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TEXT$0, targetList);
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext[] result = new arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Text" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext getTextArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext)get_store().find_element_user(TEXT$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Text" element
     */
    public int sizeOfTextArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TEXT$0);
        }
    }
    
    /**
     * Sets array of all "Text" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTextArray(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext[] textArray)
    {
        check_orphaned();
        arraySetterHelper(textArray, TEXT$0);
    }
    
    /**
     * Sets ith "Text" element
     */
    public void setTextArray(int i, arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext text)
    {
        generatedSetterHelperImpl(text, TEXT$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Text" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext insertNewText(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext)get_store().insert_element_user(TEXT$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Text" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext addNewText()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Reasontext)get_store().add_element_user(TEXT$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "Text" element
     */
    public void removeText(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TEXT$0, i);
        }
    }
}
