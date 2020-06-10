/*
 * An XML document type.
 * Localname: Timestamp
 * Namespace: http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.impl;
/**
 * A document containing one Timestamp(@http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd) element.
 *
 * This is a complex type.
 */
public class TimestampDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampDocument
{
    private static final long serialVersionUID = 1L;
    
    public TimestampDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TIMESTAMP$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", "Timestamp");
    
    
    /**
     * Gets the "Timestamp" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType getTimestamp()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType)get_store().find_element_user(TIMESTAMP$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Timestamp" element
     */
    public void setTimestamp(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType timestamp)
    {
        generatedSetterHelperImpl(timestamp, TIMESTAMP$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Timestamp" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType addNewTimestamp()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws._2004._01.oasis_2000401_wss_wssecurity_utility.TimestampType)get_store().add_element_user(TIMESTAMP$0);
            return target;
        }
    }
}
